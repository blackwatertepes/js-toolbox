require 'spec_helper'

describe Like do
  it { should validate_presence_of :library_id }
end
