class StaticPagesController < ApplicationController
  invisible_captcha only: :contact, on_spam: :spam_response

  def index
  end

  def landing_page
    @products = Product.limit(3)
  end

  def about
  end

  def contact
  end

    def thank_you
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
      UserMailer.contact_form(@email, @name, @message).deliver_now
    end

  private

  def spam_response
    redirect_to root_path, alert: "Spam Detected"
  end

end
