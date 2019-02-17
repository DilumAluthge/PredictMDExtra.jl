##### Beginning of file

function install(m::Module)
    package_list::Vector{String} = _package_list()
    try
        Base.eval(
            m,
            Base.Meta.parse("import Pkg"),
            )
    catch e1
        @warn("Ignoring exception: ", e1,)
    end
    for p in package_list
        try
            Base.eval(
                m,
                Base.Meta.parse(string("Pkg.add(\"",p,"\")",)),
                )
        catch e2
            @warn("Ignoring exception: ", e2,)
        end
    end
end

install() = install(Main)

##### End of file
