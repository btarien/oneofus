puts "clearing DBs..."
Answer.destroy_all
Question.destroy_all

puts "generating questions and answers..."
question1 = Question.create!(content: "What is your favorite hockey team?")
Answer.create!(content: "The Maple Leafs", question: question1, correct: true)
Answer.create!(content: "Anything else", question: question1, correct: false)

question1 = Question.create!(content: "Sundays are for...")
Answer.create!(content: "The Maple Leafs", question: question1, correct: true)
Answer.create!(content: "Anything else", question: question1, correct: false)
