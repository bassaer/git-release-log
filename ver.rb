require 'json'

result = open("package.json") do |f|
    JSON.load(f)
end

p result['version']
