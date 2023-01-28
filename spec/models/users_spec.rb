require 'rails_helper'

RSpec.describe Users do
  subject { Users.new(name: 'John Connor', photo: 'www.google.com', bio: 'Hello my name is John') }

  before { subject.save }

  it 'name should be John Connor' do
    subject.name = 'John Connor'
  end

  it 'photo should be www.google.com' do
    subject.photo = 'www.google.com'
  end

  it 'bio should be Hello my name is John' do
    subject.bio = 'Hello my name is John'
  end
end
