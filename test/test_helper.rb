class ActiveSupport::TestCase
# ...
# Add more helper methods to be used by all tests here...
def login_as(user)
session[:user_id] = users(user).id
end
def logout
session.delete :user_id
end
def setup
login_as :one if defined? session
end
end