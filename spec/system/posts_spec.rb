require 'rails_helper'

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)
  end

  # pending "add some scenarios (or delete) #{__FILE__}"
  it 'サンプル' do
    FactoryBot.create(:theme)
    visit root_path
    expect(page).to have_content('Random')
  end
end
