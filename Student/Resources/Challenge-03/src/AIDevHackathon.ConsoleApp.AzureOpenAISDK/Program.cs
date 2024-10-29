using Azure;
using Azure.AI.OpenAI;
using DemoOpenAI.Services;
using Microsoft.Extensions.Configuration;


namespace DemoOpenAI
{
    class Program
    {
        static async Task Main()
        {
            try
            {
                //Initialize confguration from appsettings.json
                var azureConfig = new AzureConfiguration();

                //Initialize OpenAI client with Ednpoint and Key
                var aoaiClient = new OpenAIClient(new Uri(azureConfig.AOAIEndpoint), new AzureKeyCredential(azureConfig.AOAIKey));

                //Initialize AzureOpenAIChat service with OpenAI client
                var azureOpenAIChat = new AzureOpenAIChat(aoaiClient);

                string userSelectionOption = string.Empty;
                string userPromptInput = string.Empty;

                //Initialize OpenAI client with Ednpoint and Key for GPT 4
                aoaiClient = new OpenAIClient(new Uri(azureConfig.AOAIEndpoint), new AzureKeyCredential(azureConfig.AOAIKey));
                azureOpenAIChat = new AzureOpenAIChat(aoaiClient);

                //Initialize chat completions with initial system prompt and Azure Cognitive Search with own data. Define also the search fields and Search query type
                azureOpenAIChat.InitializeChatCompletionsOwnedData(PromptData.SystemPrompt_EcommerceAssistant, azureConfig.SearchEndpoint, azureConfig.SearchKey, azureConfig.SearchIndex,
                    true, 20, AzureCognitiveSearchQueryType.VectorSemanticHybrid, "ProductID|ProductName|Description|CatalogDescription|ProductNumber|ProductModelName|StandardCost|Color|ListPrice|Size|Weight|Category",
                    "ProductName", "ProductName", "ProductName", azureConfig.AOAIEmbeddingsEndpoint, azureConfig.AOAIKey, azureConfig.SearchSemanticConfiguration);
                Console.WriteLine("I am your e-Commerce assistant and my answers will be based your own data source, you can ask me anything (type exit at any time to change option).");


                while (true)
                {
                    while (true)
                    {
                        Console.WriteLine();
                        //Get user input
                        userPromptInput = Console.ReadLine();

                        //Get chat completion messages from Azure OpenAI based on user prompt and search results from Azure Cognitive Search with own data
                        List<ChatMessage> chatCompletionMessagesOwnedDataWithSearchResults = await azureOpenAIChat.GetChatCompletionStream(userPromptInput, azureConfig.AOAIDeploymentId);

                        Console.WriteLine();
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }
}