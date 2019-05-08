import Pkg
Pkg.activate(".")
Pkg.instantiate()


using DataPipelines

function ToTensor(input)
    return 1

end

function ToTensor1(input)
    return 2

end


function ToTensor2(input)
    return 3

end


function ToTensor3(input)
    return 4

end





com = Compose([ToTensor,ToTensor1,ToTensor2,ToTensor3])


applyall(com,1)