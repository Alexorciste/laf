class Privatecat < ApplicationRecord
    has_many :private_assigns
    belongs_to :user
    has_many_attached :images
    
end

class CurrentContext
    attr_reader :user, :userauth
  
    def initialize(user, userauth)
      @user = user
      @userauth = userauth
    end
  end
