class MainController < ApplicationController
    def index
        if sessions [:user_id]
            @user=User.find_by(id:session{:user_id})
        end
    end
end
