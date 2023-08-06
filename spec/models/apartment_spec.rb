require 'rails_helper'

RSpec.describe Apartment, type: :model do
  it { should validate_presence_of :square }
  it { should validate_presence_of :price}
  it { should validate_presence_of :description }
  it { should validate_presence_of :option }
    
  it { should belong_to :user}
  
  it 'have one attached file' do
    expect(Apartment.new.file).to be_an_instance_of(ActiveStorage::Attached::One)
  end
end
