require 'ruby_apk'

apk = Android::Apk.new('10.apk') # set apk file path

apk.each_file do |name, data|
  puts "#{name}: #{data.size}bytes" # puts file name and data size

manifest = apk.manifest
  puts manifest.to_xml
end
