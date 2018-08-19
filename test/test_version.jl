##### Beginning of file

Test.@test( Base.VERSION >= VersionNumber("1.0") )

Test.@test( PredictMDExtra.version() > VersionNumber(0) )

Test.@test( PredictMDExtra.version(TestModuleA) == VersionNumber("1.2.3") )

Test.@test( PredictMDExtra.version(TestModuleB) == VersionNumber("4.5.6") )

Test.@test_throws(
    _TomlFile(joinpath(mktempdir(),"1","2","3","4")),
    ErrorException,
    )

##### End of file
