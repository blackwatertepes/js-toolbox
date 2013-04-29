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
  
  context "when a library has multiple statuses" do
    before(:each) do
      5.times do
        library.statuses << create(:status)
      end
    end
    
    it "should return the most recent status" do
      library.status.should eq(library.statuses.last)
    end
    
    it "should return the most recent number of downloads" do
      library.downloads.should eq(library.statuses.last.downloads)
    end
    
    it "should return the most recent number of watchers" do
      library.watchers.should eq(library.statuses.last.watchers)
    end
    
    it "should return the most recent number of forks" do
      library.forks.should eq(library.statuses.last.forks)
    end
    
    it "should return the most recent number of issues" do
      library.issues.should eq(library.statuses.last.issues)
    end
  end
  
  it "should have a github url" do
    library.github_url.should include("#{library.author}/#{library.name}")
  end
end
