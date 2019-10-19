import {message, wan, danger} from "danger"


if (danger.git.modified_files.includes("package.json") {
    const diff = git.diff_for_file("package.json")
    if (diff && !diff.pach.contains("version")) {
        message(`new version is \n ${diff}`)
    }
}

warn("package.json was not updated.")
