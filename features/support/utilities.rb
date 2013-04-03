def sign_in(user)
  visit signin_path
  fill_in "Username", with: user.username
  fill_in "Password", with: user.password
  click_button "Sign in"
  cookies[:remember_token] = user.remember_token
end
