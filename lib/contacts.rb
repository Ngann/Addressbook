class Contacts
  attr_accessor :phonenumber
  attr_reader :firstname, :lastname

  @@address_book = []

  def initialize(firstname, lastname, phonenumber)
    @firstname = firstname
    @lastname = lastname
    @phonenumber = phonenumber
    # @email = email
    # @address = address
    # @city = city
    # @state = state
    # @zipcode = zipcode
  end

  def save()
    @@address_book.push(self)
  end

  def self.all()
    @@address_book
  end

  def self.clear()
    @@address_book = []
  end

  def update_contact
    #this where we can retreive the contact and make updates
  end

end
