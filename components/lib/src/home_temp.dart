import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final options = ['1','2','3','4'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        ),
        body: ListView(
          // children: _createItems()
          children: _createItemsShort()
        ),
    );
  }

  List<Widget> _createItems(){
    List<Widget> list = new List<Widget>();

    for (String item in options) {
      
      final tempWidget = ListTile(
        title: Text(item),
        );

      list.add(tempWidget);
      list.add(Divider());
      
      // Se puede hacer asi tambien
      // list..add(tempWidget)
      //     ..add(Divider());
    }
    return list;
  }
  List<Widget> _createItemsShort(){

    var widgets = options.map(( item ){
      
      
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('esto es un sub'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();
    return widgets;
  }
}