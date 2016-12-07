# Convert Strings iOS <-> Android
- rubygems : http://rubygems.org/gems/convert-strings-ios-and

## Installation

```sh
gem install convert-strings-ios-and
```

## Usage
```ruby
require 'convert-strings-ios-and'

ConvertStrings.ios_to_android("file_path") do |result_path|

  puts "[Convert String iOS to Android] Created file : #{result_path}"
      
end

```

