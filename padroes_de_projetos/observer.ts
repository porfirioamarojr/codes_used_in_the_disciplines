//Observable é um objeto que gerência seus dependentes
interface Observable{
    //adiciona um obserever em subcribe
    subscribe(...observers: Observer[]): void;
    //retira um observer da lista
    unsubscribe(observer: Observer): void;
    //notifica uma atualização para os observers
    notify(): void;
}

//Observer dependente de observable
interface Observer{
    //recebe qualquer coisa
    update(...args: unknown[]): void;
}

//Concrete Observable
class InputObservable implements Observable{
    //dependentes do InputObservable
    private observers: Observer[] = [];

    constructor(public element: HTMLInputElement){}
    
    subscribe(...observers: Observer[]): void{
        //array de observers
        observers.forEach(observer => {
            if(!this.observers.includes(observer)) {
                this.observers.push(observer);
            }
        });
    }

    unsubscribe(observer: Observer): void{
        //pega o observer index para saber se existe
        const observerIndex = this.observers.indexOf(observer);
        
        //Verifica se um observer existe
        if(observerIndex !== -1){
            this.observers.splice(observerIndex, 1);
        }    
    }

    notify(): void{
        this.observers.forEach(observer => observer.update(this))
    }
}

//Concrete Observer
class ParagraphObserver implements Observer{
    //O método constructor está publico porque desejamos acessar o elemento fora da classe 
    constructor(public element: HTMLParagraphElement){}

    //Quando o observable atualizar ele me manda uma notificação para o método update
    update(observable: Observable): void{
        //Poderia ser a interface observable mas utilizamos o InputObservable porque precisamos de um Input 
        if(observable instanceof InputObservable){
            //Pega o texo que tá dentro do input e vai jogar no texto do parágrafo
            this.element.innerText = observable.element.value;
        }
    }
}

//Outro Concrete Observe
class DivObserver implements Observer{ 
    constructor(public element: HTMLDivElement){}
    //Até daria para utilizar uma superclasse e trabalhar com herança mas vamos repetir o código
    update(observable: Observable): void{
        //checando a instancia do observable
        if(observable instanceof InputObservable){
            this.element.innerText = observable.element.value;
        }
    }
}

//Cliente Code
//Função criada para caso seja necessário o reuso
function makeInput(): HTMLInputElement {
    const input = document.createElement('input');
    //Vai adicionar um input no body
    document.body.appendChild(input);
    return input;
}

function makeParagraph(): HTMLParagraphElement {
    const p = document.createElement('p');
    //vai adicionar um parágrafo no body
    document.body.appendChild(p);
    //cria um texto inicial no parágrafo
    p.innerText = 'Texto Inicial (Hardcoded)';
    return p;
}

function makeDiv(): HTMLDivElement {
    const div = document.createElement('div');
    //vai adicionar um parágrafo no body
    document.body.appendChild(div);
    //cria um texto inicial no parágrafo
    div.innerText = 'Texto da Div';
    return div;
}

const input = new InputObservable(makeInput());
const p = new ParagraphObserver(makeParagraph());
const p1 = new ParagraphObserver(makeParagraph());
const div = new DivObserver(makeDiv());
//Objetos inscritos para alteração/notificação
input.subscribe(p, p1, div);
//Aqui gera a notificação/alteração para os parágrafos inscritos
input.element.addEventListener('keyup', function (){
    input.notify();
});
//Objetos que deixam de receber notificação
input.unsubscribe(p1);