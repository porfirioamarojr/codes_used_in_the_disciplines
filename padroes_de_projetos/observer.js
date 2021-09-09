//Concrete Observable
var InputObservable = /** @class */ (function () {
    function InputObservable(element) {
        this.element = element;
        //dependentes do InputObservable
        this.observers = [];
    }
    InputObservable.prototype.subscribe = function () {
        var _this = this;
        var observers = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            observers[_i] = arguments[_i];
        }
        //array de observers
        observers.forEach(function (observer) {
            if (!_this.observers.includes(observer)) {
                _this.observers.push(observer);
            }
        });
    };
    InputObservable.prototype.unsubscribe = function (observer) {
        //pega o observer index para saber se existe
        var observerIndex = this.observers.indexOf(observer);
        //Verifica se um observer existe
        if (observerIndex !== -1) {
            this.observers.splice(observerIndex, 1);
        }
    };
    InputObservable.prototype.notify = function () {
        var _this = this;
        this.observers.forEach(function (observer) { return observer.update(_this); });
    };
    return InputObservable;
}());
//Concrete Observer
var ParagraphObserver = /** @class */ (function () {
    //O método constructor está publico porque desejamos acessar o elemento fora da classe 
    function ParagraphObserver(element) {
        this.element = element;
    }
    //Quando o observable atualizar ele me manda uma notificação para o método update
    ParagraphObserver.prototype.update = function (observable) {
        //Poderia ser a interface observable mas utilizamos o InputObservable porque precisamos de um Input 
        if (observable instanceof InputObservable) {
            //Pega o texo que tá dentro do input e vai jogar no texto do parágrafo
            this.element.innerText = observable.element.value;
        }
    };
    return ParagraphObserver;
}());
//Outro Concrete Observe
var DivObserver = /** @class */ (function () {
    function DivObserver(element) {
        this.element = element;
    }
    //Até daria para utilizar uma superclasse e trabalhar com herança mas vamos repetir o código
    DivObserver.prototype.update = function (observable) {
        //checando a instancia do observable
        if (observable instanceof InputObservable) {
            this.element.innerText = observable.element.value;
        }
    };
    return DivObserver;
}());
//Cliente Code
//Função criada para caso seja necessário o reuso
function makeInput() {
    var input = document.createElement('input');
    //Vai adicionar um input no body
    document.body.appendChild(input);
    return input;
}
function makeParagraph() {
    var p = document.createElement('p');
    //vai adicionar um parágrafo no body
    document.body.appendChild(p);
    //cria um texto inicial no parágrafo
    p.innerText = 'Texto Inicial (Hardcoded)';
    return p;
}
function makeDiv() {
    var div = document.createElement('div');
    //vai adicionar um parágrafo no body
    document.body.appendChild(div);
    //cria um texto inicial no parágrafo
    div.innerText = 'Texto da Div';
    return div;
}
var input = new InputObservable(makeInput());
var p = new ParagraphObserver(makeParagraph());
var p1 = new ParagraphObserver(makeParagraph());
var div = new DivObserver(makeDiv());
//Objetos inscritos para alteração/notificação
input.subscribe(p, p1, div);
//Aqui gera a notificação/alteração para os parágrafos inscritos
input.element.addEventListener('keyup', function () {
    input.notify();
});
//Objetos que deixam de receber notificação
input.unsubscribe(p1);
