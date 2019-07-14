import Test

Test.@testset "PredictMDExtra.jl" begin
    import InteractiveUtils # stdlib
    import Pkg # stdlib
    import Test # stdlib

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        @debug(string("Julia version info: ",))
        InteractiveUtils.versioninfo(verbose=true)
    end

    @debug(string("Attempting to import PredictMDExtra...",))
    import PredictMDExtra
    @debug(string("Successfully imported PredictMDExtra.",))
    @debug(string("PredictMDExtra version: "),PredictMDExtra.version(),)
    @debug(string("PredictMDExtra package directory: "),PredictMDExtra.package_directory(),)

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(Base.active_project())
            println(logger.stream, "# Location of test environment Project.toml: \"$(Base.active_project())\"")
            println(logger.stream, "# Beginning of test environment Project.toml")
            println(logger.stream, read(Base.active_project(), String))
            println(logger.stream, "# End of test environment Project.toml")
        else
            println(logger.stream, "# File \"$(Base.active_project())\" does not exist")
        end
        if ispath(joinpath(dirname(Base.active_project()), "Manifest.toml"))
            println(logger.stream, "# Location of test environment Manifest.toml: \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\"")
            println(logger.stream, "# Beginning of test environment Manifest.toml")
            println(logger.stream, read(joinpath(dirname(Base.active_project()), "Manifest.toml"),String))
            println(logger.stream, "# End of test environment Manifest.toml")
        else
            println(logger.stream, "# File \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\" does not exist")
        end
    end

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(PredictMDExtra.package_directory("Project.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Project.toml: \"$(PredictMDExtra.package_directory("Project.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Project.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Project.toml"), String))
            println(logger.stream, "# End of PredictMDExtra package Project.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Project.toml"))\" does not exist")
        end
        if ispath(PredictMDExtra.package_directory("Manifest.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Manifest.toml: \"$(PredictMDExtra.package_directory("Manifest.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Manifest.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Manifest.toml"),String))
            println(logger.stream, "# End of PredictMDExtra package Manifest.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Manifest.toml"))\" does not exist")
        end
    end

    PredictMDExtra.import_all()

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(Base.active_project())
            println(logger.stream, "# Location of test environment Project.toml: \"$(Base.active_project())\"")
            println(logger.stream, "# Beginning of test environment Project.toml")
            println(logger.stream, read(Base.active_project(), String))
            println(logger.stream, "# End of test environment Project.toml")
        else
            println(logger.stream, "# File \"$(Base.active_project())\" does not exist")
        end
        if ispath(joinpath(dirname(Base.active_project()), "Manifest.toml"))
            println(logger.stream, "# Location of test environment Manifest.toml: \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\"")
            println(logger.stream, "# Beginning of test environment Manifest.toml")
            println(logger.stream, read(joinpath(dirname(Base.active_project()), "Manifest.toml"),String))
            println(logger.stream, "# End of test environment Manifest.toml")
        else
            println(logger.stream, "# File \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\" does not exist")
        end
    end

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(PredictMDExtra.package_directory("Project.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Project.toml: \"$(PredictMDExtra.package_directory("Project.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Project.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Project.toml"), String))
            println(logger.stream, "# End of PredictMDExtra package Project.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Project.toml"))\" does not exist")
        end
        if ispath(PredictMDExtra.package_directory("Manifest.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Manifest.toml: \"$(PredictMDExtra.package_directory("Manifest.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Manifest.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Manifest.toml"),String))
            println(logger.stream, "# End of PredictMDExtra package Manifest.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Manifest.toml"))\" does not exist")
        end
    end

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)

    Test.@testset "Unit tests              " begin
        testmodulea_filename::String = joinpath("TestModuleA", "TestModuleA.jl")
        testmoduleb_filename::String  = joinpath(
            "TestModuleB", "directory1", "directory2", "directory3",
            "directory4", "directory5", "TestModuleB.jl",
            )
        testmodulec_filename::String  = joinpath(mktempdir(), "TestModuleC.jl")
        rm(testmodulec_filename; force = true, recursive = true)
        open(testmodulec_filename, "w") do io
            write(io, "module TestModuleC end")
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

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(Base.active_project())
            println(logger.stream, "# Location of test environment Project.toml: \"$(Base.active_project())\"")
            println(logger.stream, "# Beginning of test environment Project.toml")
            println(logger.stream, read(Base.active_project(), String))
            println(logger.stream, "# End of test environment Project.toml")
        else
            println(logger.stream, "# File \"$(Base.active_project())\" does not exist")
        end
        if ispath(joinpath(dirname(Base.active_project()), "Manifest.toml"))
            println(logger.stream, "# Location of test environment Manifest.toml: \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\"")
            println(logger.stream, "# Beginning of test environment Manifest.toml")
            println(logger.stream, read(joinpath(dirname(Base.active_project()), "Manifest.toml"),String))
            println(logger.stream, "# End of test environment Manifest.toml")
        else
            println(logger.stream, "# File \"$(joinpath(dirname(Base.active_project()), "Manifest.toml"))\" does not exist")
        end
    end

    logger = Base.CoreLogging.current_logger_for_env(Base.CoreLogging.Debug, Symbol(splitext(basename(something(@__FILE__, "nothing")))[1]), something(@__MODULE__, "nothing"))
    if !isnothing(logger)
        if ispath(PredictMDExtra.package_directory("Project.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Project.toml: \"$(PredictMDExtra.package_directory("Project.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Project.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Project.toml"), String))
            println(logger.stream, "# End of PredictMDExtra package Project.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Project.toml"))\" does not exist")
        end
        if ispath(PredictMDExtra.package_directory("Manifest.toml"))
            println(logger.stream, "# Location of PredictMDExtra package Manifest.toml: \"$(PredictMDExtra.package_directory("Manifest.toml"))\"")
            println(logger.stream, "# Beginning of PredictMDExtra package Manifest.toml")
            println(logger.stream, read(PredictMDExtra.package_directory("Manifest.toml"),String))
            println(logger.stream, "# End of PredictMDExtra package Manifest.toml")
        else
            println(logger.stream, "# File \"$(PredictMDExtra.package_directory("Manifest.toml"))\" does not exist")
        end
    end
end
