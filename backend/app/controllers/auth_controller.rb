class AuthController < ApplicationController
  def auth_with_access_token
    user = User.find_by_access_token(params[:accessToken])
    if user
      render json: with_access_token(user)
    else
      render json: {error: "not-found"}, status: :not_found
    end
  end

  def auth_with_provider
    user = User.find_or_create_by_provider(params[:provider], params['oauthAccessToken'])
    if user
      render json: with_access_token(user)
    else
      render json: {error: "not-found"}, status: :not_found
    end
  end


  private

    def with_access_token(user)
      {}.merge(user.to_h).merge({accessToken: JsonWebToken.encode({id: user.id})})
    end
end
