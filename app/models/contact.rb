class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    validates :body, presence: true
end
