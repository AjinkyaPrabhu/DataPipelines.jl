
module DataPipelines
    include("transforms.jl")
    greet() = print("Hello World!")
    export Compose
    export applyall
    export ToArray
    export ToGray
    export ToType
    export ToBatchedTensor

end # module



