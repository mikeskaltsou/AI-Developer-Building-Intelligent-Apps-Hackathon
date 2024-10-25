# Challenge 03 - Start coding with Azure OpenAI SDK

 [< Previous Challenge](./Challenge-02.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge-04.md)

## Introduction
After completing the prompt flow challenge, it's time to start investigating, how you can write code to utilize the AI services.

## Description
Now you’ll dive into .NET Core development by creating a simple console application and use your own data with Azure OpenAI models created in previous challenge.

You can also use the Azure Open AI SDK of another programming language of your preference.

In a console window use the dotnet new command to create a new console app. 

```bash
dotnet new console -n azure-openai-sdk-hackathon
```

Install the OpenAI .NET client library with:

```bash
dotnet add package Azure.AI.OpenAI --prerelease
```

Use the following code as an example and do any necessary changes to meet the success criteria

```bash
using Azure;
using Azure.AI.OpenAI;
using Azure.AI.OpenAI.Chat;
using OpenAI.Chat;
using System.Text.Json;
using static System.Environment;

string azureOpenAIEndpoint = GetEnvironmentVariable("AZURE_OPENAI_ENDPOINT");
string azureOpenAIKey = GetEnvironmentVariable("AZURE_OPENAI_API_KEY");
string deploymentName = GetEnvironmentVariable("AZURE_OPENAI_DEPLOYMENT_ID");
string searchEndpoint = GetEnvironmentVariable("AZURE_AI_SEARCH_ENDPOINT");
string searchKey = GetEnvironmentVariable("AZURE_AI_SEARCH_API_KEY");
string searchIndex = GetEnvironmentVariable("AZURE_AI_SEARCH_INDEX");

#pragma warning disable AOAI001
AzureOpenAIClient azureClient = new(
    new Uri(azureOpenAIEndpoint),
    new AzureKeyCredential(azureOpenAIKey));
ChatClient chatClient = azureClient.GetChatClient(deploymentName);

ChatCompletionOptions options = new();
options.AddDataSource(new AzureSearchChatDataSource()
{
    Endpoint = new Uri(searchEndpoint),
    IndexName = searchIndex,
    Authentication = DataSourceAuthentication.FromApiKey(searchKey),
});

ChatCompletion completion = chatClient.CompleteChat(
    [
        new UserChatMessage("What are my available health plans?"),
    ], options);

Console.WriteLine(completion.Content[0].Text);

AzureChatMessageContext onYourDataContext = completion.GetAzureMessageContext();

if (onYourDataContext?.Intent is not null)
{
    Console.WriteLine($"Intent: {onYourDataContext.Intent}");
}
foreach (AzureChatCitation citation in onYourDataContext?.Citations ?? [])
{
    Console.WriteLine($"Citation: {citation.Content}");
}
```

## Success Criteria

- Demonstrate that you can chat with your own data.
- Demonstrate that the user can ask questions on your own data within the application.
- Demonstrate that you set the behavior of the bot as a product information application.
- Demonstrate that you use the conversation history as context for the subsequent calls.
- Discuss with your coach alternative ways authenticating with Azure AI services.
  
## Learning Resources
- [Azure OpenAI Service supported programming languages - Azure AI services | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-services/openai/supported-languages#programming-languages)
- [Azure OpenAI client library for .NET - Use your own data | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/api/overview/azure/ai.openai-readme?view=azure-dotnet-preview#use-your-own-data-with-azure-openai)
- [Authentication in Azure AI services - Azure AI services | Microsoft Learn](https://learn.microsoft.com/en-us/azure/ai-services/authentication)
- [Authenticate to Azure OpenAI using .NET - .NET | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/ai/azure-ai-services-authentication)
