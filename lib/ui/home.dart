
import 'package:flutter/material.dart';



//stlfull
class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;
  List quotes = [
    "En iyi intikam düşmanınız gibi olmamaktır.",
    "Her insan, yapmadığı tüm iyiliklerden suçludur.",
    "Kafanı aslanın ağzına sokarsan, bir gün onu ısırırsa şikayet edemezsin.",
    "Bana kapitalist göster, ben de sana kan emici göstereceğim.",
    "Her şey, neye layıksa ona dönüşür.",
    "Derdi dünya olanın, dünya kadar derdi olur.",
    "Ya susmak ya da suskunluktan daha kıymetli bir söz söylemek gerekir.",
    "Gülmek için mutlu olmayı beklemeyin belki de gülmeden ölürsünüz.",
    "Yorgun olduğumuzda, uzun zaman önce fethettiğimiz fikirlere saldırıyoruz.",
    "Halkın işine kayıtsızlık için iyi adamların ödediği bedel, kötü adamlar tarafından yönetilir",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Container(width: 350,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.5)
                ),
                child: Center(child: Text(quotes[_index% quotes.length],
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontStyle: FontStyle.italic,
                  fontSize: 16.5,

                ),))),

            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent,
                  icon: Icon(Icons.wb_sunny),
                  label:Text("Öğüt ver bana!", style: TextStyle(

                  ))),
            )
          ],
        )
      ),
    );
  }

 void  _showQuote() {
    //increment our index/counter by 1
   setState(() {
     _index+=1;

   });

 }
}


class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
        centerTitle:true,
      ),

      backgroundColor: Colors.black,
      body:Container(
        alignment: Alignment.center,
        child:Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

 Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Paulo Dichone",
        style: TextStyle(fontSize: 20.9,
        fontWeight: FontWeight.bold),),
        Text("Bidasşldsşaldsadadsa"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.person_outline),
            Text("T: @buildappswithme")
          ],
        )
      ],
    ),

    );

  }

 Container _getAvatar() {
    return Container(
      width: 100,
        height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.blue, width: 1.2),
        image: DecorationImage(image:NetworkImage("https://picsum.photos/200/300"),
        fit: BoxFit.cover),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        actions:<Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Email Tapped!")),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: () =>  debugPrint("Tapped Button!")),
          IconButton(icon: Icon(Icons.account_box), onPressed: () => debugPrint("Box Tapped")),
        ]
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightGreen,
      child: Icon(Icons.call_missed),
      onPressed: () => debugPrint("Hello")),

      bottomNavigationBar:  BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("User")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Wheather")),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Clock")),

      ],onTap: (int index) => debugPrint("Tapped item: $index")),
      backgroundColor: Colors.blue,
      body: Container(
       alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

          ],
        ),
      ),


    );

  }
}
//stl!!!!!
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content:  Text("HELLO AGAIN!"),
        backgroundColor: Colors.amberAccent.shade700,);
        Scaffold.of(context).showSnackBar(snackBar);
      },

      child:  Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: Text("Push the button!"),
      ),
    );
  }
}






