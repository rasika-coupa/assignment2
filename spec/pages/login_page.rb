module Demo
  class LoginPage < SitePrism::Page
    set_url 'session/new'

    element :username, 'input[id="user_login"]'
    element :password, 'input[id="user_password"]'
    element :login, 'button[id="login_button"]'

    def login_to_website
      username.set 'coupasupport'
      password.set 'CoupaSupport1'
      login.click
    end

  end
end