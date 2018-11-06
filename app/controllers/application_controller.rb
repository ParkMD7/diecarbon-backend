class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    # { user_id: 2 }
    # issue a token, store payload in token
    JWT.encode(payload, "my_jwt_s3cr3t")
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      # header: { 'Authorization': 'Bearer <token>' }
      token = auth_header.split(' ')[1]
      begin
        # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
        JWT.decode(token, "my_jwt_s3cr3t", true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please Log In' }, status: :unauthorized unless logged_in?
  end

end
