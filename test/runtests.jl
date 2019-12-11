import Test

Test.@testset "PredictMDExtra.jl" begin
    import InteractiveUtils # stdlib
    import Pkg # stdlib
    import Test # stdlib

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)

    @debug(string("Attempting to import PredictMDExtra...",))
    import PredictMDExtra
    @debug(string("Successfully imported PredictMDExtra.",))
    @debug(string("PredictMDExtra version: "),PredictMDExtra.version(),)
    @debug(string("PredictMDExtra package directory: "),PredictMDExtra.package_directory(),)

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)

    Test.@testset "Unit tests              " begin
        testmodulea_filename::String = joinpath("PredictMDExtraTestModuleA", "PredictMDExtraTestModuleA.jl")
        testmoduleb_filename::String  = joinpath(
            "PredictMDExtraTestModuleB", "directory1", "directory2", "directory3",
            "directory4", "directory5", "PredictMDExtraTestModuleB.jl",
            )
        testmodulec_filename::String  = joinpath(mktempdir(), "PredictMDExtraTestModuleC.jl")
        rm(testmodulec_filename; force = true, recursive = true)
        open(testmodulec_filename, "w") do io
            write(io, "module PredictMDExtraTestModuleC end")
        end
        include(testmodulea_filename)
        include(testmoduleb_filename)
        include(testmodulec_filename)
        include(joinpath("test_package_directory.jl"))
        include(joinpath("test_package_list.jl"))
        include(joinpath("test_registry_url_list.jl"))
        include(joinpath("test_version.jl"))
    end

    Test.@testset "Import required packages" begin
        include(joinpath("test_import_required_packages.jl"))
    end

    Test.@testset "Test import_all()" begin
        include(joinpath("test_import_all.jl"))
    end
end
