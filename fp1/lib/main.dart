import 'package:flutter/material.dart';
import 'Juego.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class Estatica {
  static String miValor = "";
}

class _HomePageState extends State<HomePage> {
  List list = [];

  void initState() {
    Estatica.miValor = '';
    super.initState();
  }

  final textController = TextEditingController();

  String dropdownValue = '';

  Future<String> getValue() async {
    switch (Estatica.miValor) {
      case 'Astra':
        return 'Astra';
      case 'Breach':
        return 'Breach';
      case 'Brimstone':
        return 'Brimstone';
      case 'Chamber':
        return 'Chamber';
      case 'Cypher':
        return 'Cypher';
      case 'Jett':
        return 'Jett';
      case 'KAY-O':
        return 'KAY-O';
      case 'Killjoy':
        return 'Killjoy';
      case 'Neon':
        return 'Neon';
      case 'Omen':
        return 'Omen';
      case 'Phoenix':
        return 'Phoenix';
      case 'Raze':
        return 'Raze';
      case 'Reyna':
        return 'Reyna';
      case 'Sage':
        return 'Sage';
      case 'Skye':
        return 'Skye';
      case 'Sova':
        return 'Sova';
      case 'Viper':
        return 'Viper';
      case 'Yoru':
        return 'Yoru';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/seleccion.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(
              height: height * 0.3,
            ),
            FutureBuilder(
              future: getValue(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  //return Text(snapshot.data!.correo);
                  switch (snapshot.data!) {
                    case 'Astra':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Astra.png'),
                        radius: 65.0,
                      );
                    case 'Breach':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Breach.png'),
                        radius: 65.0,
                      );
                    case 'Brimstone':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Brimstone.png'),
                        radius: 65.0,
                      );
                    case 'Chamber':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Chamber.png'),
                        radius: 65.0,
                      );
                    case 'Cypher':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Cypher.png'),
                        radius: 65.0,
                      );
                    case 'Jett':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Jett.png'),
                        radius: 65.0,
                      );
                    case 'KAY-O':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/KAYO.png'),
                        radius: 65.0,
                      );
                    case 'Killjoy':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Killjoy.png'),
                        radius: 65.0,
                      );
                    case 'Neon':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Neon.png'),
                        radius: 65.0,
                      );
                    case 'Omen':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Omen.png'),
                        radius: 65.0,
                      );
                    case 'Phoenix':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Phoenix.png'),
                        radius: 65.0,
                      );
                    case 'Raze':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Raze.png'),
                        radius: 65.0,
                      );
                    case 'Reyna':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Reyna.png'),
                        radius: 65.0,
                      );
                    case 'Sage':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Sage.png'),
                        radius: 65.0,
                      );
                    case 'Skye':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Skye.png'),
                        radius: 65.0,
                      );
                    case 'Sova':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Sova.png'),
                        radius: 65.0,
                      );
                    case 'Viper':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Viper.png'),
                        radius: 65.0,
                      );
                    case 'Yoru':
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/Yoru.png'),
                        radius: 65.0,
                      );
                    default:
                      return const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 65.0,
                      );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xFFF96332))),
                  );
                }
              },
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 40),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  Estatica.miValor = newValue;
                });
              },
              items: <String>[
                '',
                'Astra',
                'Breach',
                'Brimstone',
                'Chamber',
                'Cypher',
                'Jett',
                'KAY-O',
                'Killjoy',
                'Neon',
                'Omen',
                'Phoenix',
                'Raze',
                'Reyna',
                'Sage',
                'Skye',
                'Sova',
                'Viper',
                'Yoru'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Divider(
              height: height * 0.33,
            ),
            SizedBox(
                height: height * 0.08,
                width: width * 0.60,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black87, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Juego(agente: Estatica.miValor),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.lock,
                    size: 24.0,
                  ),
                  label: const Text(
                    'FIJAR',
                    style: TextStyle(fontSize: 30),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
