require "pry"
require "sinatra"

# Your routes go here:

get "/shouted-greeting/:name" do
  "HELLO, #{params['name'].upcase}!"
end

get "/shouted-greeting/:greeting/:name" do
  "#{params['greeting'].upcase}, #{params['name'].upcase}"
end

get "/shouted-greeting-b" do
  "#{(params['greeting'] == nil) ? 'HELLO' : params['greeting'].upcase}, #{params['name'].upcase}!"
end

get "/even-or-odd/:num" do
  "#{params['num'].to_i} is #{params['num'].to_i.even? ? 'even' : 'odd'}."
end

get "/even-or-odd" do
  "#{params['num'].to_i} is #{params['num'].to_i.even? ? 'even' : 'odd'}."
end

get "/triangle/:a/:b/:c" do
  valid = (params['a'].to_i + params['b'].to_i > params['c'].to_i) &&
          (params['a'].to_i + params['c'].to_i > params['b'].to_i) &&
          (params['b'].to_i + params['c'].to_i > params['a'].to_i)
  "A triangle with lengths of #{params['a']}, #{params['b']} and #{params['c']} is #{!valid ? "not ": ""}good."
end

get "/fibonacci/:num" do
  sequence = [0,1]
  sequence.push(sequence[-1]+sequence[-2]) until sequence[params['num'].to_i] != nil
  "#{sequence[1..params['num'].to_i].join(", ")}"
end
