require 'ruby_apk'

apk = Android::Apk.new('./sampleAPKs/proguardVersion/app-release-unaligned.apk') # set apk file path
manifest = apk.manifest
  puts manifest.to_xml

apk.each_file do |name, data|
  puts "#{name}: #{data.size}bytes" # puts file name and data size
end
