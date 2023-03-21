class OpenaiService
    client = OpenAI::Client.new
    
    get_chat_response(role, content)
    response = client.chat(
        parameters: {
            model: "gpt-3.5-turbo", # Required.
            messages: [{ role: role, content: content}], # Required.
            temperature: 0.7,
        })
        parsed_response = JSON.parse(response)
    #puts response.dig("choices", 0, "message", "content")
        end

end