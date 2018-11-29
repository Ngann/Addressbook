class Contacts
  @@address_book = []
  # attr_accessor :phonenumber
  attr_reader :firstname, :lastname, :phonenumber, :id


  def initialize(firstname, lastname, phonenumber)
    @firstname = firstname
    @lastname = lastname
    @phonenumber = phonenumber
    # @email = email
    # @address = address
    # @city = city
    # @state = state
    # @zipcode = zipcode
    @id = @@address_book.length + 1
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

  def self.find(id)
    contact_id = id.to_i()
    @@address_book.each do |contact|
      if contact.id == contact_id
        return contact
      end
    end
  end


end


# contact = Contacts.new("Ngan","Nguyen","123-456-7890")
# contact_two = Contacts.new("Bob","Nguyen","123-456-7890")
# contact.save
# contact_two.save
# Contacts.all
