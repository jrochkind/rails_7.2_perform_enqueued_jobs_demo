require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "the truth" do
    $performed = false
    perform_enqueued_jobs do
      TestprintJob.perform_later
    end
    assert $performed
  end
end
