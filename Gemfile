source 'https://rubygems.org'

gem 'rails', '5.0.2'

gem 'pg'

gem 'babel-transpiler', github: 'babel/ruby-babel-transpiler'

gem 'sprockets-rails'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'd3-rails'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'devise'
gem 'devise_security_extension', github: 'phatworx/devise_security_extension'
gem 'pundit'
gem 'recaptcha', require: 'recaptcha/rails'

gem 'simple_form'
gem 'haml-rails'
gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
gem 'render_anywhere', :require => false
gem 'auto_strip_attributes'
gem 'local_time'

gem 'carrierwave'
gem 'fog'
gem 'aws-sdk'
gem 'rubyXL'

gem 'axlsx'
gem 'axlsx_rails'

gem 'delayed_job_active_record'
gem 'delayed_job_web'
gem 'scheduled_job'

gem 'bootstrap-sass'
gem 'font-awesome-sass'

gem 'faker'

gem 'activeadmin', github: 'activeadmin'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'better_errors'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'dotenv-rails'
end

group :test do
  # Customizable MiniTest output formats
  gem 'minitest-reporters', require: false

  # Code coverage
  gem 'simplecov', require: false

  # make after_commit callbacks fire in tests
  gem 'test_after_commit'
end