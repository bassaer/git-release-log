if git.modified_files.include? "package.json" then
    pkg_jsn = git.modified_files.select { |path| path.include? "package.json" }
    pr_ver = open(pkg_jsn[0]) { |f| JSON.load(f) }
    warn("PR version is #{pr_ver['version']}")
    diff = git.diff_for_file("package.json")
    if diff && diff.patch =~ "version"
        warn 'diff \n#{diff}'
    end
end

warn("package.json was not updated.")
