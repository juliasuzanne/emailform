class ContactFormController < ApplicationController
  def create
    @form = ContactForm.new(
      name: params[:name],
      last_name: params[:last_name],
      message: params[:message],
      email: params[:email],
    )
    if @form.save
      NotifierMailer.simple_message(@form.name, @form.last_name, @form.email, @form.message).deliver_now
      render json: { message: "Email sent." }, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
