class WebhookController < ApplicationController
    # GET /welcome
 skip_before_action :verify_authenticity_token, only: [:index]    
    
  def index 
    
      
    # Term.create(name: "Co-Marketing", address: "несколько компаний (обычно две) объединяют свои усилия для создания нового уникального продукта, используя свои собственные наработки.", reference: "https://kaplunoff.com/blog/marketing-i-prodazhi/237-marketing-words", synonyms: "Co-Marketing, comarketing, co-marketing")
    #@term = Term.find(3)
    respond_to do |format|
    format.html # show.html.erb
    format.json { 
        response.headers['Content-type'] = 'application/json'
        render json: {speech: "OSD Вам все расскажет",
        displayText: "OSD Вам все расскажет",
        data: "",
        contextOut: [],
        source: "webhook"}}
    end
  end
    
end
