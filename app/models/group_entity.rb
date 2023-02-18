class GroupEntity < ApplicationRecord
 
  belongs_to :entity, foreign_key: 'entity_id', class_name: 'Entity'
  belongs_to :group, foreign_key: 'group_id', class_name: 'Group'

  validates :group, presence: true
  validates :entity, presence: true
end
