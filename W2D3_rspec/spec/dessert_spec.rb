require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end
 
describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new('cookie', 5, :chef) }

  describe "#initialize" do
    it "sets a type equal to a string" do
      expect(dessert.type.class).to be(String)
    end 

    it "sets a quantity equal to an integer" do 
      expect(dessert.quantity.class).to be(Integer)
    end 

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to eq([])
    end 

    it "raises an argument error when given a non-integer quantity" do 
      expect{( dessert.quantity == '5' )}.to raise_error(ArgumentError)
    end 
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient('flour')
      expect(dessert.ingredients).to eq(['flour'])
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(1)
      expect(dessert.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
