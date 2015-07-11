class Card < ActiveRecord::Base
end

class Pgdb < ActiveRecord::Base

  self.abstract_class = true
  self.table_name = 'psa'

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

  def self.getCardInfo(card_name)
    get = connection.query("SELECT card, brand, grade, amount
                            FROM psa
                            WHERE card LIKE '%' || #{connection.quote(card_name)} || '%' AND amount > 0
                            ORDER BY card ASC, brand ASC, grade ASC")
    get
  end
end

