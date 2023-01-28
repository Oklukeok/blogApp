require 'rails_helper'

RSpec.describe Post do
  subject { Post.new(title: 'Sunday', text: 'Sunny Sunday') }

  before { subject.save }

  it 'title should be Sunday' do
    subject.title = 'Sunday'
  end

  it 'text should be Sunny Sunday' do
    subject.text = 'Sunny Sunday'
  end
end
