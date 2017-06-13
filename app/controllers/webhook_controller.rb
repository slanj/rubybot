class WebhookController < ApplicationController
    # GET /welcome
  def index 
  
   
    
      
    # Term.create(name: "Co-Marketing", address: "несколько компаний (обычно две) объединяют свои усилия для создания нового уникального продукта, используя свои собственные наработки.", reference: "https://kaplunoff.com/blog/marketing-i-prodazhi/237-marketing-words", synonyms: "Co-Marketing, comarketing, co-marketing")
    #@term = Term.find(3)
    respond_to do |format|
    format.html # show.html.erb
    format.json { 
        response.headers['Content-type'] = 'application/json'
        render json: {speech: "Hello",
        displayText: "Hello",
        data: "",
        contextout: [],
        source: "webhook"}}
    end
  end
    
end
