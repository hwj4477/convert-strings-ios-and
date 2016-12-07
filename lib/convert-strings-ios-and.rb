#
# Convert Strings iOS <-> Android
# 
# last update 2016.12.07
#
# hwj4477@gmail.com
#

require 'net/http'
require 'json'

class ConvertStrings

  def self.ios_to_android(stringsPath)

    resultFile = File.open('strings.xml', 'wb')
    
    File.open(stringsPath) do |file|

      resultFile.puts "<?xml version=\"1.0\" encoding=\"utf-8\"?>"
      resultFile.puts "\n"

      while line = file.gets

        # puts strings
        if line =~ /"/ && line.split("=").count == 2

          key = line.split("=").first.strip
          value = line.split("=").last.strip.gsub(/"/, "").gsub(/;/, "")

          resultFile.puts "<string name=#{key}>#{value}</string>"

        end

        # puts comment
        if line =~ /\/\//

          comment = line.gsub(/\/\//, "").strip

          resultFile.puts "<!-- #{comment} -->"

        end

      end

    end

    # result
    yield File.absolute_path(resultFile.path)

  end

  def self.android_to_ios(stringsPath)

    resultFile = File.open('Localizable.strings', 'wb')
    
    File.open(stringsPath) do |file|

      while line = file.gets

        # puts strings
        if line =~ /<string name="/

          key_value = line.strip.gsub(/<string name="/, "").gsub(/<\/string>/, "").split("\">")

          if key_value.count == 2

            key = key_value.first
            value = key_value.last

          resultFile.puts "\"#{key}\" = \"#{value}\";"

          end

        end

        # puts comment
        if line =~ /<!--/

          comment = line.gsub(/<!--/, "//").gsub(/-->/, "").strip

          resultFile.puts comment

        end

      end

    end

    # result
    yield File.absolute_path(resultFile.path)

  end

end
