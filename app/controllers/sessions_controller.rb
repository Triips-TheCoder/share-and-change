class SessionsController < ApplicationController
    def destroy
      sign_out(current_admin)
      redirect_to root_path
    end
  end
  