import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/cv.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                Text(
                  'Keith Alexandra C. Mandapat',
                  style: TextStyle(
                    fontFamily: 'Orpheus',
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  'ABOUT ME',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color.fromARGB(255, 0, 38, 255),
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.account_box,
                  ),
                  label: Text('PERSONAL INFORMATION'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.school,
                  ),
                  label: Text('EDUCATION BACKGROUND'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  ),
                ), // ElevatedButton
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhRoute()));
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.laptop,
                  ),
                  label: Text('PERSONAL EXPERIENCE'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                  ),
                ), // ElevatedButton
                Padding(padding: EdgeInsets.only(top: 40)),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  icon: Icon(
                    // <-- Icon
                    Icons.logout,
                  ),
                  label: Text('Logout'), // <-- Text
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color.fromARGB(255, 0, 60, 255),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                  ),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    ); // Scaffold
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
        backgroundColor: Color.fromARGB(255, 0, 170, 255),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Name: KEITH ALEXANDRA C. MANDAPAT',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Address: Banaoang, Sta.Barbara, Pangasinan' +
                      '\nPhone Number: +639311805765' +
                      '\nEmail: keith.mandapat6@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 17.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Color.fromARGB(255, 0, 170, 255),
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    'Bachelor of Science in Information Technology 2019-2023'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Philippine College of Science and Technology',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2017-2019'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Banaoang National Highschool',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2017'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Banaoang Central School',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2006-2012'),
              ),
            ),
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Background"),
        backgroundColor: Color.fromARGB(255, 0, 170, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.laptop,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  "Professional Summary",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I'm a fresh graduate and a graphic designe"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.laptop,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Skills and Abilities',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("Good-Communication, Computer Literate, Active Listener"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.laptop,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Graphic Designer',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text(
                    "I'm developing concepts, graphics and layouts, including making decisions about fonts, images, readability and readers needs."),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.laptop,
                  color: Color.fromARGB(255, 0, 170, 255),
                ),
                title: Text(
                  'Certificates',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text("NCII holder in Computer System Servicing "),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
