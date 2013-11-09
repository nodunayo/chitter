env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

#require models here

DataMapper.finalize

DataMapper.auto_upgrade!