require 'json'

result = open("package.json") { |f| JSON.load(f) }

p "version is #{result['version']} !!"
