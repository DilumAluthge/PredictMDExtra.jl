##### Beginning of file

function _package_list()::Vector{String}
    package_list_raw::Vector{String} = String[
        "Atom",
        "AxisArrays",
        "CSV",
        "CSVFiles",
        "CUDAapi",
        "Cassette",
        "CategoricalArrays",
        "ClassImbalance",
        "Combinatorics",
        "DataDeps",
        "DataFrames",
        "DataFramesMeta",
        "DecisionTree",
        "DefaultApplication",
        "Documenter",
        "FileIO",
        "Flux",
        "GLM",
        "GPUArrays",
        "HTTP",
        "IterableTables",
        "IndirectArrays",
        "JLD2",
        "Knet",
        "LIBSVM",
        "Literate",
        "MLBase",
        "MbedTLS",
        "MemPool",
        "Metalhead",
        "Mux",
        "NamedArrays",
        "NumericalIntegration",
        "OnlineStats",
        "PGFPlotsX",
        "PooledArrays",
        "ProgressMeter",
        "Query",
        "RData",
        "RDatasets",
        "ROCAnalysis",
        "Requires",
        "Revise",
        "SplitApplyCombine",
        "Tables",
        "TextParse",
        "UnicodePlots",
        "ValueHistories",
        "WebSockets",
        ]
    package_list::Vector{String} = sort(unique(strip.(package_list_raw)))
    return package_list
end

function _stdlib_list()::Vector{String}
    stdlib_list_raw::Vector{String} = String[
        "Pkg",
        "Test",
        ]
    stdlib_list::Vector{String} = sort(unique(strip.(package_list_raw)))
    return stdlib_list
end

##### End of file
