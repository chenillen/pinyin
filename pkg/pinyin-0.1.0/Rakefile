require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('pinyin', '0.1.0') do |p|
  p.description    = "Convert Chinese Charaters to Pinyin letters."
  p.url            = "http://github.com/chenillen/uniquify"
  p.author         = "Allen Chan"
  p.email          = "chenillen@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }