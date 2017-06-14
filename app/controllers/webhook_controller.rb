#encoding: utf-8
class WebhookController < ApplicationController
    # GET /welcome
  skip_before_action :verify_authenticity_token, only: [:index]    
    
  def index 
    
    require 'csv'
    require 'json'
    
    #Term.destroy_all

    #csv_text = File.read('public/MarketingDictionary2-UTF8.csv')
    #csv = CSV.parse(csv_text, :headers => true, :col_sep => ";")
    #csv.each do |row|
    #Term.create!({name: row[0], description: row[1], reference: row[2], synonyms: row[3]}) end
      
    #Term.create(name: "ремаркетинг", description: "систематический показ одних и тех же рекламных баннеров (но на разных сайтах) посетителю, который ранее проявил интерес к продукту или услугам рекламодателя.", reference: "https://kaplunoff.com/blog/marketing-i-prodazhi/237-marketing-words", synonyms: "ремаркетинга, ремаркетингу, remarketing")

    
    #@term = Term.find(3)
    respond_to do |format|
    format.html # show.html.erb
    format.json { 
        @var = "ремаркетинг"
        @rezult = "OSD Вам все расскажет"
        if params["result"]
            @var = params["result"]["parameters"]["terms"]
            @str = @var.encode("UTF-8").to_str
            @mydef = Term.where(name: @str).first
            if @mydef
                @rezult = @mydef["description"]
            end    
        end   
        response.headers['Content-type'] = 'application/json'
        render json: {speech: @str,
        displayText: @rezult,
        data: "",
        contextOut: [],
        source: "webhook"}}
    end
  end
    
end
