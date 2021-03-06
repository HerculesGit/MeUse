import 'package:flutter/material.dart';
import 'package:conveniencia_central/control/control.dart';
import 'package:conveniencia_central/model/usuario.dart';

class TelaCadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final scafolldKey = GlobalKey<ScaffoldState>();
  bool isLoading;
  final formKey = GlobalKey<FormState>();
  String email;
  String pass;
  String pass2;
  String number;
  String name;
  String address;
  var verificado = Icons.clear;
 void initState() {
    super.initState();
    _ayncInitMethod();
  }

  _ayncInitMethod() async {
    bool icone = await pass == pass2;
        print("AAA");
    if(icone){
      setState(() {
        print("AAA");
        verificado = Icons.check;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        key: scafolldKey,
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          width: MediaQuery.of(context).size.width*0.8,
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.12),),
                        Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: 30,
                          child: Text('Criar uma', style: TextStyle(fontSize: 25, fontFamily: "Century Gothic",),),
                        ),
            Padding(padding: EdgeInsets.only(top: 5)),
                        Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: 30,
                          child: Text('Conta', style: TextStyle(fontSize: 35, fontFamily: "Aharoni",)),
                        ),                        
                        Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Nome de usuário", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "João Lucas",
                            suffixIcon: const Icon(Icons.person, color: Colors.black,size: 15,),
                            ),
                          onSaved: (val) => name = val,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("E-mail", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "joao_lucas@gmail.com",
                            suffixIcon: const Icon(Icons.mail, color: Colors.black,size: 15,),
                            ),
                          onSaved: (val) => email = val,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Informe uma senha", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "*********",
                            suffixIcon: const Icon(Icons.lock, color: Colors.black,size: 15,),
                            ),
                            onSaved: (val) => pass = val,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Confirme sua senha", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "*********",
                            suffixIcon: Icon(Icons.check, color: Colors.black,size: 15,),
                            ),
                            onSaved: (val) => pass2 = val,
                          ),
                        ),                   
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Número de celular", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "(83)98115-2763",
                            suffixIcon: const Icon(Icons.phone, color: Colors.black,size: 15,),
                            ),
                            onSaved: (val) => number = val,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: Text("Endereço", style: TextStyle(fontSize: 12, fontFamily: "Century Gothic", fontWeight: FontWeight.bold,),),
                  ),
                  Container(
                          height: 30,
                          child: TextFormField(
                            decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey,fontFamily: "WorkSansLight", fontSize: 12.0),
                            filled: true, fillColor: Colors.white24, hintText: "Rua Ana Zélia da Fonseca",
                            suffixIcon: const Icon(Icons.location_on, color: Colors.black,size: 15,),
                            ),
                            onSaved: (val) => address = val,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.06),
                        ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: 50,
                    child: RaisedButton(
                      onPressed: _create,
                      color: Colors.yellow[800],
                      child: Text("Cadastrar", style: TextStyle(fontSize: 16.0, fontFamily: "Century Gothic", color: Colors.white)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),                        
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                      ],
            )))
                    );
  }

  void _create() async {
    if(pass == pass2){
      final form = formKey.currentState;
      if (form.validate()) {
        setState(() {
          form.save();
          isLoading = true;
        });
      }
      Control control = Control();
      Usuario temp = Usuario(name, pass, email, address, number);
      print('$name');
      bool confirmate = await control.criarUsuario(temp);
      if (confirmate) {
        Navigator.pop(context);
      } else {
        _showSnackBar('Erro! Preencha os campos ou troque o email');
      }    
    }else{
      print("As senhas não coincidem.");
    }
  }

  _showSnackBar(String text) {
    final key = scafolldKey.currentState;
    key.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }
}