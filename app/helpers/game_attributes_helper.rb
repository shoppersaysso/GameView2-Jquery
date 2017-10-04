module GameAttributesHelper

  def boolean_to_words(value)
    value ? "Single and Multiplayer" : "Single-Player Only"
  end

end
