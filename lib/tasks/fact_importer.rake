desc "IMPORT WORD OF THE DAY"
task :import_facts => :environment do
  require 'csv'

  CSV.foreach('lib/tasks/facts.csv') do |row|
    Fact.create!({
                     :english_fact => row[0],
                     :french_fact => row[1],
                     :sources => row[2]
                 })
  end
end