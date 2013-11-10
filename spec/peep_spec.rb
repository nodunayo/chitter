require 'data_mapper'
require 'peep'


describe Peep do
  let(:peep) {Peep.new}

  it 'is a DataMapper resource' do
    expect(Peep.included_modules).to include DataMapper::Resource
  end

  it 'has an id' do
    expect(peep).to respond_to :id
  end

  it 'has a body' do
    expect(peep).to respond_to :body
  end

  it 'can set a body' do
    expect(peep).to respond_to :body=
  end

  it 'has a time of creation' do
    expect(peep).to respond_to :created_at
  end
 
  it 'has an author' do
    expect(peep).to respond_to :user
  end

end

