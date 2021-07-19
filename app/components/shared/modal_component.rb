# frozen_string_literal: true

class Shared::ModalComponent < ViewComponent::Base
  renders_one :header
  renders_one :body
  renders_one :footer, Shared::ModalFooterComponent

  def initialize; end
end
