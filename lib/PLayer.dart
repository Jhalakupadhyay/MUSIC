import 'package:flutter/material.dart';
import 'package:soundsoul/Song_data.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import 'package:soundsoul/SeekBar.dart';

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  song s = song.songs[0];
  AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setAudioSource(AudioSource.uri(Uri.parse(
        'https://soundcloud.com/house-hub/harry-styles-as-it-was-casperzz-remix')));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          player.positionStream, player.durationStream,
          (Duration position, Duration? duration) {
        return SeekBarData(
          position, duration ?? Duration.zero);
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            s.coverurl,
            fit: BoxFit.cover,
          ),
          const Background_Shade(),
          StreamBuilder<SeekBarData>(
              stream:_seekBarDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                    position: positionData?.position ?? Duration.zero,
                    duration: positionData?.duration ?? Duration.zero,
                    onChangeEnd: player.seek,
                );
              }),
        ],
      ),
    );
  }
}

class Background_Shade extends StatelessWidget {
  const Background_Shade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.9),
              Colors.white.withOpacity(0.2)
            ],
            stops: const [
              0.0,
              0.4,
              0.6
            ]).createShader(rect);
      },
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
          ),
        ),
      ),
    );
  }
}
