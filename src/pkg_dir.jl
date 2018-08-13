##### Beginning of file

"""
"""
function pkg_dir end

function pkg_dir()::String
    pkg_dir_filename = @__FILE__ # PredictMDExtra/src/pkg_dir.jl
    src_directory = dirname(pkg_dir_filename) # PredictMDExtra/src
    predictmdextra_root_directory = dirname(src_directory) # PredictMDExtra
    return predictmdextra_root_directory
end

function pkg_dir(parts...)::String
    predictmdextra_root_directory = pkg_dir()
    result = joinpath(predictmdextra_root_directory, parts...)
    return result
end

##### End of file
