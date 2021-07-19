# frozen_string_literal: true

class Shared::TopNavComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end
end
