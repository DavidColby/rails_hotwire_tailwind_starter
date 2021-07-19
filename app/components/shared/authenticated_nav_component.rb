# frozen_string_literal: true

class Shared::AuthenticatedNavComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end
end
