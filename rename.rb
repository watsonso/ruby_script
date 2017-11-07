require 'fileutils'

Dir.glob("*.html") do |filename|
	newname = filename.gsub(/^(\d+)/, sprintf("%03d", $1.to_i))
	FileUtils.mv(filename, newname)
end
