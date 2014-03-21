User.delete_all
TakenSurvey.delete_all
Survey.delete_all
Question.delete_all
Response.delete_all
PossibleChoice.delete_all

tony = User.create(name:"TonyTotter", password_digest: 'otterpoop', email: 'tony@ta.com')
ian = User.create(name:"IanTexasTerminator", password_digest: 'hbdcalder', email: 'ian@terminator.net')

survey1 = Survey.create(title: 'Should Tony get a sex change?',
            user_id: tony.id)

survey2 = Survey.create(title: "Is it Calder's Birthday?",
            user_id: ian.id)

survey3 = Survey.create(title: "Survey 3",
            user_id: tony.id)

question1 = Question.create(text: "Well should he?", survey_id: survey1.id)
question2 = Question.create(text: "Well, is it?", survey_id: survey2.id)
question3 = Question.create(text: "Who wants a hotdog?", survey_id: survey3.id)

PossibleChoice.create(option: "Yes, definitely!", question_id: question1.id)
PossibleChoice.create(option: "No way", question_id: question1.id)

PossibleChoice.create(option: "It sure is!", question_id: question2.id)
PossibleChoice.create(option: "It should be!", question_id: question2.id)

PossibleChoice.create(option: "Tony", question_id: question3.id)
PossibleChoice.create(option: "Ian", question_id: question3.id)