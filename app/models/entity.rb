class Entity < ApplicationRecord
    belongs_to :author, class_name: 'User'
    has_many :group_entities, dependent: :destroy
    has_many :groups, through: :group_entities
  
    # validations
    validates :name, presence: true, allow_blank: false
    validates :amount, presence: true, allow_blank: false,
                       numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  end