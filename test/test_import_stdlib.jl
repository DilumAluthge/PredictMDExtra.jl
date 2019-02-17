import Pkg # stdlib
import PredictMDExtra
import Test # stdlib

stdlib_list = _stdlib_list()

for s in stdlib_list
    try
        eval(
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
