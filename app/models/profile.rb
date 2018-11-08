class Profile < ApplicationRecord
    validates :firstName, presence: true, length: {minimum: 3}
    validates :lastName, presence: true, length: {minimum: 2}
    validates :classLevel, presence: true, length: {minimum: 6}
    validates :major, presence: true, length: {minimum: 10}
    validates :course1, presence: true, length: {minimum: 4}
    validates :course2, presence: true, length: {minimum: 4}
    validates :course3, presence: true, length: {minimum: 4}
    validates :course4, presence: true, length: {minimum: 4}
    validates :course5, presence: true, length: {minimum: 4}
end
