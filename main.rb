require "pry"
require "sinatra"

# Your routes go here:

get "/ask-for-name" do
  erb :ask_for_name
end

get "/shouted-greeting/:name" do
  @name = params['name']
  erb :hello
end

get "/shouted-greeting/:greeting/:name" do
  @greeting = params['greeting']
  @name = params['name']
  erb :greeting
end

get "/shouted-greeting-b" do
  @greeting = params['greeting']
  @name = params['name']
  erb :shouted_greeting_b
end

get "/even-or-odd/:num" do
  @num = params['num'].to_i
  erb :even_or_odd
end

get "/even-or-odd" do
  @num = params['num'].to_i
  erb :even_or_odd
end

get "/triangle/:a/:b/:c" do
  @a = params['a'].to_i
  @b = params['b'].to_i
  @c = params['c'].to_i
  erb :triangle
end

get "/fibonacci/:num" do
  @num = params['num'].to_i
  erb :fibonacci
end
