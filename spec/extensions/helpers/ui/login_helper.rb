require 'pages/login_page'
module LoginHelper
  def login_to_website username , password
    @loginpage = Demo::LoginPage.new
    @loginpage.username.set username
    @loginpage.password.set password
    @loginpage.login.click
  end
end