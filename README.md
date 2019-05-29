<!-- Beginning of file -->

# PredictMDExtra - Install all dependencies of PredictMD
# Main repository: [bcbi/PredictMD.jl](https://github.com/bcbi/PredictMD.jl)
# Website: [https://predictmd.net](https://predictmd.net)

<a href="https://www.repostatus.org/#active"><img src="https://www.repostatus.org/badges/latest/active.svg" alt="Project Status: Active – The project has reached a stable, usable state and is being actively developed." /></a>

PredictMDExtra is a meta-package that installs all of the Julia dependencies of [PredictMD](https://predictmd.net) (but not PredictMD itself).

Installing PredictMDExtra does not install PredictMD. If you would like a convenient way of installing PredictMD and all of its Julia dependencies, see [PredictMDFull](https://github.com/bcbi/PredictMDFull.jl).

| Table of Contents |
| ----------------- |
| [1. Installation](#installation) |
| [2. CI/CD](#cicd) |

## Installation

PredictMDExtra is registered in the Julia General registry. Therefore, to install PredictMDExtra, simply open Julia and run the following two lines:
```julia
import Pkg
Pkg.add("PredictMDExtra")
```

That being said, PredictMDExtra is not very useful by itself. I recommend that you install PredictMDFull, which includes both PredictMD and PredictMDExtra. To install PredictMDFull, simply open Julia and run the following two lines:
```julia
import Pkg
Pkg.add("PredictMDFull")
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
