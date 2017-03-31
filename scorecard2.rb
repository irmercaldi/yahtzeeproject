@scorecard = {
  aces: 100,
  twos: 42,
  threes: 45,
  fours: 20,
  fives: 45,
  sixes: 12,
  three_of_a_kind: 78,
  four_of_a_kind: 75,
  full_house: 25,
  sm_straight: 30,
  lg_straight: 40,
  yahtzee: 50,
  chance: 0,
}

@user_score = []

p @scorecard

def scorecard
  p 'What value would you like to use?'
  @new_score = gets.chomp!.downcase
  if @new_score == "aces"
    p "You selected aces for a total of #{@scorecard[:aces]}"
  elsif @new_score == "twos"
    p "You selected twos for a total of #{@scorecard[:twos]}"
  elsif @new_score == "threes"
    p "You selected threes for a total of #{@scorecard[:threes]}"
  elsif @new_score == "fours"
    p "You selected fours for a total of #{@scorecard[:fours]}"
  elsif @new_score == "five"
    p "You selected fives for a total of #{@scorecard[:fives]}"
  elsif @new_score == "sixes"
    p "You selected sixes for a total of #{@scorecard[:sixes]}"
  elsif @new_score == "three_of_a_kind"
    p "You selected 3 of a kind for a total of #{@scorecard[:three_of_a_kind]}"
  elsif @new_score == "four_of_a_kind"
    p "You selected 4 of a kind for a total of #{@scorecard[:four_of_a_kind]}"
  elsif @new_score == "full_house"
    p "You selected a full house for a total of #{@scorecard[:full_house]}"
  elsif @new_score == "sm_straight"
    p "You selected a small straight for a total of #{@scorecard[:sm_straight]}"
  elsif @new_score == "lg_straight"
    p "You selected a large straight for a total of #{@scorecard[:lg_straight]}"
  elsif @new_score == "yahtzee"
    p "You got a Yahtzee for a total of #{@scorecard[:yahtzee]}"
  elsif @new_score == "chance"
    p "You selected chance for a total of #{@scorecard[:chance]}"
  else
    p "That value doesnt exist!"
  end
end

scorecard

@user_score << @new_score
p @user_score

