require_relative '../app'

feature 'attack' do

  scenario " player gets confirmation after an attack" do
    sign_in_and_play
    click_button('Attack P2')
    expect(page).to have_content("Successfully hit")
  end

  scenario "attack should reduce player 2's HP" do
    sign_in_and_play
    expect{ $test_subject_2.take_damage(10) }.to change{$test_subject_2.health}.by(-10)
  end

  scenario "check attack button works" do
    sign_in_and_play
    click_button('Attack P2')
    expect($test_subject_2.health).to eq(90)
  end

end