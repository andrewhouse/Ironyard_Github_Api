require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :github_name => "MyString",
      :repository => "MyString",
      :last_commit => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_github_name[name=?]", "student[github_name]"
      assert_select "input#student_repository[name=?]", "student[repository]"
      assert_select "input#student_last_commit[name=?]", "student[last_commit]"
    end
  end
end
