# Setup and prepare Evironment

**[Home](../README.md)** - [Next Challenge >](./Challenge-01.md)

## Pre-requisites

- Your laptop: Win, MacOS or Linux OR A development machine that you have **administrator rights**.
- Active Azure Subscription with **Contributor access** to create or modify resources and permissions.
- Access granted to Azure OpenAI in the desired Azure subscription.
Currently, access to this service is granted only by application. You can apply for access to Azure OpenAI by completing the [form](https://aka.ms/oai/access). Ensure that you register for approval to access and use the Azure OpenAI models before attending the workshop. The approval process may take up to 48 hours to complete.

## Introduction

In this session you will setup your computer and cloud environment with the minimum required tools.

## Description

Setup and configure the following tools

- Use your active Azure Subscription or the one provided fo# Implement Retrieval Augmented Generation (RAG) with Azure OpenAI

 [< Previous Challenge](./Challenge-00.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-02.md)

## Introduction
This hands-on session will guide you through the process of integrating your own data with a large language model to create a powerful and responsive chat application.

## Description
You’ll start by creating a project in Azure AI Studio, where you’ll explore the chat playground to interact with AI models and customize chat interactions. Next, you’ll set up the environment and deploy an enterprise-grade chat web app, integrating it with Azure OpenAI for intelligent responses. Finally, you’ll dive into .NET Core development, creating a simple application and adding intelligence using Azure OpenAI.

You should complete the following steps in the reference guides:

- [Create a project and use the chat playground in Azure AI Studio](https://learn.microsoft.com/en-us/azure/ai-studio/quickstarts/get-started-playground)
  - Create an Azure AI Studio project.
  - Deploy an Azure OpenAI model.
  - Chat in the playground without your data.
- [Deploy an Enterprise Chat web app](https://learn.microsoft.com/en-us/azure/ai-studio/tutorials/deploy-chat-web-app)
  - Deploy and test a chat model without your data
  - Add your data
  - Test the model with your data
  - Deploy your web app  
- [Create .NET core application and build your first intelligent app](https://learn.microsoft.com/en-us/azure/ai-services/openai/use-your-data-quickstart?pivots=programming-language-csharp&tabs=command-line%2Cpython-new#create-a-new-net-core-application)

## Success Criteria

- Demonstate that you can chat with your own data in AI Studio Chat Playground
- Deploy the web app and demonstate that you can chat on your own data in the deployed app
- Demonstate that you can chat with your own data in a .NET Console application
  
## Learning Resources
### Azure AI Studio
- [Azure AI Studio | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-studio/what-is-ai-studio)
### Azure AI Search
- [RAG and generative AI - Azure AI Search | Microsoft Learn](https://learn.microsoft.com/en-us/azure/search/retrieval-augmented-generation-overview)
- [Hybrid search - Azure AI Search | Microsoft Learn](https://learn.microsoft.com/en-us/azure/search/hybrid-search-overview)
### Azure Open AI SDKs
- [Azure OpenAI Service supported programming languages - Azure AI services | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-services/openai/supported-languages#programming-languages)
- [Azure OpenAI client library for .NET - Azure for .NET Developers | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/api/overview/azure/ai.openai-readme?view=azure-dotnet-preview)
r the workshop. If you already have a subscription you can use it or you can get a free trial [here](https://azure.microsoft.com/free/).
- Log into the [Azure Portal](https://portal.azure.com) and confirm that you have an active subscription that you can deploy cloud services and you have the proper access rights to create users and assign permissions.
- Use Visual Studio 2019 or 2022 or download and install [Visual Studio Code](https://code.visualstudio.com) if you don't have it.

## Success Criteria

- You should be able to log in to the Azure Portal.
- You should be able to [deploy an Azure OpenAI model](https://learn.microsoft.com/en-us/azure/ai-studio/how-to/deploy-models-openai#deploy-an-azure-openai-model-from-the-model-catalog) from the model catalog. Do not deploy one, just check if you have the option to deploy an Azure Open AI model.
