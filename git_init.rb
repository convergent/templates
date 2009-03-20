# git_init.rb

# create a git ignore file
file ".gitignore", 
%q{.DS_Store
log/*.log
tmp/**/*
vendor/rails
config/database.yml
db/*.sqlite3
}

# create void .gitignore files to track empty directories
`touch log/.gitignore tmp/.gitignore vendor/.gitignore`

# save example for database.yml
file 'config/database_example.yml',
%q{:common: &common
  adapter: sqlite3
  pool: 5
  timeout: 5000

development:
  <<: *common
  database: db/development.sqlite3

test:
  <<: *common
  database: db/test.sqlite3

production:
  <<: *common
  database: db/production.sqlite3
}

# repo init and initial import
git :init
git :add => ".", :commit => "-a -m 'initial import'"


