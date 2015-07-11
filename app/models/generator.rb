class Generator
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :corpus

  def initialize

  end

  def persisted?
    false
  end
end
