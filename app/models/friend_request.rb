class FriendRequest < ApplicationRecord
  before_create :set_status
  belongs_to :user

  private

    # Set default status as Pending before create a request
    def set_status
      self.status = 'Pending'
    end
end
