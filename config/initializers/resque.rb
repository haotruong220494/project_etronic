require "resque/job_with_status"
Resque.logger = ActiveSupport::Logger.new(Rails.root.join("log", "resque.log"))
Resque.redis = ENV["REDIS_URL"]
