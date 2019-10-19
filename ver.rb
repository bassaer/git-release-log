require 'json'

result = open("package.json") { |f| JSON.load(f) }

p result['version']
