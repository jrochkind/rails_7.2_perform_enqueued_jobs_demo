class TestprintJob < ApplicationJob
  queue_as :default

  def perform(*args)
    $performed = true
    Rails.logger.warn "WE-PRINTED-IT"
  end
end
