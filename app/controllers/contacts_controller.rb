class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Mesajınız yetkililere ulaştı. En kısa zamanda sizinle telefon veya elektronik posta yoluyla iletişime geçecek.'
    else
      flash.now[:error] = 'Bir hata oluştu. Lütfen tekrar deneyiniz.'
      render :new
    end
  end
end
