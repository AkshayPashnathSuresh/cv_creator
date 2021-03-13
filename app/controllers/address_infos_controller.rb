# frozen_string_literal: true

class AddressInfosController < ApplicationController
  def new; end

  def create
    @address = Address.where(user_id: current_user).first_or_initialize
    if @address.update(address_params)
      redirect_to new_education_info_path
    else
      render 'new'
    end
  end

  private

  def address_params
    params.require(:address).permit(:nationality, :province, :city, :remaining_address,
                                    :country, :post_cd, :mail_id, :phone_no,
                                    :linkedIn_url, :twitter_url)
  end
end
