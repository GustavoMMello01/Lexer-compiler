# Bem vindo a essa nova linguagem de prog ANT
func main home(){
    2
    var a = 1
    var b=2
    var nome="Joao"

    var c = add(a,b)
    print("O resultado foi ", c)

    if(c>a){
        print(c," maior que ", a)
    }
    elif(c<b){
        print(c," menor que ", b)
    }
    else{
        print("error")
    }

    c = ternary(a,b)
    print(c)

    var mercedes = carro("mercedes", "GLE", 2022, 220)
    print("O carro polui: ", mercedes.poluicao)

    end 
}

func add(a,b){
    return a + b
}

func ternary(a,b){
    return a === b ? true : false
}

object carro(marca, modelo, ano, velocidade)
{
    init carro(marca, modelo, ano, velocidade)

    func poluicao(velocidade){
        return velocidade*10
    }
}