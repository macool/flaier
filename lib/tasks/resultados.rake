namespace :resultados do
  task import: :environment do
    Resultado::ImportFromCsv.new(ENV["FILE"]).run
  end
end
