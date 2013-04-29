require 'spec_helper'

describe Status do
  let(:status) { build(:status) }
  
  it { should validate_presence_of :library_id }
  
  it { should belong_to :library }
  
  it "should be valid" do
    status.should be_valid
  end
end
