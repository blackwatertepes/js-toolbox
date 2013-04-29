require 'spec_helper'

describe Library do
  let(:library) { build(:library) }
  
  it { should validate_presence_of :github_id }
  it { should validate_presence_of :category_id }
  it { should validate_presence_of :author }
  it { should validate_presence_of :name }
  
  it { should validate_uniqueness_of :github_id }
  
  it { should belong_to :category }
  it { should have_many :likes }
  it { should have_many :statuses }
  
  it "should be valid" do
    library.should be_valid
  end
end
