require 'rails_helper'

RSpec.describe DailyApartment, type: :model do
  it { should validate_presence_of :square_apartment }
  it { should validate_presence_of :price_daily_apartment}
  it { should belong_to :user}

  it 'have one attached file' do
    expect(DailyApartment.new.file).to be_an_instance_of(ActiveStorage::Attached::One)
  end
end
