class WebhookController < ApplicationController
    # GET /welcome
  skip_before_action :verify_authenticity_token, only: [:index]    
    
  def index 
    
    require 'csv'
    require 'json'
    
    #Term.destroy_all

    #csv_text = File.read('public/MarketingDictionary2-UTF8.csv')
    #csv = CSV.parse(csv_text, :headers => true, :col_sep => ";", encoding: "UTF-8")
    #csv.each do |row|
    #Term.create!({name: row[0], description: row[1], reference: row[2], synonyms: row[3]}) end
      
    #Term.create(name: "Co-Marketing", address: "несколько компаний (обычно две) объединяют свои усилия для создания нового уникального продукта, используя свои собственные наработки.", reference: "https://kaplunoff.com/blog/marketing-i-prodazhi/237-marketing-words", synonyms: "Co-Marketing, comarketing, co-marketing")
    #@term = Term.find(3)
    respond_to do |format|
    format.html # show.html.erb
    format.json { 
        if params["result"]
            @var = JSON.parse(params["result"])
        end    
        response.headers['Content-type'] = 'application/json'
        render json: {speech: "OSD Вам все расскажет",
        displayText: @var,
        data: "",
        contextOut: [],
        source: "webhook"}}
    end
  end
    
end
