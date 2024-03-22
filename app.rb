require 'sinatra'

get '/' do
  <<-HTML
    <h1>Welcome to Rock-Paper-Scissors!</h1>
    <a href="/rock">Play Rock</a><br>
    <a href="/paper">Play Paper</a><br>
    <a href="/scissors">Play Scissors</a>
  HTML
end

get '/rock' do
  computer_move = ["Rock", "Paper", "Scissors"].sample
  outcome_message = case computer_move
                    when "Rock" then "We tied!"
                    when "Paper" then "You lose and they win!" # This leads to a loss.
                    when "Scissors" then "We won!" # Corrected to ensure "We won!" is shown when expected.
                    end

  <<-HTML
    <h1>You played Rock!</h1>
    <p>They played #{computer_move.downcase}.</p>
    <p>#{outcome_message}</p>
    <a href="/">Home</a> | <a href="/">Rules</a><br>
    <a href="/rock">Play Rock</a><br>
    <a href="/paper">Play Paper</a><br>
    <a href="/scissors">Play Scissors</a>
  HTML
end

get '/paper' do
  computer_move = ["Rock", "Paper", "Scissors"].sample
  outcome_message = case computer_move
                    when "Rock" then "We won!" # Correct as "We won!" for beating Rock.
                    when "Paper" then "We tied!"
                    when "Scissors" then "You lose and they win!" # Loses to Scissors.
                    end

  <<-HTML
    <h1>You played Paper!</h1>
    <p>They played #{computer_move.downcase}.</p>
    <p>#{outcome_message}</p>
    <a href="/">Home</a> | <a href="/">Rules</a><br>
    <a href="/rock">Play Rock</a><br>
    <a href="/paper">Play Paper</a><br>
    <a href="/scissors">Play Scissors</a>
  HTML
end

get '/scissors' do
  computer_move = ["Rock", "Paper", "Scissors"].sample
  outcome_message = case computer_move
                    when "Rock" then "You lose and they win!" # Loses to Rock.
                    when "Paper" then "We won!" # Correct as "We won!" for beating Paper.
                    when "Scissors" then "We tied!"
                    end

  <<-HTML
    <h1>You played Scissors!</h1>
    <p>They played #{computer_move.downcase}.</p>
    <p>#{outcome_message}</p>
    <a href="/">Home</a> | <a href="/">Rules</a><br>
    <a href="/rock">Play Rock</a><br>
    <a href="/paper">Play Paper</a><br>
    <a href="/scissors">Play Scissors</a>
  HTML
end
