require 'rails_helper'

feature 'admin access' do
	let(:username) {ENV["ADMIN_USERNAME"]}
	let(:password) {ENV["ADMIN_PASSWORD"]}
	scenario 'user visits admin page successfully' do
		page.driver.browser.basic_authorize(username, password)
		visit '/admin'
		expect(page.body).to include 'Admin Sayfasi'
	end
end
