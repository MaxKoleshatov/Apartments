require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }

  it { should have_many(:sale_apartments)}
#   it { should have_many(:prizes).dependent(:destroy) }
  
#   it { should have_many(:authorizations).dependent(:destroy) }
#   it { should have_many(:subscriptions).dependent(:destroy) }
end
