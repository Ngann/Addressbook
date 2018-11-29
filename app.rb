require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do

  @address_book = Contacts.all()
  erb(:input)
end

get('/contacts/:id') do
  @contact = Contacts.find(params[:id])
  erb(:output)
end

post('/contacts/:id') do
  @contact = Contacts.find(params[:id])
  erb(:input)
end

post ('/') do
  contact = Contacts.new(params)
  @firstname = params[:firstname]
  @lastname = params[:lastname]
  @phonenumber = params[:phonenumber]
  contact.save()
  @address_book = Contacts.all()
  erb(:input)
end
