##### Beginning of file

function __init__()::Nothing
    println(string("This is PredictMDExtra, version ", version()))
    @debug(string("PredictMDExtra package directory: \"", pkg_dir(), "\""))
    @info(string("For help, please visit https://www.predictmd.net"))
    return nothing
end

##### End of file
