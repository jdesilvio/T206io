class Card < ActiveRecord::Base
end

class Pgdb < ActiveRecord::Base

  self.abstract_class = true
  self.table_name = 'psa'

  establish_connection :pg_development

  def self.getCardInfo(card_name)
    get = connection.query("SELECT card, brand, grade, amount
                            FROM psa
                            WHERE card=#{connection.quote(card_name)} AND amount > 0
                            ORDER BY brand ASC, grade ASC")
    get
  end
end
