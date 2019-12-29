class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to mypage_profile_path
    else
      redirect_to mypage_profile_path
    end
  end

  private
  
  def user_params
    params.require(:user).permit(
      :nickname,
      :password,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :phone_number,
      :birthyear_id,
      :birthmonth_id,
      :birthday,
      :icon,
      :introduce,
      :header_image,
      :authentication_number)
  end
end
