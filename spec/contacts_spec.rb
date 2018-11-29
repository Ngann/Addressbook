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


end
