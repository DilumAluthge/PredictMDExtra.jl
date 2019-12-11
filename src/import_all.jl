import_all() = import_all(Main)

function import_all(m::Module)::Nothing
    package_list::Vector{String} = sort(unique(strip.(_package_list())))
    for p in package_list
        Base.eval(
            m,
            Base.Meta.parse(
                string(
                    "try ",
                    "import $(string(p)); ",
                    "catch e1 ",
                    "@debug(\"ignoring exception: \", e1,); ",
                    "try ",
                    "import Pkg; ",
                    "Pkg.add(\"$(string(p))\"); ",
                    "catch e2 ",
                    "@debug(\"ignoring exception: \", e2,); ",
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
                    "@debug(\"imported $(string(p))\"); ",
                    "catch e3 ",
                    "@error(\"ignoring exception: \", e3,); ",
                    "end ",
                    ),
                ),
            )
    end
end
