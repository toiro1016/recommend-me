class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence: true do
          validates :nickname
          # with_options format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ } do
          #   validates :first_name
          #   validates :last_name
          # end
        # VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
        # validates :password, format: { with: VALID_PASSWORD_REGEX }
        end
        
        validates :self_introduction, length: { maximum: 500 }

        mount_uploader :profile_image, ProfileImageUploader

        def update_without_current_password(params, *options)

          if params[:password].blank? && params[:password_confirmation].blank?
            params.delete(:password)
            params.delete(:password_confirmation)
          end
      
          result = update_attributes(params, *options)
          clean_up_passwords
          result
        end
      end
