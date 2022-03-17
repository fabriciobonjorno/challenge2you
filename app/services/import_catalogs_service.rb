class ImportCatalogsService
  require 'csv'
 
  def initialize(file)
    @file = file
  end

  def call
    import_from_csv
  end

  private
  
  def import_from_csv
    not_imported = []
    CSV.foreach(@file.path, headers: true) do |row|
      row = row.to_hash
      begin
        import_catalog = Catalog.find_or_create_by!(
          show_id: row['show_id'],
          genre: row['type'],
          title: row['title'],
          director: row['director'],
          cast: row['cast'],
          country: row['country'],
          date_added: row['date_added'].to_date,
          release_year: row['release_year'].to_i,
          rating: row['rating'],
          duration: row['duration'],
          listed_in: row['listed_in'],
          description: row['description']
        )
      rescue StandardError => e
        not_imported << "#{row['title']} not imported, reason: " + e.to_s
      end

      path = Rails.root + 'log/not_imported.log'
      FileUtils.rm_rf(path) if File.exist?(path)
      File.open(path, 'wb') do |f|
        not_imported.each do |row|
          f.write(row)
          f.write "\r\n"
        end
        f.close
      end
    end
  end
end