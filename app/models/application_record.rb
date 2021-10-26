class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class CurrentContext
  attr_reader :user, :userauth

  def initialize(user, userauth)
    @user = user
    @userauth = userauth
  end
end
