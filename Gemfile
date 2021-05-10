source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'sassc-rails'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'

gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.0'
gem 'bootsnap', '~> 1.1', '>= 1.1.7'
gem 'listen', '~> 3.1.5'
gem 'devise'
gem 'devise-i18n'
gem 'uglifier'
gem 'jquery-rails'
gem 'rails-i18n', '~> 6.0'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'mailjet'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'letter_opener'
  gem 'dotenv-rails'
end
