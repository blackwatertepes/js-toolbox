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
  
  it "should capitalize the full name as a title" do
    cat = create(:category, full_name: "library")
    cat.title.should eq("Library")
  end
  
  it "should return all libraries in a comma separated list" do
    5.times do
      category.libraries << create(:library)
    end
    category.libs.split(',').length.should eq(5)
  end
end
