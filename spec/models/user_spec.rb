require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create! name: 'Edward', email: 'oluyaratosin123@gmail.com', password: 'root20', confirmed_at: Time.now
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Subject should be valid' do
    expect(subject).to be_valid
  end
end
