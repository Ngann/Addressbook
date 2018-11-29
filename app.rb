require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  @address_book = Contacts.all()
  erb(:input)
end

post ('/') do
  # binding.pry
  @firstname = params.fetch("new_first_name")
  @lastname = params.fetch("new_last_name")
  @phonenumber = params.fetch("new_phone_number")
  new_contact = Contacts.new(firstname, lastname, phonenumber)
  new_contact.save()
  @address_book = Contacts.all()
  erb(:input)
end
