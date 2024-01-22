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

  //in here we define the data/state that we want to change overtime
  int proficiencyLevel = 0;

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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            proficiencyLevel ++;
          });
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb1.jpeg'),
                radius: 50.0
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,//[800],
            ),
            const Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            const SizedBox(height: 10.0),
            const Text(
                'Daghlas Kaire',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            const SizedBox(height: 30.0),
            const Text(
                'PROFESSION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            const SizedBox(height: 10.0),
            const Text(
                'Mobile Applications Developer',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT LANGUAGE(s)',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
                'Flutter, Kotlin, Swift',
                style: TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            const SizedBox(height: 30.0),
            const Text(
              'PROFICIENCY LEVEL(/10)',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
                '$proficiencyLevel',
                style: const TextStyle(
                    color: Colors.white,//[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,//[800],
            ),
            const Text('CONTACTS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0),
            const Row(
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
            const SizedBox(height: 15.0),
            const Row(
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