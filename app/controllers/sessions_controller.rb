class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]
  
    def create

    
      user = User.find_by(email: params[:email])
  
      if user&.authenticate(params[:password])
        token = JWT.encode({ user_id: user.id, exp: 24.hours.from_now.to_i }, Rails.application.secrets.secret_key_base, 'HS256')
        render json: { token: token }, status: :created
      else
        render json: { error: 'Invalid credentials' }, status: :unauthorized
      end
    end
  end
  