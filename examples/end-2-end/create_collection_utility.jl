using Qdrant

function create_collection_utility( client, 
        collection_name; 
        distance = "Cosine", 
        vector_size = 768,
        hnsw_on_disk = false
        )

    collection = Qdrant.CollectionsApi(client)

    distance = QdrantDistance(distance)
    vector_config = QdrantVectorParams(size=vector_size, distance=distance)
    optimizer_config = QdrantOptimizersConfigDiff(memmap_threshold = 20000)
    scalar = QdrantScalarQuantizationConfig(type="int8", always_ram = true)
    quantizaiton_config = QdrantScalarQuantization(scalar=scalar)
    hnsw_config = QdrantHnswConfig(on_disk=hnsw_on_disk)

    r = create_collection( collection, collection_name, 
        qdrant_create_collection=QdrantCreateCollection(
            vector_config, 
            nothing, nothing, # sharding confg 
            nothing, # replication_factor
            nothing, # write_consistency_factor 
            nothing, # on_disk_payload
            hnsw_config, 
            nothing, # wal_confimg
            optimizer_config, 
            nothing, # init_from
            quantizaiton_config, 
            nothing # sparse_vectors
        )
    )
    r
end

