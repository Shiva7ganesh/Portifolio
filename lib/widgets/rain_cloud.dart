import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:rive/rive.dart';

class Rain extends StatefulWidget {
  const Rain({super.key, required this.top, required this.oposite});
  final double top;
  final bool oposite;

  @override
  State<Rain> createState() => _RainState();
}

class _RainState extends State<Rain> {
  SMIInput<bool>? rain;
  SMIInput<bool>? hover;
  Artboard? waterArtBoard;

  void playRain() {
    if (rain != null) {
      rain!.value = !rain!.value;
    }
  }

  @override
  void initState() {
    super.initState();
    initializeRive();
  }

  Future<void> initializeRive() async {
    try {
      // Initialize Rive's WASM engine
      await RiveFile.initialize();

      // Load the .riv file after initialization
      final data = await rootBundle.load('assets/riv/rain.riv');
      final file = RiveFile.import(data);
      final artBoard = file.mainArtboard;
      var controller = StateMachineController.fromArtboard(artBoard, 'State Machine 1');

      if (controller != null) {
        artBoard.addController(controller);
        rain = controller.findInput('isPressed');
        hover = controller.findInput('isHover');
        rain?.value = false;
        hover?.value = false;
      }

      setState(() {
        waterArtBoard = artBoard;
      });
    } catch (e) {
      // Handle any errors that may occur
      debugPrint('Error loading Rive file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return TweenAnimationBuilder(
      duration: const Duration(seconds: 600),
      tween: Tween(
          begin: widget.oposite ? size.width.toDouble() - 150 : 0.0,
          end: widget.oposite ? 0.0 : size.width.toDouble() - 150),
      builder: (context, value, _) {
        return Positioned(
          top: widget.top,
          right: value,
          child: MouseRegion(
            onEnter: (_) => hover?.value = true,
            onExit: (_) => hover?.value = false,
            child: GestureDetector(
              onTap: () => playRain(),
              child: SizedBox(
                height: 100,
                width: 220,
                child: waterArtBoard != null
                    ? Rive(
                  useArtboardSize: true,
                  artboard: waterArtBoard!,
                  fit: BoxFit.cover,
                )
                    : const Center(child: CircularProgressIndicator()), // Show loading indicator
              ),
            ),
          ),
        )
            .animate()
            .fadeIn(delay: 1.5.seconds, duration: .35.seconds)
            .slide(begin: const Offset(0, .2));
      },
    );
  }
}
