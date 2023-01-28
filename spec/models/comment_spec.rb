require 'rails_helper'

RSpec.describe Comment do
  newperson = Users.create(name: 'John Connor', photo: 'www.google.com', bio: 'Hello my name is John')
  newpost = Post.create(title: 'Sunday', text: 'Sunny Sunday')

  subject { Comment.new(author_id: newperson.id, post_id: newpost.id, Text: 'Nice picture!') }
  before { subject.save }

  it 'author_id should be = 1' do
    newperson.id = 1
  end

  it 'post_id should be = 1' do
    newpost.id = 1
  end

  it 'Text should be Nice picture!' do
    subject.Text = 'Nice picture!'
  end
end
