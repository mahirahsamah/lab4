# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
    #described_class.new(author: 'JK Rowling')
    #described_class.new(price: '20.50')
    #described_class.new(publish_date: '2000-08-10')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil

    expect(subject).not_to be_valid
  end
end