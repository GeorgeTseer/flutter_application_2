import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../settings/settings_view.dart';

import '../../main.dart';

class Soundboard extends StatefulWidget {
  Soundboard({Key? key}) : super(key: key);
  static const routeName = '/soundboard';
  @override
  _SoundboardState createState() => _SoundboardState();
}

class _SoundboardState extends State<Soundboard>
    with SingleTickerProviderStateMixin {
  late AudioPlayer _audioPlayer1,
      _audioPlayer2,
      _audioPlayer3,
      _audioPlayer4,
      _audioPlayer5,
      _audioPlayer6,
      _audioPlayer7,
      _audioPlayer8,
      _audioPlayer9,
      _audioPlayer10,
      _audioPlayer11,
      _audioPlayer12,
      _audioPlayer13,
      _audioPlayer14,
      _audioPlayer15;
//наполнение санудборда
  @override
  void initState() {
    _audioPlayer1 = AudioPlayer()..setAsset('assets/sounds/551512.mp3');
    _audioPlayer2 = AudioPlayer()
      ..setAsset('assets/sounds/120659533864685.mp3');
    _audioPlayer3 = AudioPlayer()..setAsset('assets/sounds/audio55544.mp3');
    _audioPlayer4 = AudioPlayer()..setAsset('assets/sounds/008701160_pre.mp3');
    _audioPlayer5 = AudioPlayer()
      ..setAsset('assets/sounds/cheshuegorlyj-moho.mp3');
    _audioPlayer6 = AudioPlayer()..setAsset('assets/sounds/rain-03.mp3');
    _audioPlayer7 = AudioPlayer()..setAsset('assets/sounds/rain-02.mp3');
    _audioPlayer8 = AudioPlayer()
      ..setAsset('assets/sounds/120659533864685.mp3');
    _audioPlayer9 = AudioPlayer()..setAsset('assets/sounds/w079xoaqrqrqlb.mp3');
    _audioPlayer10 = AudioPlayer()..setAsset('assets/sounds/008701160_pre.mp3');
    _audioPlayer11 = AudioPlayer()..setAsset('assets/sounds/rain-03.mp3');
    _audioPlayer12 = AudioPlayer()..setAsset('assets/sounds/rain-03.mp3');
    _audioPlayer13 = AudioPlayer()..setAsset('assets/sounds/rain-02.mp3');
    _audioPlayer14 = AudioPlayer()
      ..setAsset('assets/sounds/120659533864685.mp3');
    _audioPlayer15 = AudioPlayer()
      ..setAsset('assets/sounds/w079xoaqrqrqlb.mp3');
    reklama();
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer1.dispose();
    _audioPlayer2.dispose();
    _audioPlayer3.dispose();
    _audioPlayer4.dispose();
    _audioPlayer5.dispose();
    _audioPlayer6.dispose();
    _audioPlayer7.dispose();
    _audioPlayer8.dispose();
    _audioPlayer9.dispose();
    _audioPlayer10.dispose();
    _audioPlayer11.dispose();
    _audioPlayer12.dispose();
    _audioPlayer13.dispose();
    _audioPlayer14.dispose();
    _audioPlayer15.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book),
            onPressed: () {
              reklama();
              Navigator.pop(context);
            },
          ),
          Spacer(),
          IconButton(
            icon: const Icon(Icons.volume_up_outlined),
            onPressed: () {
              reklama();
            },
          ),
          Spacer(),
          IconButton(
            alignment: Alignment.center,
            icon: const Icon(Icons.settings),
            onPressed: () {
              reklama();
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: <Widget>[
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer1),
                Text(
                  'bear',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer2),
                Text(
                  'T-rex',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer3),
                Text(
                  'cat',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer4),
                Text(
                  'wild',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer5),
                Text(
                  'rain',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer6),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer7),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer8),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer9),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer10),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer11),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer12),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer13),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer14),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Controls(audioPlayer: _audioPlayer15),
                Text(
                  'raining',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({
    super.key,
    required this.audioPlayer,
  });
  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return IconButton(
            onPressed: audioPlayer.play,
            icon: Icon(Icons.play_arrow),
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            onPressed: audioPlayer.pause,
            icon: Icon(Icons.play_arrow),
          );
        }
        return IconButton(
          onPressed: audioPlayer.play,
          icon: Icon(Icons.play_arrow),
        );
      },
    );
  }
}
