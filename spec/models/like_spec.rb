require 'spec_helper'

describe Like do
  let(:like) { build(:like) }
  
  it { should validate_presence_of :library_id }
  
  it { should belong_to :library }
  
  it "should be valid" do
    like.should be_valid
  end
end
