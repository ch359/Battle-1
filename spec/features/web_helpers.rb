def sign_in_and_play
  visit("/")
  fill_in('player_one', with: 'John')
  fill_in('player_two', with: 'James')
  click_button('Submit')
end