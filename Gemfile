source "https://rubygems.org"

gemspec

platforms :ruby do
  gem "sqlite3"
end

platforms :jruby do
  gem "minitest"
  gem "activerecord-jdbcsqlite3-adapter"
end

version = ENV["RAILS_VERSION"] || "4.1"

eval_gemfile File.expand_path("../gemfiles/#{version}.gemfile", __FILE__)
