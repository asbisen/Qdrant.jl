# Qdrant.jl

Julia wrapper to [Qdrant](https://qdrant.tech/) Vector Database. The code is mostly
generated using their [OpenAPI spec](https://qdrant.github.io/qdrant/redoc/index.html). 

**WIP Notice:** The code is very basic and does not include any safety checks. At best it's
work in progress.

## Environment

This code is being worked against a locally running Qdrant instance in a container using the 
following command `docker run -p 6333:6333 qdrant/qdrant`

This package is not registered and would need to be installed using the url to this 
repository `using Pkg; Pkg.add("https://github.com/asbisen/Qdrant.jl.git")`

## Example Code

### Create a Connection

```julia
using Qdrant
using OpenAPI.Clients: Client


function init(url="http://localhost:6333")
    client = Client(url)
    return client
end

connection = init()
```

### Create a Collection

#### Prefer low memory footprint with high speed search

The main way to achieve high speed search with low memory footprint is to keep vectors on 
disk while at the same time minimizing the number of disk reads.

Vector quantization is one way to achieve this. Quantization converts vectors into a more 
compact representation, which can be stored in memory and used for search. With smaller 
vectors you can cache more in RAM and reduce the number of disk reads.
        
To configure in-memory quantization, with on-disk original vectors, you need to create a 
collection with the following configuration. [Ref](https://qdrant.tech/documentation/guides/optimize/#prefer-low-memory-footprint-with-high-speed-search)

```julia
function create_collection_example( client, 
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
            nothing, nothing, nothing, nothing, nothing, 
            hnsw_config, 
            nothing,
            optimizer_config, 
            nothing, 
            quantizaiton_config, 
            nothing
        )
    )
    r
end

collection = create_collection_example( connection, "MyCol1")
```

#### Prefer high precision with low memory footprint

In case you need high precision, but don’t have enough RAM to store vectors in memory, you can enable on-disk vectors 
and HNSW index. [Ref](https://qdrant.tech/documentation/guides/optimize/#prefer-high-precision-with-low-memory-footprint)

```julia
collection = create_collection_example( connection, "MyCol2", hnsw_on_disk=true)
```


