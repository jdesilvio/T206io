class Card < ActiveRecord::Base
end

class Pgdb < ActiveRecord::Base

  self.abstract_class = true
  self.table_name = 'testtable'

  establish_connection :pg_development

  def self.getCardInfo(card_name)
    get = connection.query("SELECT * FROM testtable WHERE test=#{connection.quote(card_name)}")
    get
  end
end
