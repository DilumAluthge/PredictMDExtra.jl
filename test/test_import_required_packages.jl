import Pkg # stdlib
import PredictMDExtra
import Test # stdlib

package_list = _package_list()

for p in package_list
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
