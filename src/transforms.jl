
using Images


abstract type Transform end

struct Compose
    transforms::Array{Transform,1}
end

function (compose::Compose)(data)
    output = data
    for func in compose.transforms
        output = func(output)
    end
    return output

end



struct ToGray <: Transform
end

function (gray::ToGray)(image)

    output = Gray.(image)

    return output
    
end




struct ToArray <: Transform
    keep_last_dim::Bool
end 

function (f::ToArray)(image)
    image_array = channelview(image)
    image_color_channels = image_array[1:end-1,:,:]
    
    if f.keep_last_dim
        return image_color_channels
    else
        return image_array
    end

end



struct ToType <: Transform
    dataType::Type
end

function (f::ToType)(image)
    converted = convert.(f.dataType,image)
end



struct ToBatchedTensor <: Transform
end

function (f::ToBatchedTensor)(images)
    println("Called ToBatchedTensor")
    size_of_image = size(images[1])
    concated = hcat(images...)
    reshaped = reshape(images,:,size_of_image...)
end