# Developer Track Hackathon - Building Intelligent Apps

This hackathon will provide a deep dive experience targeted for developers by integrating AI solutions into applications. Hackathon is a collaborative learning experience, designed as a set of challenges to practice your technical skills. By participating in this hackathon, you will be able to understand the capabilities of integrating AI services into applications.

This workshop requires two full days to finish depending on the attendees' skill level. It is a collaborative activity where attendees form teams of 3-5 people to go through every workshop.
  
## Learning Objectives
Upon completing the workshop, participants will be able to:
- Understand the fundamentals of Retrieval Augmented Generation (RAG) and its implementation using Azure OpenAI.
- Integrate Azure AI Search with RAG to enhance AI applications with contextually relevant data.
- Design and build a QnA copilot system utilizing prompt flow in Azure AI Studio for efficient user interaction.
- Develop intelligent applications using Azure Open AI SDK.
- Develop intelligent applications using Semantic Kernel in either C# or Python, incorporating AI prompts seamlessly.
- Apply the learned concepts to create innovative solutions that address real-world challenges using Azure OpenAI.
  
## Prerequisites
- Familiarity with Azure services and the Azure portal.
- Basic understanding of AI and generative models.
- Experience in programming with C# or Python
- Your laptop (development machine): Win, MacOS or Linux that you have **administrator rights**.
- Active Azure Subscription with **Contributor access** to create or modify resources and permissions.
- Access to Azure OpenAI in the desired Azure subscription.
- Latest version of Azure CLI
- Latest version of Visual Studio or Visual Studio Code

## Target Audience
The intended audience comprises individuals who have coding skills.
- AI Engineers
- Software Developers
- Solution Architects

## Day 1 Challenges

---

### Day 1 - Challenge 0: **[Setup and prepare Environment](Student/Challenge-00.md)**

- Install the required development tools. This initial session is crucial to ensure that all participants are well-prepared and can fully engage with the workshop's content.

### Day 1 - Challenge 1: **[Implement Retrieval Augmented Generation (RAG) with Azure OpenAI](Student/Challenge-01.md)**

- Dive into the world of RAG and learn how to enhance your AI applications by integrating Azure OpenAI’s capabilities. This session will guide you through the process of implementing RAG with Azure AI Search, enabling your applications to leverage external data sources for more grounded and contextually relevant responses.

### Day 1 - Challenge 2: **[Use prompt flow to query on own data with Search AI.](Student/Challenge-02.md)**

- Discover how to create a responsive QnA system using prompt flow, allowing for intuitive and efficient user interactions with your AI solutions.

### Day 1 - Challenge 3: **[Start coding with Azure OpenAI SDK.](Student/Challenge-03.md)**

- Use Azure OpenAI SDK to start coding your intelligent apps.

### Day 1 - Challenge 4: **[Use Semantic Kernel as an Orchestrator to create a basic intelligent app.](Student/Challenge-04.md)**

- Unlock the potential of Semantic Kernel in developing intelligent applications. Whether you prefer C# or Python, this session will provide you with the knowledge to incorporate Semantic Kernel into your applications, facilitating seamless integration of AI prompts with conventional programming languages for smarter, more responsive applications.

## Day 2 Challenges

---

### Day 2 - Challenge 5: **[Use Cosmos DB as a Vector DB.](Student/Challenge-05.md)**

- Use Cosmos DB as a Vector Database for grounding your own data. A vector database stores and manages vector embeddings for records, which are used in similarity search and Retrieval-Augmented Generation (RAG). CosmosDB allows you to store vectors directly in documents alongside traditional schema-free data, enabling efficient indexing and searching. This colocation of data and vectors simplifies data management, AI application architectures, and enhances the efficiency of vector-based operations.

### Day 2 - Challenge 6: **[Basic Natural Language to SQL with Semantic Kernel](Student/Challenge-06.md)**

- Practice how to convert natural language queries into SQL statements by using Semantic Kernel .This challenge will help you understand how to translate user requests into precise SQL queries that can be executed on a database by passing the sql schema into LLM context window.

### Day 2 - Challenge 7: **[Advanced Natural Language to SQL with Semantic Kernel with RAG](Student/Challenge-07.md)**

- After completing the basic scenario of converting natural language to SQL queries, the next step is to optimise the solution by implementing the RAG pattern. This involves not passing the entire SQL schema in the LLM context. Instead, you will use the Semantic Kernel's ability to decide which table schemas to include. Additionally, you will enable the Semantic Kernel to execute SQL queries and display the results to the user. Finally, you will add observability to your solution.

## References
- [Create a project and use the chat playground in Azure AI Studio - Azure AI Studio | Microsoft Learnage](https://learn.microsoft.com/en-us/azure/ai-studio/quickstarts/get-started-playground)
- [Deploy an Enterprise Chat web app in the Azure AI Studio playground - Azure AI Studio | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-studio/tutorials/deploy-chat-web-app)
- [Implement Retrieval Augmented Generation (RAG) with Azure OpenAI](https://microsoftlearning.github.io/mslearn-openai/Instructions/Exercises/06-use-own-data.html)
- [Use your own data with Azure OpenAI Service - Azure OpenAI | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-services/openai/use-your-data-quickstart?tabs=command-line%2Cpython-new&pivots=programming-language-csharp)
- [Build and deploy a question and answer copilot with prompt flow in Azure AI Studio](https://learn.microsoft.com/en-us/azure/ai-studio/tutorials/deploy-copilot-ai-studio)
- [Getting Started with Semantic Kernel](https://learn.microsoft.com/en-us/semantic-kernel/get-started/quick-start-guide)
- [Develop AI agents using Azure OpenAI and the Semantic Kernel SDK - Training | Microsoft Learn](https://learn.microsoft.com/en-us/training/paths/develop-ai-agents-azure-open-ai-semantic-kernel-sdk/)
- [MSLearn - Develop AI Agents with Azure OpenAI and Semantic Kernel-SDK](https://github.com/MicrosoftLearning/MSLearn-Develop-AI-Agents-with-Azure-OpenAI-and-Semantic-Kernel-SDK/tree/main)

## Repository Contents

- `./Student`
  - Student's Challenge Guide
- `./Student/Resources`
  - Resource files, sample code, scripts, etc meant to be provided to students. (Must be packaged up by the coach and provided to students at start of event)
- `./Coach`
  - Coach's Guide and related files
- `./Coach/Solutions`
  - Solution files with completed example answers to a challenge

## Remarks
- Please note that the content of this workshop may become outdated, as Azure AI is a rapidly evolving platform. We recommend staying engaged with the Azure AI community for the most current updates and practices.
    
## Contributors
- Phanis Parpas
- Sakis Rokanas
- Rodanthi Alexiou
