class Card < ActiveRecord::Base
end

class Pgdb < ActiveRecord::Base

  self.abstract_class = true

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

class Psa_pop < Pgdb
  self.table_name = 'psa_pop_view'
end

class Agg_backs < Pgdb
  self.table_name = 'agg_backs'
end
