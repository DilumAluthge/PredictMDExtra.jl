#!/bin/bash

##### Beginning of file

set -ev

julia --check-bounds=yes --color=yes -e '
    Pkg.Registry.add(Pkg.RegistrySpec(name="PredictMDRegistry",url="https://github.com/bcbi/PredictMDRegistry.git",uuid="26a550a3-39fe-4af4-af6d-e8814c2b6dd9",));
    '

julia --check-bounds=yes --color=yes -e '
    Pkg.Registry.add("General");
    '

julia --check-bounds=yes --color=yes -e '
    Pkg.Registry.update();
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.build("PredictMDExtra");
    '

julia --check-bounds=yes --color=yes -e '
    import PredictMDExtra;
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    Pkg.test("PredictMDExtra"; coverage=true);
    '

julia --check-bounds=yes --color=yes -e '
    import Pkg;
    try Pkg.add("Coverage") catch end;
    '

julia --check-bounds=yes --color=yes -e '
    import Coverage;
    import PredictMDExtra;
    cd(PredictMDExtra.package_directory());
    Coverage.Codecov.submit(Coverage.Codecov.process_folder());
    '

cat Project.toml

cat Manifest.toml

##### End of file
