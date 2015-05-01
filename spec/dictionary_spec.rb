require ('definition')
require ('word')
require ('rspec')

########SPECS FOR WORD CLASS OBJECTS###########
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

  describe(".find_by_id") do
    it("returns a word by its id number") do
      test_word = Word.new
      test_word.store()
      test_word2 = Word.new
      test_word2.store()
      expect(Word.find_by_id(test_word.id())).to(eq(test_word))
    end
  end

  describe("#add_definition") do
    it('adds a new definition for a word') do
    test_word = Word.new
    test_definition = Definition.new
    test_word.add_definition(test_definition)
    expect(test_word.see_definition).to(eq([test_definition]))
    end
  end
end

###########SPECS FOR DEFINITION CLASS OBJECTS#################
describe('Definition') do


  describe("#store_definition") do
    it("adds definition into the definition array") do
      test_definition = Definition.new
      test_definition.store_definition("This is the text users will see")
      expect(test_definition.show_definition()).to(eq(["This is the text users will see"]))
    end
  end
end
