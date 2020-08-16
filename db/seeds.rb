# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.destroy_all

Quiz.create(title: 'The quiz')

Quiz.last.questions.create!(text: 'Who lives in a forest?')
Question.last.question_responses.create!([
                                           { text: 'wolf', correct: true },
                                           { text: 'fox', correct: true },
                                           { text: 'dinosaur', correct: false }
                                         ])

Quiz.last.questions.create!(text: 'What do we store in a wardrobe?')
Question.last.question_responses.create!([
                                          { text: 'pants', correct: true },
                                          { text: 'skirt', correct: true },
                                          { text: 'car', correct: false }
                                        ])

Quiz.last.questions.create!(text: 'What do we eat with a spoon?')
Question.last.question_responses.create!([
                                          { text: 'porridge', correct: true },
                                          { text: 'sausage', correct: false },
                                          { text: 'steak', correct: false }
                                        ])
