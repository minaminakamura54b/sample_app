module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    #メモ化　DBへの問い合わせを減らしている
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
    #if @current_user.nil
      #User.findby....
      #else
      #@current_user = @current_user
  end

  def logged_in?
    # !は反転術式　ログインしてればtrue
    !current_user.nil?
  end

  def log_out
    reset_session
    @current_user = nil #安全のため
  end
end
