require 'rails_helper'

RSpec.describe "quizzes/edit", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      title: "MyString",
      finished: false
    ))
  end

  it "renders the edit quiz form" do
    render

    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do

      assert_select "input[name=?]", "quiz[title]"

      assert_select "input[name=?]", "quiz[finished]"
    end
  end
end
