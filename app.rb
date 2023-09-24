require 'sinatra'
require 'json'
require 'webrick'
require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :post, :options]
  end
end

set :server, 'webrick'

dishes = [
  "Grilled Chicken with Pico de Gallo and Quinoa Salad",
  "Spinach and Cheese Stuffed Empanadas with Salsa",
  "Cabbage and Carrot Slaw with Grilled Shrimp",
  "Tuna Salad with Mixed Greens, Tomatoes, and Cucumbers",
  "Chicken and Veggie Wraps with Guacamole",
  "Fresh Corn and Bean Salad with Lime Dressing",
  "Bandeja Paisa (Simplified: Rice, Beans, Grilled Steak, Plantains, and Avocado)",
  "Grilled Fish with Zesty Lime and Cilantro Dressing and Roasted Vegetables",
  "Stuffed Bell Peppers with Lean Ground Beef and Veggies",
  "Lean Pork Chops with Apple Salsa and Mashed Sweet Potatoes",
  "Baked Eggplant Parmesan with Green Salad",
  "Colombian-Style Roasted Chicken Thighs with Sautéed Plantains and Rice",
  "Beef Stir-Fry with Broccoli, Bell Peppers, and Snap Peas",
  "Mediterranean Quinoa Salad",
  "Zoodle (Zucchini Noodle) Stir Fry",
  "Sweet Potato and Black Bean Tacos",
  "Lentil and Spinach Dal",
  "Grilled Eggplant and Hummus Wraps",
  "Stuffed Acorn Squash",
  "Spaghetti Squash Primavera",
  "Moroccan Chickpea Stew",
  "Roasted Beet and Goat Cheese Salad",
  "Mango and Avocado Salad",
  "Cauliflower Steak with Chimichurri Sauce",
  "Kale and Roasted Vegetable Grain Bowl",
  "Grilled Portobello Mushrooms with Pesto",
  "Pineapple Fried Brown Rice",
  "Baked Falafel Wraps",
  "Balsamic Grilled Chicken and Vegetables",
  "Stuffed Tomatoes with Herbed Quinoa",
  "Broccoli and Almond Salad",
  "Spinach and Feta Stuffed Chicken"
]


get '/suggestion' do
  dishes.sample.to_json
end

get '/' do
  'Welcome to Dinner Suggestion API!
  /suggestion - generates a Dinner Suggestion'
end
