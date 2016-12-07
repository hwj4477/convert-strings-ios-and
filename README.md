# Convert Strings<br />iOS(Localizable.strings) <-> Android(strings.xml)
- rubygems : http://rubygems.org/gems/convert-strings-ios-and

## Installation

```sh
gem install convert-strings-ios-and
```

## Usage
```ruby
require 'convert-strings-ios-and'

# iOS -> Android
ConvertStrings.ios_to_android("file_path") do |result_path|

  puts "[Convert String iOS to Android] Created file : #{result_path}"
      
end

# Android -> iOS
ConvertStrings.android_to_ios("file_path") do |result_path|

  puts "[Convert String Android to iOS] Created file : #{result_path}"
      
end

```

