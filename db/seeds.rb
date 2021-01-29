puts "clearing DBs..."
Answer.destroy_all
Question.destroy_all
Result.destroy_all

puts "generating questions and answers..."
question1 = Question.create!(content: "Wine should cost at least...")
Answer.create!(content: "10 €", question: question1, correct: true)
Answer.create!(content: "3 €", question: question1, correct: false)
Answer.create!(content: "5 €", question: question1, correct: false)

question2 = Question.create!(content: "Sundays are for...")
Answer.create!(content: "NFL", question: question2, correct: true)
Answer.create!(content: "Jesus", question: question2, correct: false)
Answer.create!(content: "Studying", question: question2, correct: false)

question3 = Question.create!(content: "A movie is only good if it has...")
Answer.create!(content: "Action", question: question3, correct: true)
Answer.create!(content: "Leonardo DiCaprio", question: question3, correct: false)
Answer.create!(content: "Romance", question: question3, correct: false)

question4 = Question.create!(content: "If you had 2 million euros, what would you spend it on?")
Answer.create!(content: "The Maple Leafs", question: question4, correct: true)
Answer.create!(content: "Saving the whales", question: question4, correct: false)
Answer.create!(content: "A fancy sports car", question: question4, correct: false)

question5 = Question.create!(content: "True or false: Sports equipment that increases efficiency by 0.05% is always worth it.")
Answer.create!(content: "True", question: question5, correct: true)
Answer.create!(content: "False", question: question5, correct: false)

question6 = Question.create!(content: "What is your favorite movie?")
Answer.create!(content: "Star Wars", question: question6, correct: true)
Answer.create!(content: "Harry Potter", question: question6, correct: false)
Answer.create!(content: "Lord of the Rings", question: question6, correct: false)

question7 = Question.create!(content: "What is your favorite hockey team?")
Answer.create!(content: "The Maple Leafs", question: question7, correct: true)
Answer.create!(content: "Anything else", question: question7, correct: false, move: true)