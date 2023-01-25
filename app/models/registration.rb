class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user
  
  HOW_HEARD_OPTIONS=[
    'News letter',
    'Blog post',
    'Twitter',
    'web search',
    'other'
  ]
  validates :how_heard,inclusion: {in: HOW_HEARD_OPTIONS}
end
