require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }

  it { should have_many(:sale_apartments)}
  it { should have_many(:rent_apartments)}
  it { should have_many(:daily_apartments)}
end
