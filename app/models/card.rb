class Card < ActiveRecord::Base
end

class Pgdb < ActiveRecord::Base

  self.abstract_class = true
  self.table_name = 'psa_pop_view'

  if Rails.env.production?
    establish_connection(
      adapter: ENV["PG_ADAPTER"],
      database: ENV["PG_DB"],
      username: ENV["PG_USER"],
      password: ENV["PG_PW"],
      host: ENV["PG_HOST"]
    )
  end

  if Rails.env.development?
    establish_connection :pg_development
  end

end

