repo = URI.parse('https://raw.githubusercontent.com/bassaer/git-release-log/master/package.json')

if git.modified_files.include? "package.json" then
    pkg_jsn = git.modified_files.select { |path| path.include? "package.json" }
    master = Net::HTTP.get(repo)
    cur_ver = JSON.load(master)['version']
    new_ver = open(pkg_jsn[0]) { |f| JSON.load(f)['version'] }
    markdown "```#{cur_ver}``` -> ```#{new_ver}```"
end

warn("package.json was not updated.")
