require "dependenci/version"
require "dependenci/client"

module Dependenci
  # Get dependencies status for ruby project
  #
  # gemfile      - Contents of Gemfile 
  # gemfile_lock - Contents of Gemfile.lock (optional)
  # gemspec      - Contents of *.gemspec file (optional)
  # 
  # Returns a hash with status result
  #
  def self.rubygems(gemfile = nil, gemfile_lock = nil, gemspec = nil)
    opts = {
      gemfile:      gemfile,
      gemfile_lock: gemfile_lock,
      gemspec:      gemspec
    }

    client.rubygems(opts.reject { |_, v| v.nil? })
  end

  # Get dependencies status for node.js project
  # 
  # package_json - Contents of package.json file
  # 
  # Returns a hash with status result
  #
  def self.npm(package_json)
    client.npm(package: package_json)
  end

  def self.client
    Dependenci::Client.new
  end
end
