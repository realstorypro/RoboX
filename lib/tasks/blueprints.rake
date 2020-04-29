require 'json'

namespace :blueprints do
  desc "Updating blueprints"
  task update: :environment do
    Dir.foreach (Rails.root.join("blueprints")) do |blueprint|
      next if blueprint == "." || blueprint == ".."

      # Load Blueprint Settings
      blueprint_settings = YAML.load(File.read(File.expand_path(Rails.root.join("blueprints/#{blueprint}"), __FILE__)))

      # Update Blueprint Record
      blueprint_record = Blueprint.find_or_create_by name: blueprint.gsub(".yml","")
      blueprint_record.settings = JSON.parse(blueprint_settings.to_json)
      blueprint_record.save
    end
  end
end
