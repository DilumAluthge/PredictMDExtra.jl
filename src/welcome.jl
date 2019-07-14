function _print_welcome_message(a::AbstractDict = ENV)::Nothing
    predictmdextra_version::VersionNumber = version()
    predictmdextra_pkgdir::String = package_directory()
    if !_suppress_welcome_message(a)
        @info(string("This is PredictMDExtra, version ",predictmdextra_version,),)
        @info(string("For help, please visit https://predictmd.net",),)
        @debug(string("PredictMDExtra package directory: ",predictmdextra_pkgdir,),)
    end
    return nothing
end

function _suppress_welcome_message(a::AbstractDict = ENV)::Bool
    return get(a, "SUPPRESS_PREDICTMDEXTRA_WELCOME_MESSAGE", "false") == "true"
end
