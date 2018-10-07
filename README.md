<!-- Beginning of file -->

# PredictMDExtra - Install all dependencies of PredictMD
# Main repository: [bcbi/PredictMD.jl](https://github.com/bcbi/PredictMD.jl)
# Website: [https://www.predictmd.net](https://www.predictmd.net)

<a href="https://www.repostatus.org/#wip"> <img src="https://www.repostatus.org/badges/latest/wip.svg" alt="Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public." /></a>

PredictMDExtra is a meta-package that installs all of the Julia dependencies of [PredictMD](https://www.predictmd.net) (but not PredictMD itself).

Installing PredictMDExtra does not install PredictMD. If you would like a convenient way of installing PredictMD and all of its Julia dependencies, see [PredictMDFull](https://github.com/bcbi/PredictMDFull.jl).

Issues related to this repository should be submitted to the main PredictMD issue tracker: [https://github.com/bcbi/PredictMD.jl/issues](https://github.com/bcbi/PredictMD.jl/issues)

| Table of Contents |
| ----------------- |
| [1. Installation](#installation) |
| [2. CI/CD](#cicd) |

## Installation

To install PredictMDExtra, open Julia and run the following lines:
```julia
import Pkg;
Pkg.add(Pkg.PackageSpec(rev="master", url="https://github.com/bcbi/PredictMDExtra.jl",));
```

## CI/CD

<table>
    <thead>
        <tr>
            <th></th>
            <th>master (stable)</th>
            <th>develop (latest)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Travis CI</td>
            <td><a href="https://travis-ci.org/bcbi/PredictMDExtra.jl/branches">
            <img
            src="https://travis-ci.org/bcbi/PredictMDExtra.jl.svg?branch=master"
            /></a></td>
            <td><a href="https://travis-ci.org/bcbi/PredictMDExtra.jl/branches">
            <img
            src="https://travis-ci.org/bcbi/PredictMDExtra.jl.svg?branch=develop"
            /></a></td>
        </tr>
        <!--<tr>
            <td>AppVeyor CI</td>
            <td>
            <a
            href="https://ci.appveyor.com/project/mirestrepo/predictmdextra-jl/history">
            <img
            title="AppVeyor build status (master)" src="https://ci.appveyor.com/api/projects/status/github/bcbi/PredictMDExtra.jl?branch=master&svg=true"
            />
            </a></td>
            <td><a href="https://ci.appveyor.com/project/mirestrepo/predictmdextra-jl/history">
            <img
            src="https://ci.appveyor.com/api/projects/status/github/bcbi/PredictMDExtra.jl?branch=develop&svg=true"
            />
            </a></td>
        </tr>-->
        <tr>
            <td>CodeCov</td>
            <td>
            <a
            href="https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/master">
            <img
            src="https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/master/graph/badge.svg"
            /></a></td>
            <td>
            <a
            href="https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/develop">
            <img src="https://codecov.io/gh/bcbi/PredictMDExtra.jl/branch/develop/graph/badge.svg"
            /></a></td>
        </tr>
    </tbody>
</table>

<!-- End of file -->
