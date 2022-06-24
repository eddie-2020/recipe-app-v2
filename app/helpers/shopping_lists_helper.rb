module ShoppingListsHelper
  def shoping_list
    @shoppinglist = []
    @recipe_foods = RecipeFood.where(recipe_id: params[:recipe_id])

    total_value_of_food_needed(shoping_list)
    total_value = 0
    shoping_list.each do |item|
      total_value += item[:quantity] * item[:price]
    end
    total_value
  end

  private

  def food(id)
    Food.find(id)
  end
end
