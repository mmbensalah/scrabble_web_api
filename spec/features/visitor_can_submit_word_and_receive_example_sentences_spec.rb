require 'rails_helper'

describe 'As a visitor' do
  context 'when submit a word' do
    it 'returns example sentences on how to use the word' do
      # As a guest user (no sign in required)
      visit "/"
      # When I visit "/"
      fill_in "word_search", with: "mindfulness"
      # And I fill in a text box with "mindfulness"
      click_on "Submit"
      # And I click "Submit"
      expect(current_path).to eq "/word-search"
      expect(page).to have_content("Examples for using 'mindfulness'")
      # Then I should see a message that says "Examples for using 'mindfulness'"
      within ".examples" do
        expect(page).to have_css(".sentence")
        expect(page).to have_css(".region")
      end
      # And I should see a list of sentences with examples of how to use the word
      # And I should see only sentences where the region for usage is "Brittish" or "Canadian"
      # And I should not see sentences for any other regions (or blank regions)
    end
  end
end
