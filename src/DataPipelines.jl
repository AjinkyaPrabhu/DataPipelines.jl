
module DataPipelines
    include("transforms.jl")
    greet() = print("Hello World!")
    export Compose
    export applyall
    # export applyselected



end # module



