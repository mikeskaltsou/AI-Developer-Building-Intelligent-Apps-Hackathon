# Challenge 06 - Basic NL to SQL with semantic kernel.

 [< Previous Challenge](./Challenge-05.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-07.md)
 
## Introduction
You are tasked by the CTO with converting natural language queries into SQL statements. The goal is to accurately translate the user's intent into SQL queries that retrieve the correct data from the database.

## Description
In this challenge, you will practice converting natural language queries into SQL statements by using Semanti Kernel plugin. This exercise will help you understand how to translate user requests into precise SQL queries that can be executed on a database.

You will be given a sample database (Adventure Works) and you should issue the SQL statements based on the database schema. You can find the scripts to deploy the database in Azure [here](./Resources/Challenge-07/deploy-sql.azcli)

For this challenge you should add the Database Schema to Azure Open Ai context window.  You can extract the database schema from the database or you can get the schema from [here](./Resources/Challenge-07/dbschema.sql)

In the next challenge you will investigate alternative ways to optimize the solution. Discuss with your coach potential optimizations.

## Success Criteria
- Demonstrate that you have deployed the Azure SQL database and you successfully import the Adventure Works sample database.
- Demonstrate that you have created the "Natural language to SQL" Semantic Kernel Plugin
- Demonstrate that you add the database schema in Azure Open Ai Context window and you set meaningfull instructions to the bot.
- Demonstrate that you can ask questions in natural language and you get responses with SQL queries.
- Discuss with your coach the disadvantages of current solution and propose ways to optimize this.

## Learning Resources
- [Create an Agent from a Semantic Kernel Template (Experimental) | Microsoft Learn](https://learn.microsoft.com/en-us/semantic-kernel/frameworks/agent/agent-templates?pivots=programming-language-csharp#agent-definition-from-a-prompt-template)
- [PromptTemplateConfig Class (Microsoft.SemanticKernel) | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/api/microsoft.semantickernel.prompttemplateconfig?view=semantic-kernel-dotnet)
