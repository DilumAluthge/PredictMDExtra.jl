##### Beginning of file

function import_all(m::Module)
    package_list::Vector{String} = _package_list()
    stdlib_list::Vector{String} = _stdlib_list()
    full_list::Vector{String} = sort(
        unique(
            strip.(
                vcat(
                    package_list,
                    stdlib_list,
                    )
                )
            )
        )
    for x in full_list
        try
            Base.eval(
                m,
                Base.Meta.parse(
                    string(
                        "import ",
                        x,
                        ),
                    ),
                )
        catch e
            @warn("Ignoring exception: ", e,)
        end
    end
end

import_all() = import_all(Main)

const importall = import_all

##### End of file
