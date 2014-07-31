require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :github_name => "Github Name",
        :repository => "Repository",
        :last_commit => "Last Commit"
      ),
      stub_model(Student,
        :github_name => "Github Name",
        :repository => "Repository",
        :last_commit => "Last Commit"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Github Name".to_s, :count => 2
    assert_select "tr>td", :text => "Repository".to_s, :count => 2
    assert_select "tr>td", :text => "Last Commit".to_s, :count => 2
  end
end
