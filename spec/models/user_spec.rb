require 'rails_helper'

describe User do
  context 'Validations' do
    it 'validates user attributes' do
      user = User.new
      user.valid?
      expect(user.errors.full_messages).to eq([
                                                "First name can't be blank",
                                                "Last name can't be blank",
                                                "Email can't be blank",
                                                "Password can't be blank"
                                              ])
    end
  end
end
