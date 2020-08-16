require 'rails_helper'

RSpec.describe Quiz, type: :model do
  let!(:quiz) { FactoryBot.create(:quiz) }

  it 'is valid' do
    expect(quiz).to be_valid
  end
end
