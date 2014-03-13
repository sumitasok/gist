# this is how you do SQL `or`
# http://stackoverflow.com/questions/17192829/does-rails-4-have-support-for-or-queries
Article.where(title: ['Rails 3', 'Rails 4'])

Article.where("articles.title = 'Rails 3' OR articles.title = 'Rails 4'")

# Squeel - https://github.com/activerecord-hackery/squeel
Article.where{(title == 'Rails 3') | (title == 'Rails 4')}

# https://github.com/oelmekki/activerecord_any_of



construct_finder_sql(options)
# http://stackoverflow.com/questions/1344232/how-can-i-see-the-sql-that-will-be-generated-by-a-given-activerecord-query-in-ru
