get '/events' do
  @events = Event.all
  erb :events
end


get '/events/yours' do
  @user = User.find(session[:id])
  @your_events = @user.created_events
  erb :your_events
end

get '/create_event' do
  erb :create_event
end


get '/events/:id' do
  @event = Event.find(params[:id])
  erb :view_event
end

post '/create_event' do
  # p params[:event]
  @user = User.find(session[:id])
  @user.created_events.create(params[:event])

  if request.xhr?
      # p params[:event]
  end
    
  redirect to '/events/yours'

end


