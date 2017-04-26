class AdminController < ApplicationController
	http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"], except: :upload

	def index
	end

	def upload
		uploaded_certificate = params[:certificate]
		title_tag = params[:certificate_name]
		file_name = title_tag.split(" ").join("_") + "."
		extension = uploaded_certificate.content_type.split("/").last
		File.open(Rails.root.join('public', 'uploads', title_tag + extension), 'wb') do |file|
    	file.write(uploaded_certificate.read)
		end

		redirect_to "/admin"
  end

	def destroy
		route_to_certificates = "public/uploads/"
		certificate_to_delete = route_to_certificates + params[:certificate].split("+").join(".")
		File.delete(certificate_to_delete) if File.exist?(certificate_to_delete)

		redirect_to "/admin"
	end
end
