##### Beginning of file

try
    import Pkg
    Pkg.add("CLArrays")
    Pkg.build("CLArrays")
catch
end

try
    import Pkg
    Pkg.add("CuArrays")
    Pkg.build("CuArrays")
catch
end

##### End of file
