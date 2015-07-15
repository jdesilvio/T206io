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
    get = connection.query("SELECT psa.card, backs.full_back, psa.grade, psa.amount
                            FROM psa
                            LEFT OUTER JOIN backs
                            ON psa.brand = backs.psa_back
                            WHERE psa.card LIKE UPPER('%' || #{connection.quote(card_name)} || '%') AND psa.amount > 0
                            ORDER BY psa.card ASC, backs.full_back ASC, psa.grade ASC")
    get
  end
end

