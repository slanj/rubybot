class WebhookController < ApplicationController
    # GET /welcome
  def index
    client = ApiAiRuby::Client.new(
    :client_access_token => 'cf15b53c62c74255af0f5e7bba8fdaa8'
    )
    @response = client.text_request 'hello!' 
    
      
    # Term.create(name: "Co-Marketing", address: "несколько компаний (обычно две) объединяют свои усилия для создания нового уникального продукта, используя свои собственные наработки.", reference: "https://kaplunoff.com/blog/marketing-i-prodazhi/237-marketing-words", synonyms: "Co-Marketing, comarketing, co-marketing")
    #@term = Term.find(3)
    respond_to do |format|
    format.html # show.html.erb
    format.json { render json: {"speech": "Hello",
        "displayText": "Hello",
        "source": "RubyBot"}}
    end
  end
    
end
