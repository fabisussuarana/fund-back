var REQUEST_URL =
  "https://my-json-server.typicode.com/danielnsilva/json/profissionais";

const searchFiles = (event) => {
  alert('SearchFile!');
};

const setCountFiles = (value) => {
  let file = document.querySelector("#countregiters");
  file.append(value);
}

class Produto {
  
  constructor() {
    this.arrayProdutos = [];
  }

  salvar() {
    let produto =  this.lerDados();
  
    this.listaTabela();
  }
  
  listaTabela() {
    let tbody = document.getElementById('tbody');
    tbody.innerText = '';
    
    for (let i = 0; i < this.arrayProdutos.length; i++) {
      let tr = tbody.insertRow();
  
      let td_id = tr.insertCell();
      let td_nome = tr.insertCell();
      let td_email = tr.insertCell();
      let td_telefone = tr.insertCell();
      let td_dataNascimento = tr.insertCell();
      let td_grupoSanguineo = tr.insertCell();
      let td_sexo = tr.insertCell();
      let td_cep = tr.insertCell();
      let td_endereço = tr.insertCell();
      let td_cidade = tr.insertCell();
      let td_estado = tr.insertCell();

  
      td_id.innerText = this.arrayProdutos[i].id;
      td_produto.innerText = this.arrayProdutos[i].nomeProduto;
      td_nome.innerText = this.arrayProdutos[i].nome;
  
      
    }
  }
  
  adicionar(produto) {
    this.arrayProdutos.push(produto);
    this.id++;
  }
  
  lerDados() {
    let produto = {}

    produto.id = document.getElementById('id').value;
    produto.nome = document.getElementById('nome').value;
    produto.email = document.getElementById('email').value;
    produto.telefone = document.getElementById('telefone').value;
    produto.dataNascimento = document.getElementById('dataNascimento').value;
    produto.grupoSanguineo = document.getElementById('grupoSanguineo').value;
    produto.sexo = document.getElementById('sexo').value;
    produto.cep = document.getElementById('cep').value;
    produto.endereço = document.getElementById('endereço').value;
    produto.cidade = document.getElementById('cidade').value;
    produto.estado = document.getElementById('estado').value;
  }
  
}

var produto = new Produto();


const getFiles = () => {
  fetch(REQUEST_URL).then((T) => T.json()).then((result) => {
    var request = result.map(function (item) {
        let tbody = document.querySelector("#dateasync");

        tbody.innerHTML +=
          "<tr><td>" +
          item.id +
          "</td><td>" +
          item.nome +
          "</td><td>" +
          item.registro +
          "</td><td>" +
          item.especialidade +
          "</td><td>" +
          item.unidade +
          "</td><td>" +
          item.telefone +
          "</td><td>" +
          item.email +
          "</td></tr>"
      });

      let count = request.length;
      
      setCountFiles(count);
    });
};

const onVisible = () => {
  //@getElement.
  let isVisible = document.getElementById("box_visible").style.display;

  isVisible == "block"
    ? (document.getElementById("box_visible").style.display = "none")
    : (document.getElementById("box_visible").style.display = "block");
};


//@Main.
getFiles();
