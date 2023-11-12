class FruitService

  def search(fruit)
    get_url("/api/fruit/#{fruit}")
  end
  
  def similar(min, max)
    get_url("/api/fruit/calories?min=#{min}&max=#{max}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://www.fruityvice.com")
  end


end