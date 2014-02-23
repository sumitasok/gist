ActiveRecord::Base.connection.current_database
# to get the current db name
# http://apidock.com/rails/ActiveRecord/Base/connection


# You just have to replace execute by delete, and it will return the number of rows affected.
# http://stackoverflow.com/questions/8850119/mysql-to-rails-sql-query
ActiveRecord::Base.connection.delete('DELETE FROM `cd_artist`
LEFT JOIN `cdpedia` ON cd_artist.id = cdpedia.`artistId`
WHERE artistId IS NULL;')
