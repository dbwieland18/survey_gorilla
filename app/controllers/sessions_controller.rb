get '/sessions/new' do
	erb :"sessions/new"
end

post '/sessions' do
	@user = User.find_by(email: params[:email])
	if @user.password == params[:password]
		session[:user_id] = @user.id
		redirect to "/"
	else
		@error = "something went wrong"
		redirect to "sessions/new"
	end
end

post 'sessions/destroy' do
	session[:user_id] = nil
	redirect to "/sessions/new"
end
