class OxfordService

  def generate_sentences(word)
    get_json("entries/en/#{word}/sentences")
  end

  private

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://od-api.oxforddictionaries.com/api/v1/") do |faraday|
      faraday.headers['app_id'] = ENV["oxford_api_id"]
      faraday.headers['app_key'] = ENV["oxford_api_key"]
      faraday.adapter Faraday.default_adapter
    end
  end
end
# https://od-api.oxforddictionaries.com/api/v1/entries/en/mindfulness/sentences
# Faraday.new(url: "https://od-api.oxforddictionaries.com/api/v1/entries/en/mindfulness/sentences") do |faraday|
#   faraday.headers['app_id'] = ENV["oxford_api_id"]
#   faraday.headers['app_key'] = ENV["oxford_api_key"]
#   faraday.adapter Faraday.default_adapter
# end
