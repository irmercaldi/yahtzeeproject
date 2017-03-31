require "pry"


  def roll die
    # empty array of 5 dice
    dice = []
    die.times do
      dice << rand(1..6)
    end
    dice
  end

 @end_roll = []

    def dice_cup
      puts "what dice numbers would you like to keep?"
        keep_dice = gets.chomp.split(/ /).map(&:to_i)
        keep_dice << roll(5 - keep_dice.length)
        p keep_dice.flatten
        
    end
   

    @scorecard = []


    puts "Here is your roll: " + roll(5).to_s

    times = 1 

    while times <= 3 do
      (puts " Roll Agian? Yes or No") unless times == 3
      (again = gets.chomp.downcase) unless times == 3
      if again == "no" || times == 3
        puts "Your score was added to score card!"
        break
      elsif again == "yes"
        dice_cup
        times += 1
      else
        puts "Oops!"
      end
    end
 




