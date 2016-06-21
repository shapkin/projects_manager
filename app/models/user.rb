class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :own_projects, class_name: 'Project', foreign_key: :user_id, dependent: :destroy
  has_many :own_issues, class_name: 'Issue', foreign_key: :user_id, dependent: :destroy

  has_many :user_projects, dependent: :destroy
  has_many :projects, through: :user_projects

  def name
    [first_name, last_name].reject(&:blank?).join(' ')
  end
end
