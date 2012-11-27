class Pirate
  def initialize()
  end

  def greetings=(greetings)
    @greetings = greetings
  end

  def translate
      self.send(:translate_word)
  end

  def translate_word
   @greetings = ["Ahoh Matey" ,"Shiber Me Timbers Your Scurvey Dogs!!"]
  end

end