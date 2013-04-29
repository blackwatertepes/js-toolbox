require 'spec_helper'

describe Status do
  it { should validate_presence_of :library_id }
end
