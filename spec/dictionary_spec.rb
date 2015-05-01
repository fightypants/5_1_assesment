require ('definition')
require ('word')
require ('rspec')


describe('Word') do

  describe("#store") do
    it("adds word into the words array") do
      test_word = Word.new
      test_word.store()
      expect(Word.all()).to(eq([test_word]))
    end
    end
  end
