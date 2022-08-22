module LoginsHelper
    def log_in(user)
        login[:user_id]=user.id
    end
    def current_user
        if login[:user_id]
            @current_user||=User.find_by(id:login[user_id])
        end
    end
    def logged_in
        !current_user.nil?

    end
    def log_out
        login.delete(:user_id)
        @current_user = nil
    end
end
