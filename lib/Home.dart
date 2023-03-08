import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  _recuperarCep() async{


    String cep = "38050450";
    String url = "https://viacep.com.br/ws/38050450/json/";

    http.Response response = await http.get(url);
    Map<String, dynamic> objetoRetorno = json.decode(response.body);

    String logradouro = objetoRetorno["logradouro"];

    print("logradouro" + logradouro);




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("consumo de serviço web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            TextButton(
                onPressed: _recuperarCep,
                child: Text("Clique aqui")
            )
          ],
        ),
      ),
    );
  }
}
