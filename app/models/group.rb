class Group < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :group_entities, dependent: :destroy
    has_many :entities, through: :group_entities
  
    # validations
    validates :name, presence: true, allow_blank: false
    validates :icon, presence: true, allow_blank: false
  end