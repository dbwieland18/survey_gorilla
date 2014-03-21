get '/' do
  # Look in app/views/index.erb
  erb :index
  # if session[:user_id].nil?
  # 	redirect to "/sessions/new"
  # else
  # 	@user = User.find(session[:user_id])
  # 	erb :index
  # end
end


