require './app'

feature 'losing the game' do
  scenario 'it goes to a lose screnn when HP is 0' do
    sign_in_and_play
    19.times(attack)
    expect(page).to have_content "Ya lose!!"
  end
end
