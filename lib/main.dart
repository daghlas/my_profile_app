import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: ProfileCard(),
    ));

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Developer Profile Card'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb1.jpeg'),
                radius: 50.0
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,//[800],
            ),
            Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'Daghlas Kaire',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
                'PROFESSION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0),
            Text(
                'Mobile Applications Developer',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LANGUAGE(s)',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
                'Flutter, Kotlin, Swift',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Text(
              'PROFICIENCY LEVEL(/10)',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
                '8',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,//[800],
            ),
            Text('CONTACTS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.white,//[400],
                ),
                SizedBox(width: 10.0),
                Text(
                    'daghlaskaire58@gmail.com',
                    style: TextStyle(
                        color: Colors.grey,//[400],
                        letterSpacing: 1.0,
                        fontSize: 18.0,
                    )
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.white,//[400],
                ),
                SizedBox(width: 10.0),
                Text(
                    '0723325631',
                    style: TextStyle(
                      color: Colors.grey,//[400],
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}