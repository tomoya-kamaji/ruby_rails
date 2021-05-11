module SessionsHelper
  # 渡されたユーザーでログインする セッションにログインしているユーザIDを格納する
  def log_in(user)
    session[:user_id] = user.id
  end
end
