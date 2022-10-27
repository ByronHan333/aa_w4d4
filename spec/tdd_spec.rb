require 'rspec'
require 'tdd'

describe "Array" do
    describe "#my_uniq" do
        it "takes in an array" do
            arr = [1, 2, 3]
            expect { arr.my_uniq }.to_not raise_error(ArgumentError)
        end

        it "should return the same result as Array#uniq when passed an empty array" do
            expect([].my_uniq).to eq([].uniq)
        end

        it "should return the same result as Array#uniq when passed a non-duplicate array" do
            arr = [1, 2, 3, 4]
            expect(arr.my_uniq).to eq(arr.uniq)
        end

        it "should return the same result as Array#uniq when passed an array which contains duplicates" do
            arr = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
            expect(arr.my_uniq).to eq(arr.uniq)
        end

        it "should not use Array#uniq" do
            arr = [1, 2, 3]
            expect(arr.my_uniq).to_not receive(:uniq)
        end
    end
end