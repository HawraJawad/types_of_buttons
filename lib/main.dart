import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      //buton that will not disapear when I scroll my screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 79, 156, 119),
        child: Icon(Icons.add),
      ),
      // I will make a stack to contian all type of buttons
      body: Stack(
        children: [
          // I will put all button inside positioned to decide its direction
          Positioned(
              left: 30,
              top: 15,
              child: ElevatedButton(
                  child: Text(
                    "I'm ElevatedButton",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {
                    print("Welcome");
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pinkAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    elevation: MaterialStateProperty.all(10),
                    /*shadow of button*/
                    shadowColor: MaterialStateProperty.all(Colors.pink),
                    overlayColor: MaterialStateProperty.all(Colors.grey),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.pink))),
                  ))),

          Positioned(
              left: 30,
              top: 100,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.queue_music,
                    color: Colors.amber,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      padding: EdgeInsets.all(20),
                      shadowColor: Colors.greenAccent,
                      elevation: 10,
                      visualDensity: VisualDensity.standard),
                  label: Text(
                    "I'm elevatedbutton.Icon",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))),
          Positioned(
              left: 30,
              top: 185,
              child: MaterialButton(
                onPressed: () {
                  print("Welcome");
                },
                child: Text(
                  "I'm MaterialButton",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
              )),
          Positioned(
              left: 30,
              top: 275,
              child: TextButton(
                onPressed: () {
                  print("Wellcome");
                },
                child: Text(
                  "I'm textbutton",
                  style: TextStyle(fontSize: 20),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
              )),
          Positioned(
              left: 30,
              top: 360,
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.redAccent)
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("I'm InkWell button",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              )),
        ],
      ),
    );
  }
}
