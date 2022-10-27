require 'rspec'
require 'tdd'

describe "Array" do
    describe "#my_uniq" do
        it "takes in an array" do
            arr = [1, 2, 3]
            expect { arr.my_uniq }.to_not raise_error
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

    describe "#two_sum" do
        it "takes in an array" do
            arr = [1, 2, 3]
            expect { arr.two_sum }.to_not raise_error
        end

        it "should return an empty array when given array is empty" do
            expect([].two_sum).to eq([])
        end

        it "should return an empty array when given array has only one element" do
            expect([1].two_sum).to eq([])
        end

        it "should return the correct pair when a non empty array is passed in" do
            arr = [-2, -1, 0 , 1, 2]
            expect(arr.two_sum).to eq([[0,4], [1,3]])
        end
    end

    describe "#my_transpose" do
        let (:arr1) {[
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]}
        let (:arr2) {[
            [1, 4, 7],
            [2, 5, 8],
            [3, 6, 9]
        ]}

        it "takes in a 2-D array" do
            expect { arr1.my_transpose }.to_not raise_error
        end

        it "should return an empty array when given array is empty" do
            expect([[]].my_transpose).to eq([[]])
        end

        it "should return correct result when non empty 2-D array is passed" do
            expect(arr1.my_transpose).to eq(arr2)
        end

        it "should not use Array#uniq" do
            arr = [1, 2, 3]
            expect(arr1.my_transpose).to_not receive(:transpose)
        end
    end

    describe "#stock_picker" do
        let (:arr1) {[5, 4, 3, 2, 1]}
        let (:arr2) {[1, 2, 3, 4, 5]}
        let (:arr3) {[1, 4, 3, 5, 2]}
        let (:arr4) {[7, 1, 5, 3, 6, 4]}

        it "takes in an array" do
            expect { arr1.stock_picker }.to_not raise_error
        end

        it "returns 0 when input is an empty array" do
            expect([].stock_picker).to eq(0)
        end

        it "should return the correct result" do
            expect(arr1.stock_picker).to eq(0)
        end

        it "should return the correct result" do
            expect(arr2.stock_picker).to eq(4)
        end

        it "should return the correct result" do
            expect(arr3.stock_picker).to eq(4)
        end

        it "should return the correct result" do
            expect(arr4.stock_picker).to eq(5)
        end
    end

    
end
