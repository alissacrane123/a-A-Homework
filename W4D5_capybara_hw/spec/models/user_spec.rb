require_relative 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }




  pending "add some examples to (or delete) #{__FILE__}"
end
