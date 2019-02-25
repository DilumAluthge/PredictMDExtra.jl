##### Beginning of file

import_all() = import_all(Main)

function import_all(m::Module)
    package_list::Vector{String} = sort(unique(strip.(_package_list())))
    stdlib_list::Vector{String} = sort(unique(strip.(_stdlib_list())))
    for s in stdlib_list
        Base.eval(
            m,
            Base.Meta.parse(
                string(
                    "try ",
                    "import $(string(s)); ",
                    "@info(\"imported $(string(s))\"); ",
                    "catch e1 @warn(\"ignoring exception: \", e1,); ",
                    "end ",
                    ),
                ),
            )
    end
    for p in package_list
        Base.eval(
            m,
            Base.Meta.parse(
                string(
                    "try ",
                    "import $(string(p)); ",
                    "catch e2 ",
                    "@info(\"ignoring exception: \", e2,); ",
                    "try ",
                    "import Pkg; ",
                    "Pkg.add(\"$(string(p))\"); ",
                    "catch e3 ",
                    "@info(\"ignoring exception: \", e3,); ",
                    "end ",
                    "end ",
                    ),
                ),
            )
        Base.eval(
            m,
            Base.Meta.parse(
                string(
                    "try ",
                    "import $(string(p)); ",
                    "@info(\"imported $(string(p))\"); ",
                    "catch e4 ",
                    "@warn(\"ignoring exception: \", e4,); ",
                    "end ",
                    ),
                ),
            )
    end
end

##### End of file
