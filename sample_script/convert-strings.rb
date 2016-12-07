#!/usr/bin/env ruby
#
# convert_strings.rb
#
# by hwj4477@gmail.com
#

# gem install convert-strings-ios-and
require 'convert-strings-ios-and'

def print_usage

  puts "* usage: #{__FILE__} [FilePath]"

end

if __FILE__ ==  $0

  if ARGV.count == 1

    ConvertStrings.ios_to_android("Localizable.strings") do |result_path|

      puts "[Convert String iOS to Android] Created file : #{result_path}"
    
    end

  else

    print_usage

  end

end
