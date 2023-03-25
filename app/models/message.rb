class Message < ApplicationRecord
  belongs_to :sender, class_name: "Profile"
  belongs_to :recipient, class_name: "Profile"
end
