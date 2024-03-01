# End2End

Sample code demonstrating the interaction with Qdrant from the library.

## Usage

The code can be executed from commandline using `julia --project=@. end2end.jl` or could
be read to understand the usage and execute block by block. 

The code snippet

- **Expects** a local instance of Ollama running
- **Expects** a local instance of Qdrant running `docker run -p 6333:6333 qdrant/qdrant`
- Downloads 1984.txt from project Gutenberg
- Reads the data and chunks the data
- Generates ID and Embeddings for each chunk using PromptingTools
- Creates a collection in Qdrant 
- Inserts the chunks along with ID and Embeddings to Qdrant
- Performs a search using a search string
