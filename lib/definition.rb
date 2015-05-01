class Definition

  define_method(:initialize) do
    @definition = []
  end

  define_method(:store_definition) do |text|
    @definition.push(text)
  end

  define_method(:show_definition) do
    @definition
  end
end
