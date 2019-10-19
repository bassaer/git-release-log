if git.modified_files.include? "package.json" then
    pkg_jsn = git.modified_files.select { |path| path.include? "package.json" }
    pr_ver = JSON.parse(pkg_jsn)
    warn("PR version is #{pr_ver['version']}")
else
    warn("package.json was not updated.")
end


