require_relative '../models/entry.rb'

# The standard first line of an RSpec test file.
# We are saying that the file is a spec file and 
# that it tests Entry.
RSpec.describe Entry do 

  # The context method gives our test structure 
  # and communicate that all specs inside it belong 
  # to the same context. In this case, we're using 
  # it to communicate that the specs in the context 
  # will test Entry attributes.
  context "attributes" do

    # We separate our individual tests using the it 
    # method. Each it represents a unique test.
    it "should respond to name" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')

      # Each RSpec test ends with one or more expect 
      # method, which we use to declare the expectations 
      # for the test. If those expectations are met, 
      # our test passes, if they are not, it fails.
      expect(entry).to respond_to(:name)
    end

    it "should respond to phone number" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:phone_number)
    end

    it "should respond to email" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:email)
    end
  end

  # New context to separate the to_s test from the 
  # initializer tests.
  context ".to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
      
      # We use eq to check that to_s returns a string 
      # equal to expected_string.
      expect(entry.to_s).to eq(expected_string)
    end
  end
end