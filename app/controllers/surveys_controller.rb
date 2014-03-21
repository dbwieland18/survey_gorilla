get '/surveys' do
	@surveys = Survey.all
	erb  :"surveys/index"
end



# Show the form to create a new survey (new)
get "/surveys/new" do
  erb :"surveys/new"
end

# Show a single survey (show) - moved down below surveys/new because wilcard is read first
get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :"surveys/show"
end

# Create a new survey (create)
post "/surveys" do
  # puts "\n\n\n\n\n\n\n"
  # puts params.inspect
  # puts "\n\n\n\n\n\n\n"
  @survey = Survey.create(title: params[:title], user_id: session[:user_id])
  @question = Question.create(text: params[:question], survey_id: @survey.id)
  params[:possible].shift
  params[:possible].each do |poss|
    PossibleChoice.create(option: poss, question_id: @question.id)
  end
  if @survey.save
    redirect to("/surveys/#{@survey.id}")
  else
    erb :"surveys/new"
  end
end
