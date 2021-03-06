class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and 
  geocoded_by :location
  
  after_validation :geocode
  
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:     auth.extra.raw_info.name,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    auth.info.email,
                         avatar:   auth.info.image,
                         password: Devise.friendly_token[0,20]
                        )
    end
    user
  end
 
  
 
  def self.create_unique_string
    SecureRandom.uuid
  end
 
  def self.create_unique_email
    User.create_unique_string + "@example.com"
  end
end
