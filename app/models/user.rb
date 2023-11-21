class User < ApplicationRecord
    validates :name, presence: true,
                    uniqueness: true
    validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
    validates :birthday, presence: true
    validates :logged_in, inclusion: { in: [true] }
end
