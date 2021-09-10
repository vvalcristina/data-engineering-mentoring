# Crawler

Setup:

1- docker-compose up -d on folder /ruby
2- docker exec -it ruby_crawler_1 /bin/bash
3- gem install bddfire
4- bddfire fire_cucumber

Usage:

1- docker-compose up -d on folder /ruby
2- docker exec -it ruby_crawler_1 /bin/bash
3- cd cucumber
4- bundle install
4- bundle exec cucumber features/file.feature
