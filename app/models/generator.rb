class Generator
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :corpus

  def initialize
    @corpus = nil
  end

  def persisted?
    false
  end

  def create_state_machine
    state_machine = {}
    clean_tokens = sanitize(corpus)
    clean_tokens.each_with_index do |token, index|
      next_word = clean_tokens[index + 1]
      if state_machine.has_key?(token)
        next_words = state_machine[token]
        next_words.has_key?(next_word) ? next_words[next_word] += 1 : next_words[next_word] = 1
      else
        state_machine[token] = { next_word => 1 }
      end
    end
    state_machine
  end

  def sanitize(text)
    tokens = text.downcase.split(' ')
    last_words = tokens.select { |token| token.include?('.') }
    tokens.each_with_index do |token, index|
      if last_words.include?(token) && token.include?('.')
        tokens.insert(index, [token.gsub!('.', ''), '.'])
        tokens.delete_at(index + 1)
      end
    end
    tokens.flatten!

  end
end
