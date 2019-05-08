
using Images

struct Compose
    transforms::Array{Function,1}
end

function applyall(compose::Compose,data)
    output = data
    for func in compose.transforms
        output = func(output)
    end
    return output

end


# function applyselected(compose::Compose,indices::Array{Int,1},data)
#     output = data
#     for index in indices:

#         func = compose.transforms[in]

#         print(func)
#         output = func(output)
#     end
#     return output
# end
