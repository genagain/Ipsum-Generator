class Generator
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :corpus, :paragraph_number

  def initialize
    @corpus = nil
    @paragraph_number = nil
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

  def write_sentence
    sentence = ''
    current_word = ''
    state_machine = create_state_machine
    starting_word = state_machine['.'].keys.delete_if { |token| token.nil? }.sample
    sentence <<  "#{starting_word} "
    until current_word == '.' || current_word == '!' || current_word == '.' || current_word.nil?
      current_word = starting_word if current_word == ''
      total_cumm_freq = state_machine[current_word].values.inject { |sum, i| sum += i }
      decider = total_cumm_freq * rand()
      cumm_freq = 0
      until decider <= cumm_freq
        deciding_value = nil
        state_machine[current_word].values.each do |count|
           cumm_freq += count
           deciding_value = count
        end
      end
      current_word = state_machine[current_word].key(deciding_value)
      sentence << "#{current_word} " unless current_word.nil?
      break if sentence.length >= 140
    end
    sentence
  end

  def sanitize(text)
    text.gsub!('\n', ' ')
    tokens = text.downcase.split(' ')
    last_words = tokens.select { |token| token.include?('.') }
    tokens.each_with_index do |token, index|
      if last_words.include?(token) && token.include?('.')
        tokens.insert(index, [token.gsub!('.', ''), '.'])
        tokens.delete_at(index + 1)
      end
    end
    tokens.flatten!
    tokens
  end
end
