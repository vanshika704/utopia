import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:porcupine_flutter/porcupine_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class WakeWordService {
  PorcupineManager? _porcupineManager;

  Future<void> initWakeWordDetection() async {
    // Load the Picovoice key from the environment file
    String accessKey = dotenv.env['ACCESS_KEY'] ?? '';

    // Request microphone permission
    var status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw Exception("Microphone permission not granted");
    }

    // Initialize Porcupine Manager
    _porcupineManager = await PorcupineManager.fromKeywordPaths(
      accessKey,
      ['assets/ok_help.ppn'], // Path to your wake word model
      [0.5] as WakeWordCallback, // Sensitivity level for detection
    
    );

    // Start listening
    await _porcupineManager?.start();
  }

  void stopListening() async {
    await _porcupineManager?.stop();
  }

  void dispose() {
    _porcupineManager?.delete();
  }
}

