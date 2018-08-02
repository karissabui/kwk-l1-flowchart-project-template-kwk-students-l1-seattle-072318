class Quiz

  def initialize(correct_answers)
    @correct_answers = correct_answers
  end

  def display_question( question,option1, option2, option3, option4, answer)
    loop do
      puts option1
      puts option2
      puts option3
      puts option4
      print "\nType a letter a, b, c, or d for your answer:"
      reply = gets
      if answer == reply then
        @correct_answers = @correct_answer + 1
      end
      break
    end
  end

  def quiz_result
      print 'You correctly answered ' + @correct_answers.to_s + '
question(s).'
  end

  def end_game
    puts "\t\tThanks for playing, see you next time!."
  end
end
correct_answers = 0

my_quiz = Quiz.new(correct_answers)



  # q1
  puts '"What weapon would you like to bring on your mission'
  my_quiz.display_question("What weapon would you like to bring on your mission",
                  "a. bannana peel", "b. nunchucks", "c. spray bottle filled with rose water", "d. apple corer", "a")
  # q2
  puts '"who do you want to accompany you?"'
  my_quiz.display_question("who do you want to accompany you?",
                        "a. Toby(elementary school dropout)", "b. Bubbles the goldfish", "c. your mom (cleaner/ maid)", "d. Jake from State Farm","a")
  # q3
  puts '"what is your form of transportation?"'
  my_quiz.display_question("what is your form of transportation?",
                        "a. electric scooter from your neighbor's backyard", "b. uber with an underage driver", "c. Wonder Woman's invisable jet","d. tricycle ", "b")
                        
   # q4
  puts '"finally your see the criminal drinking coffee in a starbucks. Do you.....?"'
  my_quiz.display_question("finally your see the criminal drinking coffee in a starbucks. Do you.....?",
                        "a. grab coffee and sit next to the suspected criminal", "b. make a public spectacle in arresting him", "c. start a flash mob to the song, Single Ladies by Beyonce, and trap him behind the counter","d. offer him a sugar cube and shove it up his nose", "c")

  # display result
  puts ''
  my_quiz.quiz_result

  # display end game message
  puts ''
  my_quiz.end_game