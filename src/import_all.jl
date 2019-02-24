##### Beginning of file

import_all() = import_all(Main)

function import_all(m::Module)
    package_list::Vector{String} = sort(unique(strip.(_package_list())))
    stdlib_list::Vector{String} = sort(unique(strip.(_stdlib_list())))
    for s in stdlib_list
        Base.eval(
            m,
            Base.Meta.parse(
                string("import $(s)"),
                ),
            )
        Base.eval(
            m,
            Base.Meta.parse(
                string("@debug(\"imported $(string(s))\")",),
                ),
            )
    end
    for p in package_list
        Base.eval(
            m,
            Base.Meta.parse(
                string("try import $(p) catch e @debug(\"ignoring exception: \", e,); import Pkg; Pkg.add(\"$(p)\"); import $(p); end"),
                ),
            )
        Base.eval(
            m,
            Base.Meta.parse(
                string("import $(p)"),
                ),
            )
        Base.eval(
            m,
            Base.Meta.parse(
                string("@debug(\"imported $(string(p))\")",),
                ),
            )
    end
end

##### End of file
