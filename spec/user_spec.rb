require 'data_mapper'
require_relative '../app/models/user'

describe User do
  let(:user) {User.new}

  it 'is a DataMapper resource' do
    expect(User.included_modules).to include DataMapper::Resource
  end

  it 'has an id' do
    expect(user).to respond_to :id
  end

  it 'has a first name' do
    expect(user).to respond_to :first_name
  end

  it 'can set a first name' do
    expect(user).to respond_to :first_name=
  end

  it 'has a last name' do
    expect(user).to respond_to :last_name
  end

  it 'can set a last name' do
    expect(user).to respond_to :last_name=
  end

  it 'has an email' do
    expect(user).to respond_to :email
  end

  it 'can set an email' do
    expect(user).to respond_to :email=
  end

  it 'has a username' do
    expect(user).to respond_to :username
  end

  it 'can set a username' do
    expect(user).to respond_to :username=
  end

  it 'has a password' do
    expect(user).to respond_to :password
  end

  it 'can set a password' do
    expect(user).to respond_to :password
  end

  # it 'can create peeps' do
  #   expect(user).to respond_to :peeps
  # end

end