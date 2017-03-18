class MP3Importer

	attr_reader :path

	def initialize(file_path)
		@path = file_path
	end

	def files
		Dir.entries(path).reject do |file|
			file.start_with?(".")
		end
	end

	def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end

end