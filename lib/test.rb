require './convert-strings-ios-and.rb'

#ConvertStrings.ios_to_android("./Localizable.strings") do |result_path|
#
#  puts "[Convert String iOS to Android] Created file : #{result_path}"
#
#end

ConvertStrings.android_to_ios("./strings.xml") do |result_path|

  puts "[Convert String Android to iOS] Created file : #{result_path}"

end
