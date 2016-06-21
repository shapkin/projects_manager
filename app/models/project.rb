class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  has_many :user_projects, dependent: :destroy
  has_many :members, through: :user_projects, class_name: 'User', foreign_key: :user_id
end
