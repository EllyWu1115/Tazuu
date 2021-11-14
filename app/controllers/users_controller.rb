class UsersController < ActionController::Base
  def sign_up
    @user = User.new
  end

  def account_verify
    clean_params = params.require(:user).permit(:username, :password, :email)

    @user = User.new(clean_params)



  if @user.save
    redirect_to "/"
  else
    # redirect_to "/sign_up"   render的用意是當網頁輸入錯誤 下一次不需要再全部重新填寫一次 會保留輸入值
    render :sign_up

    end
  end
end
