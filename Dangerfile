if git.modified_files.include? "package.json" then
    pkg_jsn = git.modified_files.select { |path| path.include? "package.json" }
    pr_ver = JSON.parse(pkg_jsn)[version]
    warn("PR version is #{pr_ver}")
else
    warn("package.json was not updated.")
end


