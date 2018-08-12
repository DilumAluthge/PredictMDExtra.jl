##### Beginning of file

import Pkg

"""
"""
function version()::VersionNumber
    project_toml_filename = pkg_dir("Project.toml")
    project_toml_contents = read(project_toml_filename, String)
    project_toml_parsed = Pkg.TOML.parse(project_toml_contents)
    version_string = project_toml_parsed["version"]
    version_number_object = VersionNumber(version_string)
    return version_number_object
end

##### End of file
