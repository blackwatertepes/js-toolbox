require 'spec_helper'

describe Category do
  let(:category) { build(:category) }
  
  it { should validate_presence_of :name }
  it { should validate_presence_of :full_name }
  
  it { should validate_uniqueness_of :name}
  it { should validate_uniqueness_of :full_name }
  
  it { should have_many :libraries}
  
  it "should be valid" do
    category.should be_valid
  end
end
