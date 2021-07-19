# frozen_string_literal: true

class Shared::FlashMessageComponent < ViewComponent::Base
  delegate :flash_class, to: :helpers

  def initialize(level:)
    @level = level
  end

  def set_class
    flash_class(@level)
  end
end
