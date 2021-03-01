player class with two instances, 
  state: tracking their scores separately initialized to 3
  behaviour: enter guess
  methods: current_guess = gets.chomp
turns class
  state: who's turn is it? has some
  behaviour: 
    read guess and output whether correct or not
    check if someone has won, if so, print that they win and game over, otherwise...
    update score the print scores
    change to new turn, and output new turn line and new question #new instance?
  methods: 
    guess_checker - check guess and puts correct/incorrect
    score_writer - updates the current player's score with their guess
    win_checker - check if someone has won, if has, puts game over and ends game
    score_printer - reads both scores and prints them
    looper - for looping to next turn
    player_switcher - for updating current player
    game_over - for ending game 
    

