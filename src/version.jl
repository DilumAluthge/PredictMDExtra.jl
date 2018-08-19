##### Beginning of file

import Pkg

struct _TomlFile
    filename::String
    function _TomlFile(path::String)::_TomlFile
        path = abspath(strip(path))
        if isfile(path)
            result = new(path)
            return result
        else
            error("File does not exist")
        end
    end
end

function _parse_toml_file(x::_TomlFile)
    toml_file_filename = x.filename
    toml_file_text = read(toml_file_filename, String)
    toml_file_parsed = Pkg.TOML.parse(toml_file_text)
    return toml_file_parsed
end

function _version(x::_TomlFile)::VersionNumber
    toml_file_parsed = _parse_toml_file(x)
    version_string = toml_file_parsed["version"]
    version_number_object = VersionNumber(version_string)
    return version_number_object
end

"""
    version()::VersionNumber

Return the version number of PredictMDExtra.
"""
function version()::VersionNumber
    predictmdextra_toml_file = _TomlFile(package_directory("Project.toml"))
    result = _version(predictmdextra_toml_file)
    return result
end

"""
    version(m::Module)::VersionNumber

If module `m` is part of a Julia package, returns the version number of
that package.

If module `m` is not part of a Julia package, throws an error.
"""
function version(m::Module)::VersionNumber
    m_package_directory = package_directory(m)
    m_toml_file = _TomlFile(joinpath(m_package_directory, "Project.toml"))
    result = _version(m_toml_file)
    return result
end

##### End of file
