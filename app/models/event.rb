class Event < ApplicationRecord
  belongs_to :art
  belongs_to :user

  enum event_type: ["Meeting", "Research", "Buy", "Discussion"]
end
