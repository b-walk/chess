# Requires all files within ./chess
Dir["./chess/*.rb"].each { |file| require file }

# Loads all code required by Chess module
module Chess; end
