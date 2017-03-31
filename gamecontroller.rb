require "pry"


  def roll die
    # empty array of 5 dice
    dice = []
    die.times do
      dice << rand(1..6)
    end
    dice
  end

  def turn
    #variable for how many rolls up to 3
    times = 0 #how many rolls
    dice_hash = Hash.new()

    if times < 3
      #show what was rolled
      p "Here is your roll: " + roll(5).to_s
      times =+ 1
    end

    #after each roll user input for which values to keep - 
    puts "Roll Agian? Yes or No"

    again = gets.chomp.downcase

#change to loop
    if again == "no"
      # show scorecard from user of what are left options
      # user input to which box to us (scorecard)
      # sum of dice

    elsif again == "yes"
      p "what dice numbers would you like to keep?"
      #take die and convert to hash 
      keep_dice = gets.chomp
      p keep_dice.split(" ")
      # reset dice
      #manydice = (5 - keep_dice.length)
      roll(5 - keep_dice.length)
      times =+ 1
      binding.pry
    else
      p "Opps!"

    end
      


    # call roll with how many dice to roll
 
   # save hash 
       

   #pass hash to scorecard

  end

turn
