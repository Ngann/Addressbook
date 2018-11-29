require('rspec')
require('contacts')

describe("Contacts") do
  before() do
    Contacts.clear()
  end
  describe(".all") do
    it("is empty at first") do
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an contact to the list of contacts") do
      contact = Contacts.new("Ngan","Nguyen","123-456-7890")
      contact.save()
      expect(Contacts.all()).to(eq([contact]))
    end
  end

  describe(".clear") do
    it("clears all contacts from the list") do
      contact = Contacts.new("Ngan","Nguyen","123-456-7890")
      contact.save()
      Contacts.clear()
      expect(Contacts.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new contact is added") do
      contact = Contacts.new("Ngan","Nguyen","123-456-7890")
      contact.save()
      contact2 = Contacts.new("Bob","Nguyen","123-456-7890")
      contact2.save()
      expect(contact.id()).to(eq(1))
      expect(contact2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds an contact based on its id") do
      contact = Contacts.new("Ngan","Nguyen","123-456-7890")
      contact.save()
      contact2 = Contacts.new("Bob","Nguyen","123-456-7890")
      contact2.save()
      expect(Contacts.find(1)).to(eq(contact))
      expect(Contacts.find(2)).to(eq(contact2))
    end
  end

end
