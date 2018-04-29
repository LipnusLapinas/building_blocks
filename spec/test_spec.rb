require "building_blocks"

describe "Caesar method" do
  describe "#caesar" do
	it "shifts lower case letters by the specified number" do
	  expect(caesar("abcd", "2")).to eql("cdef")
	end
	it "also shifts capital letters" do
	  expect(caesar("abCDefGH", "1")).to eql("bcDEfgHI")
	end
	it "ignores numbers and other characters" do
	  expect(caesar("23415__+/?/|;:{]", "4")).to eql("23415__+/?/|;:{]")
	end
	it "does nothing for no input" do
	  expect(caesar("", "5")).to eql("")
	end
	it "can deal with large shifts" do
	  expect(caesar("abc", "100")).to eql("wxy")
	end
	it "can deal with letter at the end of the alphabet" do
	  expect(caesar("xaz", 3)).to eql("adc")
	end
	it "ignores invalid shifts" do
	  expect(caesar("abc", "$")).to eql("abc")
	end
	it "can do it all together" do
	  expect(caesar("aBc1dEH77G$%!mZ 3", "27")).to eql("bCd1eFI77H$%!nA 3")
	end
  end
end
