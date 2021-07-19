class NightlyJob < ApplicationJob
  queue_as :default

  def perform
    # Nightly cleanup processes
  end
end
