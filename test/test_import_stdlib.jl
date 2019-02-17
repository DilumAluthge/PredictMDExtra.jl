import Pkg # stdlib
import PredictMDExtra
import Test # stdlib

stdlib_list = PredictMDExtra._stdlib_list()

for s in stdlib_list
    try
        eval(
            Base.Meta.parse(
                string(
                    "import ",
                    s,
                    ),
                ),
            )
    catch e
        @warn("Ignoring exception: ", e,)
    end
end
