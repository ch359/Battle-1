require_relative '../../app.rb'


feature 'homepage ' do
  # scenario " says testing infrastructure working!" do
  #   visit("/")
  #   expect(page).to have_content "Testing infrastructure working!"
  # end

  scenario " expects players to fill in their names via a form" do
    sign_in_and_play
    expect(page).to have_content("John")
  end

  feature 'play' do 
    scenario " Players can view Points " do 
    visit('/play')
    expect(page).to have_content("Points")
    end
  end
end
