#!/bin/bash


# TODO: Cleanup and make more robust
#   --model-name-prefix "Qdrant" is required to avoid naming conflict with Main.Vector
docker run --rm \
	   -v "${PWD}/../:/local" \
	   openapitools/openapi-generator-cli generate \
               -i /local/openapi/openapi.json \
               -g julia-client \
               -o /local/codegen \
	       --additional-properties=packageName=QdrantRestApi \
               --additional-properties=exportModels=true \
               --additional-properties=exportOperations=true \
               --skip-validate-spec \
               --model-name-prefix "Qdrant"
