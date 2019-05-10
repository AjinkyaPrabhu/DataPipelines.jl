import Pkg
using Images
Pkg.activate(".")
Pkg.instantiate()


using DataPipelines

using Images

com = Compose([
                ToGray(),
                ToArray(true),
                ToType(Float64),
               ])

imgs = []
for i in 1:3
    push!(imgs,load("test/test.png"))
end

img = com.(imgs)