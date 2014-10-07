require 'spec_helper'

describe "RubyRefactoring" do
  let(:alfi) { Dog.new(name: "Alfi", breed: "Springer Spaniel", owner: "Steven Nunez") }
  let(:steven) { alfi.owner }

  describe "Dog" do
    describe '#name' do
      it 'returns the name of the dog' do
        expect(alfi.name).to eq("Alfi")
      end
    end

    describe '#bark' do
      it 'returns a bark' do
        expect(alfi.bark).to eq("Woof!")
      end
    end

    describe '#breed' do
      it 'returns the breed classification' do
        expect(alfi.breed).to eq("Springer Spaniel")
      end
    end

    describe '#owner' do
      it 'returns the Owner object' do
        expect(alfi.owner).to eq(steven)
      end

      it 'returns the name of the owner when #name is called' do
        expect(alfi.owner.name).to eq("Steven Nunez")
      end

      it 'returns Owner when #class is called on #owner' do
        expect(alfi.owner.class).to eq(Owner)
      end
    end
  end

  describe "Owner" do
    describe '#name' do
      it 'returns the name' do
        expect(steven.name).to eq("Steven Nunez")
      end
    end

    describe '#dog' do
      it 'returns the dog object associated with the owner' do
        expect(steven.dog).to eq(alfi)
      end
    end
  end
end
