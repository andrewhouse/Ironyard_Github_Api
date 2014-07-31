require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :github_name => "Github Name",
      :repository => "Repository",
      :last_commit => "Last Commit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Github Name/)
    rendered.should match(/Repository/)
    rendered.should match(/Last Commit/)
  end
end
