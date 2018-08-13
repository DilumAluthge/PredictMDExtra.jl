import PredictMDExtra
import Test

Test.@testset "Unit tests              " begin
    Test.@test( Base.VERSION >= VersionNumber("1.0") )

    Test.@test( PredictMDExtra.version() >= VersionNumber(0) )

    Test.@test( isdir(PredictMDExtra.pkg_dir()) )
    Test.@test( isdir(PredictMDExtra.pkg_dir("ci")) )
    Test.@test( isdir(PredictMDExtra.pkg_dir("ci", "travis")) )
end

Test.@testset "Import required packages" begin
    import Atom
    Test.@test( isa(Atom, Module) )

    # import BuildExecutable
    # Test.@test( isa(BuildExecutable, Module) )

    # import CSVFiles
    # Test.@test( isa(CSVFiles, Module) )

    import CUDAapi
    Test.@test( isa(CUDAapi, Module) )

    import ClassImbalance
    Test.@test( isa(ClassImbalance, Module) )

    import Combinatorics
    Test.@test( isa(Combinatorics, Module) )

    import Compat
    Test.@test( isa(Compat, Module) )

    import DataDeps
    Test.@test( isa(DataDeps, Module) )

    import DataFrames
    Test.@test( isa(DataFrames, Module) )

    # import DecisionTree
    # Test.@test( isa(DecisionTree, Module) )

    import Documenter
    Test.@test( isa(Documenter, Module) )

    # import Flux
    # Test.@test( isa(Flux, Module) )

    # import FluxJS
    # Test.@test( isa(FluxJS, Module) )

    # import GLM
    # Test.@test( isa(GLM, Module) )

    # import GPUArrays
    # Test.@test( isa(GPUArrays, Module) )

    import HTTP
    Test.@test( isa(HTTP, Module) )

    # import HTTPClient
    # Test.@test( isa(HTTPClient, Module) )

    # import HttpServer
    # Test.@test( isa(HttpServer, Module) )

    import JLD2
    Test.@test( isa(JLD2, Module) )

    # import JuliaDB
    # Test.@test( isa(JuliaDB, Module) )

    # import Knet
    # Test.@test( isa(Knet, Module) )

    # import LIBSVM
    # Test.@test( isa(LIBSVM, Module) )

    import Literate
    Test.@test( isa(Literate, Module) )

    # import MLBase
    # Test.@test( isa(MLBase, Module) )

    import MNIST
    Test.@test( isa(MNIST, Module) )

    import MbedTLS
    Test.@test( isa(MbedTLS, Module) )

    # import Merlin
    # Test.@test( isa(Merlin, Module) )

    # import Metalhead
    # Test.@test( isa(Metalhead, Module) )

    # import Mux
    # Test.@test( isa(Mux, Module) )

    # import NumericalIntegration
    # Test.@test( isa(NumericalIntegration, Module) )

    # import PGFPlots
    # Test.@test( isa(PGFPlots, Module) )

    import PGFPlotsX
    Test.@test( isa(PGFPlotsX, Module) )

    # import PackageCompiler
    # Test.@test( isa(PackageCompiler, Module) )

    import Pkg
    Test.@test( isa(Pkg, Module) )

    # import ProgressMeter
    # Test.@test( isa(ProgressMeter, Module) )

    # import Query
    # Test.@test( isa(Query, Module) )

    # import RData
    # Test.@test( isa(RData, Module) )

    # import RDatasets
    # Test.@test( isa(RDatasets, Module) )

    # import ROCAnalysis
    # Test.@test( isa(ROCAnalysis, Module) )

    import Requires
    Test.@test( isa(Requires, Module) )

    import Revise
    Test.@test( isa(Revise, Module) )

    import Test
    Test.@test( isa(Test, Module) )

    # import TimeSeries
    # Test.@test( isa(TimeSeries, Module) )

    import UnicodePlots
    Test.@test( isa(UnicodePlots, Module) )

    import ValueHistories
    Test.@test( isa(ValueHistories, Module) )

    # import WebSockets
    # Test.@test( isa(WebSockets, Module) )
end
