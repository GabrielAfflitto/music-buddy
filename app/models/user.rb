class User < ApplicationRecord
  has_many :favorites
  def self.from_omniauth(auth)
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
