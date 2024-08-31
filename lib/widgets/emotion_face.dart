import 'package:flutter/material.dart';

class EmotionalFace extends StatefulWidget {
  final String? emoticonFace;
  const EmotionalFace({Key? key, this.emoticonFace}) : super(key: key);

  @override
  State<EmotionalFace> createState() => _EmotionalFaceState();
}

class _EmotionalFaceState extends State<EmotionalFace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(16),
      child: Center(
          child:
              Text(widget.emoticonFace!, style: const TextStyle(fontSize: 25))),
    );
  }
}
