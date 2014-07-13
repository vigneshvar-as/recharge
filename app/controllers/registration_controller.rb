class RegistrationController < ApplicationController
  def new
    @member= Member.new
    @referer = Referer.new
  end

  def create
    @member = Member.new
    @member.email = params[:member][:email]
    @member.mobile = params[:member][:mobile]
    @member.password = params[:member][:password]
    @member.password_confirmation =params[:member][:password_confirmation]

    @referer = Referer.new
    @referer.referer = params[:referer][:referer]
    @member.valid?
    if @member.errors.blank?

      @member.save
      @referer.member = @member
      @referer.save
      redirect_to dashboard_path
    else
      render :action => "new"
    end
  end
end
