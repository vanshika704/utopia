
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceButtonPage extends StatefulWidget {
  const VoiceButtonPage({super.key});

  @override
  State<VoiceButtonPage> createState() => _VoiceButtonPageState();
}

class _VoiceButtonPageState extends State<VoiceButtonPage> {
  stt.SpeechToText _speechToText = stt.SpeechToText();
  bool _isListening = false;
  double _buttonSize = 200.0;
  Color _buttonColor = const Color.fromARGB(255, 227, 227, 227);  // Original color
  String _recognizedText = "";  // Variable to store recognized text

  @override
  void initState() {
    super.initState();
    _speechToText.initialize(onStatus: (status) {
      if (status == "listening") {
        setState(() {
          _isListening = true;
          _buttonSize = 220.0;
          _buttonColor = Colors.green;  // Turn button green while listening
        });
      } else {
        setState(() {
          _isListening = false;
          _buttonSize = 200.0;
          _buttonColor = const Color.fromARGB(255, 227, 227, 227);  // Default color when not listening
        });
      }
    });
  }

  // Start listening to the microphone
  void _startListening() {
    _speechToText.listen(onResult: (result) {
      setState(() {
        _recognizedText = result.recognizedWords;  // Update recognized text
        _buttonColor = const Color.fromARGB(255, 227, 227, 227);  // Reset color after listening
      });
    });
  }

  // Stop listening to the microphone
  void _stopListening() {
    _speechToText.stop();
    setState(() {
      _buttonColor = const Color.fromARGB(255, 227, 227, 227);  // Reset color after stop listening
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 191, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: _buttonSize,
              height: _buttonSize,
              decoration: BoxDecoration(
                color: _buttonColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  _isListening ? Icons.mic : Icons.mic_none,
                  color: const Color.fromARGB(255, 80, 59, 46),
                  size: 70.0,
                ),
                onPressed: () {
                  if (_isListening) {
                    _stopListening();  // Stop listening if already listening
                  } else {
                    setState(() {
                      _buttonColor = Colors.green;  // Turn button green when pressed to start listening
                    });
                    _startListening();  // Start listening when button is pressed
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            // Display the recognized text when listening
            if (_isListening)
              const Text(
                'Listening...',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 20),
            // Display recognized words
            Text(
              _recognizedText.isEmpty ? 'Say something...' : _recognizedText,
              style: const TextStyle(fontSize: 24, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
