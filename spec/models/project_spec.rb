require 'rails_helper'

describe Project do
	let (:project) {Project.create(title: "Test", start_date: Date.new(2017, 2, 1), end_date: Date.today, technology: "Ruby on Rails, HTML5, CSS3, jQuery, AJAX", description: "This is a description", project_link: "http://www.google.com")}

	describe "Project" do

		it "has a title" do
			expect(project.title).to be_an_instance_of(String)
			expect(project.title).to eq("Test")
		end

		it "has a start date" do
			start_date = Date.new(2017, 2, 1)
			expect(project.start_date).to be_an_instance_of(Date)
			expect(project.start_date).to eq(start_date)
		end

		it "has an end date" do
			end_date = Date.today
			expect(project.end_date).to be_an_instance_of(Date)
			expect(project.end_date).to eq(end_date)
		end

		it "has technology used" do
			expect(project.technology).to be_an_instance_of(String)
			expect(project.technology).to eq("Ruby on Rails, HTML5, CSS3, jQuery, AJAX")
		end

		it "has a description" do
			expect(project.description).to be_an_instance_of(String)
			expect(project.description).to eq("This is a description")
		end

		it "has a link" do
			expect(project.project_link).to be_an_instance_of(String)
			expect(project.project_link).to eq("http://www.google.com")
		end

	end

end