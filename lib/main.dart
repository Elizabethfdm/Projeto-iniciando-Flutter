import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DropDownButton - DropDownItem',
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String nomeModelo = "";
  var _Modelos = [
    'Modelo',
    'Tradicional',
    'Luxo',
    'Polo',
    'Sapatilha',
    'Casual',
    'Kit mocassim',
    'Sapatilha Aquática',
    'Mule',
    'Coturno',
    'Luxo couro'
  ];
  var _modeloSelecionado = 'Modelo';

  String nomeModelo2 = "";
  var _Modelos2 = [
    'Modelo',
    'Tradicional',
    'Luxo',
    'Polo',
    'Sapatilha',
    'Casual',
    'Kit mocassim',
    'Sapatilha Aquática',
    'Mule',
    'Coturno',
    'Luxo couro'
  ];
  var _modeloSelecionado2 = 'Modelo';

  String nomeModelo3 = "";
  var _Modelos3 = [
    'Modelo',
    'Tradicional',
    'Luxo',
    'Polo',
    'Sapatilha',
    'Casual',
    'Kit mocassim',
    'Sapatilha Aquática',
    'Mule',
    'Coturno',
    'Luxo couro'
  ];
  var _modeloSelecionado3 = 'Modelo';

  String nomeCor = "";
  var _Cores = [
    'Cor',
    'Azul',
    'Café',
    'Vermelho',
    'Preto',
    'Caramelo',
    'Rato',
    'Branco',
    'Gelo',
    'Whisky'
  ];
  var _corSelecionada = 'Cor';

  String nomeCor2 = "";
  var _Cores2 = [
    'Cor',
    'Azul',
    'Café',
    'Vermelho',
    'Preto',
    'Caramelo',
    'Rato',
    'Branco',
    'Gelo',
    'Whisky'
  ];
  var _corSelecionada2 = 'Cor';

  String nomeCor3 = "";
  var _Cores3 = [
    'Cor',
    'Azul',
    'Café',
    'Vermelho',
    'Preto',
    'Caramelo',
    'Rato',
    'Branco',
    'Gelo',
    'Whisky'
  ];
  var _corSelecionada3 = 'Cor';

  String tamanhoNumeracao = "";
  var _Numeracao = ['Nº', '37', '38', '39', '40', '41', '42', '43', '44'];
  var _numeracaoSelecionada = 'Nº';

  String tamanhoNumeracao2 = "";
  var _Numeracao2 = ['Nº', '37', '38', '39', '40', '41', '42', '43', '44'];
  var _numeracaoSelecionada2 = 'Nº';

  String tamanhoNumeracao3 = "";
  var _Numeracao3 = ['Nº', '37', '38', '39', '40', '41', '42', '43', '44'];
  var _numeracaoSelecionada3 = 'Nº';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Geração Pedido", style: TextStyle(fontSize: 35)),
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("D' França Calçados", style: TextStyle(fontSize: 25)),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.person),
                  labelText: 'Nome Cliente',
                ),
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.house),
                  labelText: 'Endereço/Setor/Cidade',
                ),
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.add_call),
                  labelText: 'Telefone',
                ),
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.attach_money_sharp),
                  labelText: 'Dinheiro/Cartão/Pix? Precisa de Troco?',
                ),
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 5,
                    child: criaDropDownButton(),
                  ),
                  Expanded(
                    flex: 3,
                    child: criaNovoDropDownButton(),
                  ),
                  Expanded(
                    flex: 2,
                    child: criaNovo2DropDownButton(),
                  )
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 5,
                    child: cria2DropDownButton(),
                  ),
                  Expanded(
                    flex: 3,
                    child: cria2NovoDropDownButton(),
                  ),
                  Expanded(
                    flex: 2,
                    child: criaNovo3DropDownButton(),
                  )
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 5,
                    child: cria3DropDownButton(),
                  ),
                  Expanded(
                    flex: 3,
                    child: cria3NovoDropDownButton(),
                  ),
                  Expanded(
                    flex: 2,
                    child: criaNovo4DropDownButton(),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  criaDropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Modelos.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _dropDownItemSelected(novoItemSelecionado);
              setState(() {
                this._modeloSelecionado = novoItemSelecionado;
              });
            },
            value: _modeloSelecionado,
          ),
          Text(
            "O modelo selecionado foi \n$_modeloSelecionado",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _dropDownItemSelected(String novoItem) {
    setState(() {
      this._modeloSelecionado = novoItem;
    });
  }

  cria2DropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Modelos2.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop2DownItemSelected(novoItemSelecionado);
              setState(() {
                this._modeloSelecionado2 = novoItemSelecionado;
              });
            },
            value: _modeloSelecionado2,
          ),
          Text(
            "O modelo selecionado foi \n$_modeloSelecionado2",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop2DownItemSelected(String novoItem) {
    setState(() {
      this._modeloSelecionado2 = novoItem;
    });
  }

  cria3DropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Modelos3.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop3DownItemSelected(novoItemSelecionado);
              setState(() {
                this._modeloSelecionado3 = novoItemSelecionado;
              });
            },
            value: _modeloSelecionado3,
          ),
          Text(
            "O modelo selecionado foi \n$_modeloSelecionado3",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop3DownItemSelected(String novoItem) {
    setState(() {
      this._modeloSelecionado3 = novoItem;
    });
  }

  criaNovoDropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Cores.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _dropNovoDownItemSelected(novoItemSelecionado);
              setState(() {
                this._corSelecionada = novoItemSelecionado;
              });
            },
            value: _corSelecionada,
          ),
          Text(
            "A cor selecionada foi \n$_corSelecionada",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _dropNovoDownItemSelected(String novoItem) {
    setState(() {
      this._corSelecionada = novoItem;
    });
  }

  cria2NovoDropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Cores2.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop2NovoDownItemSelected(novoItemSelecionado);
              setState(() {
                this._corSelecionada2 = novoItemSelecionado;
              });
            },
            value: _corSelecionada2,
          ),
          Text(
            "A cor selecionada foi \n$_corSelecionada2",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop2NovoDownItemSelected(String novoItem) {
    setState(() {
      this._corSelecionada2 = novoItem;
    });
  }

  cria3NovoDropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Cores3.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop3NovoDownItemSelected(novoItemSelecionado);
              setState(() {
                this._corSelecionada3 = novoItemSelecionado;
              });
            },
            value: _corSelecionada3,
          ),
          Text(
            "A cor selecionada foi \n$_corSelecionada3",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop3NovoDownItemSelected(String novoItem) {
    setState(() {
      this._corSelecionada3 = novoItem;
    });
  }

  criaNovo2DropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Numeracao.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _dropNovo2DownItemSelected(novoItemSelecionado);
              setState(() {
                this._numeracaoSelecionada = novoItemSelecionado;
              });
            },
            value: _numeracaoSelecionada,
          ),
          Text(
            "A numeração selecionada foi \n$_numeracaoSelecionada",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _dropNovo2DownItemSelected(String novoItem) {
    setState(() {
      this._numeracaoSelecionada = novoItem;
    });
  }

  criaNovo3DropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Numeracao2.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop2Novo3DownItemSelected(novoItemSelecionado);
              setState(() {
                this._numeracaoSelecionada2 = novoItemSelecionado;
              });
            },
            value: _numeracaoSelecionada2,
          ),
          Text(
            "A numeração selecionada foi \n$_numeracaoSelecionada2",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop2Novo3DownItemSelected(String novoItem) {
    setState(() {
      this._numeracaoSelecionada2 = novoItem;
    });
  }

  criaNovo4DropDownButton() {
    return Container(
      child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: _Numeracao3.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _drop3Novo3DownItemSelected(novoItemSelecionado);
              setState(() {
                this._numeracaoSelecionada3 = novoItemSelecionado;
              });
            },
            value: _numeracaoSelecionada3,
          ),
          Text(
            "A numeração selecionada foi \n$_numeracaoSelecionada3",
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }

  void _drop3Novo3DownItemSelected(String novoItem) {
    setState(() {
      this._numeracaoSelecionada3 = novoItem;
    });
  }
}