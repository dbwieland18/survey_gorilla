get '/surveys' do
	@surveys = Survey.all
	erb  :"surveys/index"
end



# Show the form to create a new survey (new)
get "/surveys/new" do
  erb :"surveys/new"
end

# Show a single survey (show) - moved down below surveys/new because wilcard is read first

get '/surveys/:id/results' do
	@survey = Survey.find(params[:id])
	@responses = @survey.questions[0].responses
  @responses_hash = Hash.new(0)
  @responses.each { |response| @responses_hash[response.answer] += 1 }


	erb :"/surveys/results"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :"surveys/show"
end

# Create a new survey (create)
post "/surveys" do
  @survey = Survey.create(title: params[:title], user_id: session[:user_id])
  @question = Question.create(text: params[:question], survey_id: @survey.id)
  params[:possible].each do |poss|
    PossibleChoice.create(option: poss, question_id: @question.id)
  end
  if @survey.save
    redirect to("/surveys/#{@survey.id}")
  else
    erb :"surveys/new"
  end
end


