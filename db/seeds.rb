require 'open-uri'
require 'json'

ingredients_list = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

ingredients_list['drinks'].each do |line|
  Ingredient.create(name: line['strIngredient1'])
end
