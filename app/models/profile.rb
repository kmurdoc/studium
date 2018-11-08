class Profile < ApplicationRecord
    validates :firstName, presence: true, length: {minimum: 3}
end
