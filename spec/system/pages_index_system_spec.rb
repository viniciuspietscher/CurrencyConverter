require 'rails_helper'

RSpec.describe 'Convert Currency Process', type: :system, js: true do
  it 'converts a value' do
    visit '/'
    within('#convert_form') do
      select('EUR', from: 'source_currency')
      select('USD', from: 'desired_currency')
      fill_in 'amount', with: rand(1..999)
    end

    click_button 'Convert'

    expect(page).to have_content('value')
  end
end
