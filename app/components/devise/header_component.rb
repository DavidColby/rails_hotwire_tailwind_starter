# frozen_string_literal: true

class Devise::HeaderComponent < ViewComponent::Base
  renders_one :intro
  renders_one :lead_in
  renders_one :action_label

  def initialize(path: nil)
    @path = path
  end
end
