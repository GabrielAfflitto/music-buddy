class User < ApplicationRecord
  def self.from_omniauth(auth)
    # where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
    #   user.provider = auth.provider
    #   user.uid = auth.uid
    #   user.name = auth.info.name
    #   user.oauth_token = auth.credentials.token
    #   user.token_expiration = Time.at(auth.credentials.expires_at)
    #   user.save!
    # binding.pry
    user = User.find_by(uid: auth[:uid]) || User.new
    user.attributes = {provider: auth[:provider],
                       uid: auth[:uid],
                       name: auth[:info][:name],
                       oauth_token: auth[:credentials][:token],
                       token_expiration: auth[:credentials][:token]
                       }
    user.save!
    user
  end
end
