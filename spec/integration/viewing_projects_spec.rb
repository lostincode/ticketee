require 'spec_helper'

feature "Viewing Projects" do
  scenario "Listing all projects" do
    project = Factory.create(:project, :name => "Text Mate 2")
    visit '/'
    click_link 'Text Mate 2'
    page.current_url.should == project_url(project)
  end
end
