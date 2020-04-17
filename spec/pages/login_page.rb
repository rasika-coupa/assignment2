module Demo
  class LoginPage < SitePrism::Page
    element :username, 'input[id="user_login"]'
    element :password, 'input[id="user_password"]'
    element :login, 'button[id="login_button"]'
  end
end