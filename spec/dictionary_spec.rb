require ('definition')
require ('word')
require ('rspec')


describe('Word') do
  before do
    Word.clear
  end

  describe("#store") do
    it("adds word into the words array") do
      test_word = Word.new
      test_word.store()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('initialy returns a blank words array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id value for a word') do
      test_word = Word.new
      test_word.store()
      expect(test_word.id).to(eq(1))
    end
  end

end
