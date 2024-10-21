# Challenge 05 - Use Cosmos DB as a Vector DB

 [< Previous Challenge](./Challenge-04.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-06.md)
 
## Introduction

After using the Azure AI search as a vector store, you figure out that you can use a Vector Database like CosmosDB for grounding your own data.

A vector database is a database designed to store and manage vector embeddings for your records. These vector embeddings are used in similarity search and used as RAG to ground your db data with large languages models (LLMs).

In a vector database, embeddings are indexed and queried through vector search algorithms based on their vector distance or similarity. A robust mechanism is necessary to identify the most relevant data.

## Description

With Cosmos DB, you can store vectors directly in the documents alongside your data. Each document in your database can contain not only traditional schema-free data, but also high-dimensional vectors as other properties of the documents. This colocation of data and vectors allows for efficient indexing and searching, as the vectors are stored in the same logical unit as the data they represent. Keeping vectors and data together simplifies data management, AI application architectures, and the efficiency of vector-based operations

Here's a streamlined process for building a RAG application with Azure Cosmos DB:

- **Data Ingestion**: Store your documents, images, and other content types in Azure Cosmos DB. Utilize the database's support for vector search to index and retrieve vectorized content.

- **Query Execution**: When a user submits a query, Azure Cosmos DB can quickly retrieve the most relevant data using its vector search capabilities.

- **LLM Integration**: Pass the retrieved data to an LLM (e.g., Azure OpenAI) to generate a response. The well-structured data provided by Cosmos DB enhances the quality of the model's output.

- **Response Generation**: The LLM processes the data and generates a comprehensive response, which is then delivered to the user.

You should complete the following tasks
- Deploy CosmosDb by using this [script](./Resources/Challenge-05/DeployCosmosDb.ps1)
- Assign RBAC data plane permissions on CosmosDB as shown [here](./Resources/Challenge-05/AssignRoleDefinition.ps1)
- Open the solution in Visual Studio or Visual Studio code located [here](./Resources/Challenge-05/src) and make any necessary changes to meet the success criteria

## Success Criteria
- Demonstrate that you have created the Cosmos DB database
- Demonstrate that you push the sample data into Cosmos DB
- Demonstrate that you vectorize the sample data into Cosmos DB.
- Demonstrate that you can ask questions on recipes and get responses on your own data stored in Cosmos DB
- Explain to your coach the main differences of Azure AI Search and CosmosDB used as vector Database

## Learning Resources
- [Retrieval Augmented Generation in Azure Cosmos DB | Microsoft Learn](https://learn.microsoft.com/en-us/azure/cosmos-db/gen-ai/rag)
- [Vector Search in Azure Cosmos DB for NoSQL | Microsoft Learn](https://learn.microsoft.com/en-us/azure/cosmos-db/nosql/vector-search)
-[AzureDataRetrievalAugmentedGenerationSamples | GitHub](https://github.com/microsoft/AzureDataRetrievalAugmentedGenerationSamples)
- [Configure role-based access control with Microsoft Entra ID - Azure Cosmos Db | Microsoft Learn](https://learn.microsoft.com/en-us/azure/cosmos-db/how-to-setup-rbac#built-in-role-definitions)
