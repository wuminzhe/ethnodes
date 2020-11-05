source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'faraday', '~> 1.1.0'
gem 'sinatra', '~> 2.1.0'
gem 'sinatra-contrib', '~> 2.1.0'
gem 'sinatra-config-file', '~> 1.0'
gem 'puma', '~> 5.0', '>= 5.0.4'

