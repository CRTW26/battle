feature 'players can enter names' do 
  scenario 'home page loads form for players to enter names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Jim'
  end 
end 

feature 'players can view HP' do 
  scenario 'HP appears on /game page' do 
    sign_in_and_play
    expect(page).to have_content 'Jim! You have 100HP'
  end 
end 
  
feature 'player_1 can attack player_2' do 
  scenario 'player_1 gets confirmation of having attacked player_2' do 
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Bob you attacked Jim!'
  end 
end 

feature 'player_1 attacks player_2' do 
  scenario 'player_2 HP reduce by 10' do 
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Jim, you have 90HP remaining!'
  end 
end 

feature 'players switch turns' do 
  scenario 'player_1 completes turn and then player_2 can make a move' do 
    sign_in_and_play
    click_link('Attack!')
    click_link('Jim, you\'re up!')
    expect(page).to have_content 'Jim, time to make your move!'
  end 
end 