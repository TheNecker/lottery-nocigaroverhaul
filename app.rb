require "sinatra"
require_relative "sum.rb"
get '/' do
erb :index
end
post '/name' do
  name = params[:user_name]
  redirect '/age?user_name=' + name
end

get '/age' do
  name = params[:user_name]
  erb :age, :locals => {:name => name}
end

post '/age' do
  age = params[:age]
  name = params[:user_name]
  redirect '/three_numbers?user_name=' +name +'&age=' + age
end

get '/three_numbers' do
  age = params[:age]
  name = params[:user_name]
  erb :three_numbers, :locals => {:name=> name, :age => age}
end

post '/three_numbers' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  redirect '/hair?user_name=' + name + '&age=' + age + '&number1=' + fav1 + '&number2=' + fav2 + '&number3=' + fav3
end

get '/hair' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  erb :hair_color, :locals => {:name => name, :age => age, :fav1 => fav1, :fav2 => fav2, :fav3 => fav3}
end

post '/hair' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  redirect '/eye?user_name=' + name + '&age=' + age + '&number1=' + fav1 + '&number2=' + fav2 + '&number3=' + fav3 + '&hair_color=' + hair
end

get '/eye' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  erb :eye_color, :locals => {:name => name, :age => age, :fav1 => fav1, :fav2 => fav2, :fav3 => fav3, :hair => hair}
end

post '/eye' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  redirect '/food?user_name=' + name + '&age=' + age + '&number1=' + fav1 + '&number2=' + fav2 + '&number3=' + fav3 + '&hair_color=' + hair + '&eye_color=' + eye
end

get '/food' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  erb :food, :locals => {:name => name, :age => age, :fav1 => fav1, :fav2 => fav2, :fav3 => fav3, :hair => hair, :eye => eye}
end

post '/food' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  food = params[:food]
  redirect '/drink?user_name=' + name + '&age=' + age + '&number1=' + fav1 + '&number2=' + fav2 + '&number3=' + fav3 + '&hair_color=' + hair + '&eye_color=' + eye + '&food=' + food
end

get '/drink' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  food = params[:food]
  erb :drink, :locals => {:name => name, :age => age, :fav1 => fav1, :fav2 => fav2, :fav3 => fav3 , :hair => hair, :eye => eye, :food => food}
end

post '/drink' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  food = params[:food]
  drink = params[:drink]
  total = sum(fav1, fav2, fav3)
  redirect '/results?user_name=' + name + '&age=' + age + '&number1=' + fav1 + '&number2=' + fav2 + '&number3=' + fav3 + '&hair_color=' + hair + '&eye_color=' + eye + '&food=' + food + '&drink=' + drink +'&total=' + total
end

get '/results' do
  age = params[:age]
  name = params[:user_name]
  fav1 = params[:number1]
  fav2 = params[:number2]
  fav3 = params[:number3]
  hair = params[:hair_color]
  eye = params[:eye_color]
  food = params[:food]
  drink = params[:drink]
  total = params[:total]
  erb :results, :locals => {:name => name, :age => age, :fav1 => fav1, :fav2 => fav2, :fav3 => fav3 , :hair => hair, :eye => eye, :food => food, :drink => drink, :total => total}
  end
