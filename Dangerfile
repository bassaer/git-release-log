if git.modified_files.include? "package.json" then
    pkg_jsn = git.modified_files.select { |path| path.include? "package.json" }
    if pkg_jsn.length == 1
        pr_ver = open(pkg_jsn[0]) { |f| JSON.load(f) }
        cur_ver = open 'package.json' { |f| JSON.load(f) }
        warn("PR version is #{pr_ver['version']}")
        warn("Current version is #{cur_ver['version']}")
    end
end

warn("package.json was not updated.")
