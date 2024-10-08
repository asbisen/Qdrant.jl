using Test
using Qdrant
using Random

@testset "create_collection tests" begin
    # Setup
    connection = QdrantConnection("http://localhost:6333")
    test_collection_name = "test_collection_$(rand(1000:9999))"  # Use a random name to avoid conflicts

    # Test successful creation
    @test create_collection(connection, test_collection_name)[:result] == true

    # Test that the collection now exists
    @test collection_exists(connection, test_collection_name) == true

    # Test creating a collection that already exists
    # @test_throws MethodError create_collection(connection, test_collection_name)

    # # Test with custom parameters
    custom_collection_name = "custom_collection_$(rand(1000:9999))"
    vectors_config = QdrantVectorParams(size=128, distance=QdrantDistance("Cosine"))
    @test create_collection(connection, custom_collection_name; vectors_config=vectors_config)[:result] == true

    # # Verify custom collection exists
    @test collection_exists(connection, custom_collection_name) == true

    # Clean up
    @test delete_collection(connection, test_collection_name) == true
    @test delete_collection(connection, custom_collection_name) == true
end


function generate_record(embeddings=false)
    record = Dict()

    payload = Dict()
    payload["name"] = randstring(10)
    payload["age"] = rand(1:100)
    payload["weight"] = rand(14:230)
    payload["metrics"] = rand()
    payload["bool"] = rand([true, false])
    payload["country"] = rand(["USA", "Canada", "Mexico"])
    payload["color"] = rand(["red", "green", "blue", "white", "black", "yellow"])

    if embeddings
        record["embedding"] = rand(128)
    end
    record["payload"] = payload

    return record
end


@testset "insert and search" begin
    # Setup
    connection = QdrantConnection("http://localhost:6333")
    test_collection_name = "test_collection_$(rand(1000:9999))"  # Use a random name to avoid conflicts

    vectors_config = QdrantVectorParams(size=128, distance=QdrantDistance("Cosine"))
    @test create_collection(connection, test_collection_name; vectors_config=vectors_config)[:result] == true

    nrecords = 1000
    for i in 1:nrecords
        rec = generate_record(true)
        point = Qdrant.QdrantPointStruct(UInt(i), rec["embedding"], rec["payload"])
        res = upsert_points(connection, test_collection_name, [point])
    end

    @test delete_collection(connection, test_collection_name) == true

end
