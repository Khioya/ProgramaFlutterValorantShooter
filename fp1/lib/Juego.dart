import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fp1/main.dart';

class Juego extends StatefulWidget {
  const Juego({Key? key, required this.agente}) : super(key: key);
  final String agente;

  @override
  // ignore: no_logic_in_create_state
  JuegoState createState() => JuegoState(agente: agente);
}

class Estatica {
  static int valor = 0;
  static bool button1 = true;
  static bool button2 = true;
  static bool button3 = true;
  static bool button4 = true;
  static bool button5 = true;

  static String img1 = 'assets/Astra.png';
  static String img2 = 'assets/KAYO.png';
  static String img3 = 'assets/Jett.png';
  static String img4 = 'assets/Killjoy.png';
  static String img5 = 'assets/Raze.png';
}

class JuegoState extends State<Juego> {
  final String agente;
  JuegoState({Key? key, required this.agente});

  late final AudioCache _audioCache;
  late final AudioCache _audioCache2;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(
      prefix: 'assets/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );
    _audioCache2 = AudioCache(
      prefix: 'assets/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );
  }

  Future<bool> ace() async {
    if (Estatica.valor == 5) {
      return true;
    } else {
      return false;
    }
  }

  Future<int> killImage() async {
    switch (Estatica.valor) {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 3;
      case 4:
        return 4;
      case 5:
        return 5;
      default:
        return 0;
    }
  }

  killSound() async {
    switch (Estatica.valor) {
      case 1:
        _audioCache.play('primera_kill.mp3');
        break;
      case 2:
        _audioCache.play('segunda_kill.mp3');
        break;
      case 3:
        _audioCache.play('tercera_kill.mp3');
        break;
      case 4:
        _audioCache.play('cuarta_kill.mp3');
        break;
      case 5:
        _audioCache.play('quinta_kill.mp3');
        agentKillSound();
        break;
      default:
    }
  }

  agentKillSound() async {
    await Future.delayed(const Duration(seconds: 2));
    switch (agente) {
      case 'Astra':
        _audioCache2.play('Astra.mp3');
        break;
      case 'Breach':
        _audioCache2.play('Breach.mp3');
        break;
      case 'Brimstone':
        _audioCache2.play('Brimstone.mp3');
        break;
      case 'Chamber':
        _audioCache2.play('Chamber.mp3');
        break;
      case 'Cypher':
        _audioCache2.play('Cypher.mp3');
        break;
      case 'Jett':
        _audioCache2.play('Jett.mp3');
        break;
      case 'KAY-O':
        _audioCache2.play('KAYO.mp3');
        break;
      case 'Killjoy':
        _audioCache2.play('Killjoy.mp3');
        break;
      case 'Neon':
        _audioCache2.play('Neon.mp3');
        break;
      case 'Omen':
        _audioCache2.play('Omen.mp3');
        break;
      case 'Phoenix':
        _audioCache2.play('Phoenix.mp3');
        break;
      case 'Raze':
        _audioCache2.play('Raze.mp3');
        break;
      case 'Reyna':
        _audioCache2.play('Reyna.mp3');
        break;
      case 'Sage':
        _audioCache2.play('Sage.mp3');
        break;
      case 'Skye':
        _audioCache2.play('Skye.mp3');
        break;
      case 'Sova':
        _audioCache2.play('Sova.mp3');
        break;
      case 'Viper':
        _audioCache2.play('Viper.mp3');
        break;
      case 'Yoru':
        _audioCache2.play('Yoru.mp3');
        break;
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
              image: AssetImage("assets/assent.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            Divider(
              height: height * 0.3,
            ),
            Positioned(
              top: 130,
              left: 260,
              height: height * 0.22,
              width: width * 0.22,
              child: IconButton(
                icon: Image.asset(Estatica.img1),
                onPressed: () {
                  if (Estatica.button1 == true) {
                    Estatica.valor++;
                    killSound();
                    setState(() {
                      Estatica.button1 = false;
                      Estatica.img1 = 'assets/muerte.png';
                    });
                  } else {
                    null;
                  }
                },
              ),
            ),
            Positioned(
              top: 450,
              left: 300,
              height: height * 0.22,
              width: width * 0.22,
              child: IconButton(
                icon: Image.asset(Estatica.img2),
                onPressed: () {
                  if (Estatica.button2 == true) {
                    Estatica.valor++;
                    killSound();
                    setState(() {
                      Estatica.button2 = false;
                      Estatica.img2 = 'assets/muerte.png';
                    });
                  } else {
                    null;
                  }
                },
              ),
            ),
            Positioned(
              top: 120,
              left: 180,
              height: height * 0.22,
              width: width * 0.22,
              child: IconButton(
                icon: Image.asset(Estatica.img3),
                onPressed: () {
                  if (Estatica.button3 == true) {
                    Estatica.valor++;
                    killSound();
                    setState(() {
                      Estatica.button3 = false;
                      Estatica.img3 = 'assets/muerte.png';
                    });
                  } else {
                    null;
                  }
                },
              ),
            ),
            Positioned(
              top: 380,
              left: 80,
              height: height * 0.22,
              width: width * 0.22,
              child: IconButton(
                icon: Image.asset(Estatica.img4),
                onPressed: () {
                  if (Estatica.button4 == true) {
                    Estatica.valor++;
                    killSound();
                    setState(() {
                      Estatica.button4 = false;
                      Estatica.img4 = 'assets/muerte.png';
                    });
                  } else {
                    null;
                  }
                },
              ),
            ),
            Positioned(
              top: 40,
              left: 30,
              height: height * 0.22,
              width: width * 0.22,
              child: IconButton(
                icon: Image.asset(Estatica.img5),
                onPressed: () {
                  if (Estatica.button5 == true) {
                    Estatica.valor++;
                    killSound();
                    setState(() {
                      Estatica.button5 = false;
                      Estatica.img5 = 'assets/muerte.png';
                    });
                  } else {
                    null;
                  }
                },
              ),
            ),
            FutureBuilder(
              future: ace(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  if (snapshot.data == true) {
                    return Container(
                      alignment: Alignment.center,
                      height: height,
                      width: width,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        height: height * 0.12,
                        width: width * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Divider(
                              height: height * 0.025,
                            ),
                            const Text(
                              'ACE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Center();
                  }
                } else {
                  return const Center();
                }
              },
            ),
            FutureBuilder(
                future: killImage(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('An error has occurred!'),
                    );
                  } else if (snapshot.hasData) {
                    if (snapshot.data == 1) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.9,
                        width: width,
                        child: IconButton(
                          iconSize: 100,
                          icon: Image.asset('assets/primera_kill.png'),
                          onPressed: () {},
                        ),
                      );
                    } else if (snapshot.data == 2) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.9,
                        width: width,
                        child: IconButton(
                          iconSize: 100,
                          icon: Image.asset('assets/segunda_kill.png'),
                          onPressed: () {},
                        ),
                      );
                    } else if (snapshot.data == 3) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.9,
                        width: width,
                        child: IconButton(
                          iconSize: 100,
                          icon: Image.asset('assets/tercera_kill.png'),
                          onPressed: () {},
                        ),
                      );
                    } else if (snapshot.data == 4) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.9,
                        width: width,
                        child: IconButton(
                          iconSize: 100,
                          icon: Image.asset('assets/cuarta_kill.png'),
                          onPressed: () {},
                        ),
                      );
                    } else if (snapshot.data == 5) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        height: height * 0.9,
                        width: width,
                        child: IconButton(
                          iconSize: 100,
                          icon: Image.asset('assets/quinta_kill.png'),
                          onPressed: () {},
                        ),
                      );
                    } else {
                      return Container();
                    }
                  } else {
                    return Container();
                  }
                }),
            FutureBuilder(
              future: ace(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  if (snapshot.data == true) {
                    return Row(
                      children: [
                        Container(
                            alignment: Alignment.bottomLeft,
                            height: height,
                            width: width * 0.5,
                            child: SizedBox(
                              width: width * 0.49,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black87, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Estatica.valor = 0;
                                  Estatica.button1 = true;
                                  Estatica.button2 = true;
                                  Estatica.button3 = true;
                                  Estatica.button4 = true;
                                  Estatica.button5 = true;

                                  Estatica.img1 = 'assets/Astra.png';
                                  Estatica.img2 = 'assets/KAYO.png';
                                  Estatica.img3 = 'assets/Jett.png';
                                  Estatica.img4 = 'assets/Killjoy.png';
                                  Estatica.img5 = 'assets/Raze.png';
                                  setState(() {});
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()),
                                      (Route<dynamic> route) => false);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 24.0,
                                ),
                                label: const Text(
                                  'Regresar al menu',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            )),
                        Container(
                            alignment: Alignment.bottomRight,
                            height: height,
                            width: width * 0.5,
                            child: SizedBox(
                              width: width * 0.49,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black87, // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Estatica.valor = 0;
                                  Estatica.button1 = true;
                                  Estatica.button2 = true;
                                  Estatica.button3 = true;
                                  Estatica.button4 = true;
                                  Estatica.button5 = true;
                                  Estatica.img1 = 'assets/Astra.png';
                                  Estatica.img2 = 'assets/KAYO.png';
                                  Estatica.img3 = 'assets/Jett.png';
                                  Estatica.img4 = 'assets/Killjoy.png';
                                  Estatica.img5 = 'assets/Raze.png';
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.replay_outlined,
                                  size: 24.0,
                                ),
                                label: const Text(
                                  'Volver a jugar',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ))
                      ],
                    );
                  } else {
                    return const Center();
                  }
                } else {
                  return const Center();
                }
              },
            ),
          ]),
        ),
      ),
    );
  }
}
