class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :invitable,
         :omniauthable#, :omniauth_providers => [:facebook]

  has_many :invitations, :class_name => self.to_s, :as => :invited_by


  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nUser > SELF FIND")

    user = User.where(:omni_provider => auth.provider, :omni_uid => auth.uid).first
    unless user
      user = User.new(email:auth.info.email,
                           password:Devise.friendly_token[0,20],
                           omni_provider:auth.provider,
                           omni_uid:auth.uid,
                           omni_user:auth.extra.raw_info.username,
                           oauth_token:auth.credentials.token,
                           oauth_expires_at:Time.at(auth.credentials.expires_at)
                           )
      user.skip_confirmation!
      user.save!
      Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \n" + user.to_s)
    end
    user
  end

  def self.new_with_session(params, session)
    Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \nUser > SELF NEW")

    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        Rails.logger.info("\n \n~~~~~~~~~~~~~~~~~~~~~ \n" + data.to_s)
      end
    end
  end

end
