if Rails.env == "development"

  last_api_change = Time.now
  directory = Dir["#{Rails.root}/lib/yoga/*.rb"]

  api_reloader = ActiveSupport::FileUpdateChecker.new(directory) do |reloader|
    times = directory.map{|f| File.mtime(f) }
    files = directory.map{|f| f }

    Rails.logger.debug "! Change detected: reloading following files:"

    files.each_with_index do |s,i|
      if times[i] > last_api_change
        Rails.logger.debug " - #{s}"
        load s
      end
    end

    Rails.application.reload_routes!
    Rails.application.routes_reloader.reload!
    Rails.application.eager_load!
  end

  ActionDispatch::Reloader.to_prepare do
    api_reloader.execute_if_updated
  end
end