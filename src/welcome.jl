##### Beginning of file

function print_welcome_message()::Nothing
    predictmdextra_version::VersionNumber = version()
    predictmdextra_pkgdir::String = pkg_dir()
    @info(string("This is PredictMDExtra, version ",predictmdextra_version,),)
    @info(string("For help, please visit https://www.predictmd.net",),)
    @debug(string("PredictMDExtra package directory: ",predictmdextra_pkgdir,),)
    return nothing
end

##### End of file
