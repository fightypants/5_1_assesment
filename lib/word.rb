class Word
  @@words = []


  define_method(:initialize) do
    @definition = []
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
end
