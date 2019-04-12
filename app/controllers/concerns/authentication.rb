module Authentication
    extend ActiveSupport::Concern

    def authenticated_user!
        if !user_signed_in?
            redirect_to new_user_session_path
        end
    end
end