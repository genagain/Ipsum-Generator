require 'rails_helper'

RSpec.describe Generator, type: :model do

  context 'text generation' do

    it 'creates a state machine' do

      sentence = "The quick brown fox jumped over the lazy dog. The lazy dog slept."

      state_machine = {
                        "the" => { "quick" => 1, "lazy" => 2 },
                        "quick" => { "brown" => 1 },
                        "brown" => { "fox" => 1 },
                        "fox" => { "jumped" => 1 },
                        "jumped" => { "over" => 1 },
                        "over" => { "the" => 1 },
                        "lazy" => { "dog" => 2 },
                        "dog" => { "." => 1, "slept" => 1 },
                        "." => { "the" => 1, nil => 1 },
                        "slept" => { "." => 1}
                      }

      generator = Generator.new
      generator.corpus = sentence
      expect(generator.create_state_machine).to eq(state_machine)
    end
  end
end
