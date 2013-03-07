desc "IMPORT WORD OF THE DAY"
task :import_words => :environment do
  require 'csv'

  CSV.foreach('lib/tasks/words.csv') do |row|
    puts row[0]
    Word.create!({
      :date => Date.parse(row[0]),
      :english_word => row[1],
      :french_word => row[2]
    })
  end
end