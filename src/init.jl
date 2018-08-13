##### Beginning of file

function __init__()::Nothing
    @info(string("This is PredictMDExtra, version ", version()))
    @debug(string("PredictMDExtra debugging messages are enabled"))
    @info(string("For help, please visit https://www.predictmd.net"))
    @info(string("PredictMDExtra package directory: \"", pkg_dir(), "\""))
    return nothing
end

##### End of file
