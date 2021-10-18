import 'dart:io';

 List<Map<String,dynamic>> cadastros = [];


Meps(){
  var condicao = true;


  while (condicao) {
    print('Deseja sair, cadastro, imprimir ');
    var comando = stdin.readLineSync();

    if( comando == 'sair'){
      print('===Programa Finalizado===');
      condicao = false;
    } else if(comando == 'cadastro'){
      cadastrar();
    } else if (comando == 'imprimir'){
      print(cadastros);
    } else {
      print('=== Este Comando não Existe===');
    }


  }


}

cadastrar(){
  var cadastro = <String, dynamic>{};

  print('=== Digite seu Nome ===');
  cadastro['nome'] = stdin.readLineSync();
  print('=== Digite sua Idade ===');
  cadastro['idade'] = stdin.readLineSync();
  print('=== Digite sua cidade ===');
  cadastro['cidade'] = stdin.readLineSync();
  print('=== Digite seu estado ===');
  cadastro['estado'] = stdin.readLineSync();
  cadastros.add(cadastro);

}