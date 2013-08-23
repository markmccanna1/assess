get '/login' do
  erb :login
end


get '/register' do
  erb :register  
end

post '/logout' do
  session.clear
  erb :logout
end

post '/login' do
  puts params[:email]
  puts params[:password]
  @user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    if @user == false
      erb :logout
    end
  session[:id] = @user.id
  puts session[:id]
  @events = Event.all
  erb :events
end


post '/register' do
  @user = User.create(params[:user])
  session[:id] = @user.id
  @events = Event.all
  erb :events
end


