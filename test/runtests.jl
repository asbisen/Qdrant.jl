using Test
using Qdrant

@testset "create_collection tests" begin
    # Setup
    connection = QdrantConnection("http://localhost:6333")
    test_collection_name = "test_collection_$(rand(1000:9999))"  # Use a random name to avoid conflicts

    # Test successful creation
    @test create_collection(connection, test_collection_name, vector_size=128) == true

    # Test that the collection now exists
    @test collection_exists(connection, test_collection_name) == true

    # Test creating a collection that already exists
    @test create_collection(connection, test_collection_name, vector_size=128) == false

    # # Test with custom parameters
    custom_collection_name = "custom_collection_$(rand(1000:9999))"
    @test create_collection(connection, custom_collection_name,
        distance="Euclid",
        vector_size=256,
        hnsw_on_disk=true,
        memmap_threshold=30000,
        scalar_quantization_type="int8",
        quantization_config_always_ram=false) == true

    # # Verify custom collection exists
    @test collection_exists(connection, custom_collection_name) == true

    # Clean up
    @test delete_collection(connection, test_collection_name) == true
    @test delete_collection(connection, custom_collection_name) == true
end
