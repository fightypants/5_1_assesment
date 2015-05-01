class Word
  @@words = []


  define_method(:initialize) do
    @word_definitions = []
    @word = @@words.length().+(1)
  end

  define_method(:store) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:id) do
    @word
  end

  define_singleton_method(:find_by_id) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @word_definitions.push(definition)
  end

  define_method(:see_definition) do
    @word_definitions
  end

end
