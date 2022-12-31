import 'dart:math';
import 'package:flutter/material.dart';
import 'package:soundsoul/Song_data.dart';

class SeekBarData {
  final Duration position;
  final Duration duration;

  SeekBarData(this.position, this.duration);
}

class SeekBar extends StatefulWidget {
  final Duration position;
  final Duration duration;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;
      const SeekBar(
      {Key? key,
      required this.position,
      required this.duration,
      this.onChanged,
      this.onChangeEnd})
      : super(key: key);

  @override
  State<SeekBar> createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double? _dragvalue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('${widget.position}'),
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              thumbShape: const RoundSliderThumbShape(
                disabledThumbRadius: 4,
                enabledThumbRadius: 7,
              ),
              overlayShape: const RoundSliderOverlayShape(
                overlayRadius: 10,
              ),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white.withOpacity(0.5),
              thumbColor: Colors.white,
              overlayColor: Colors.white,
            ),
            child: Slider(
                min: 0.0,
                max: widget.duration.inMilliseconds.toDouble(),
                value: min(
                    _dragvalue ?? widget.position.inMilliseconds.toDouble(),
                    widget.duration.inMilliseconds.toDouble()),
                onChanged: (value){
                  setState(() {
                    _dragvalue = value;
                  });
                  if(widget.onChanged != null)
                    {
                      widget.onChanged!(Duration(milliseconds: value.round(),),);
                    }
                },
              onChangeEnd: (value){
                  if(widget.onChangeEnd != null)
                    {
                      widget.onChangeEnd!(Duration(milliseconds: value.round()));
                    }
                  _dragvalue = null;
              },
                )
          ),
        ),
        Text(
          '${widget.duration}',
        ),
      ],
    );
  }
}
