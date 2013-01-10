task :default do
  DIR = File.dirname(__FILE__)

  ignore = [
    File.basename(__FILE__),
    'README.md'
  ]

  Dir.glob(File.join(DIR, '*')).each do |file|
    file_name = File.basename(file)
    unless ignore.include?(file_name)
      ln_s file, File.join(File.expand_path('~'), '.' + file_name)
    end
  end
end
