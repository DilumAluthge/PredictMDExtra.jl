##### Beginning of file

import Test # stdlib

Test.@test( Base.VERSION >= VersionNumber("1.0") )

Test.@test( PredictMDExtra.version() > VersionNumber(0) )

Test.@test(
    PredictMDExtra.version() ==
        PredictMDExtra.version(PredictMDExtra)
    )

Test.@test(
    PredictMDExtra.version() ==
        PredictMDExtra.version(first(methods(PredictMDExtra.eval)))
    )

Test.@test(
    PredictMDExtra.version() ==
        PredictMDExtra.version(PredictMDExtra.eval)
    )

Test.@test(
    PredictMDExtra.version() ==
        PredictMDExtra.version(PredictMDExtra.eval, (Any,))
    )

Test.@test( PredictMDExtra.version(PredictMDExtraTestModuleA) == VersionNumber("1.2.3") )

Test.@test( PredictMDExtra.version(PredictMDExtraTestModuleB) == VersionNumber("4.5.6") )

Test.@test_throws(
    ErrorException,
    PredictMDExtra._TomlFile(joinpath(mktempdir(),"1","2","3","4")),
    )

##### End of file
