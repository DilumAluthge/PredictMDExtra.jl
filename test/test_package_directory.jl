##### Beginning of file

import Test # stdlib

Test.@test( isdir(PredictMDExtra.package_directory()) )

Test.@test( isdir(PredictMDExtra.package_directory("ci")) )

Test.@test( isdir(PredictMDExtra.package_directory("ci", "travis")) )

Test.@test( isdir(PredictMDExtra.package_directory(PredictMDExtraTestModuleA)) )

Test.@test( isdir(PredictMDExtra.package_directory(PredictMDExtraTestModuleB)) )

Test.@test( isdir( PredictMDExtra.package_directory(
            PredictMDExtraTestModuleB, "directory2",
            ) ) )

Test.@test( isdir( PredictMDExtra.package_directory(
            PredictMDExtraTestModuleB, "directory2", "directory3",
            ) ) )

Test.@test_throws(
    ErrorException,
    PredictMDExtra.package_directory(PredictMDExtraTestModuleC),
    )

##### End of file
