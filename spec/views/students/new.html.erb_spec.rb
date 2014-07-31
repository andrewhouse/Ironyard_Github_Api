require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :github_name => "MyString",
      :repository => "MyString",
      :last_commit => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_github_name[name=?]", "student[github_name]"
      assert_select "input#student_repository[name=?]", "student[repository]"
      assert_select "input#student_last_commit[name=?]", "student[last_commit]"
    end
  end
end
