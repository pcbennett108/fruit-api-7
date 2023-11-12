class FruitFacade
  def self.fruit_data(query)
    responce = FruitService.new.search(query)
    Fruit.new(responce)
  end
  
  def self.similar_fruits(calories)
    min = calories.to_i - 10
    max = calories.to_i + 10
    responce = FruitService.new.similar(min, max)
    responce.map do |fruit|
      Fruit.new(fruit)
    end
  end
end