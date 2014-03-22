get '/sessions/new' do
	erb :"sessions/new"
end

post '/sessions' do
	redirect to "/users/new" if User.all == [] 
	@user = User.find_by(email: params[:email])
	if @user.password == params[:password]
		session[:user_id] = @user.id
		redirect to "/"
	else
		@error = "something went wrong"
		redirect to "/sessions/new"
	end
end

get '/sessions/destroy' do
	session[:user_id] = nil
	redirect to "/sessions/new"
end
