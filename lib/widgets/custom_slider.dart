import 'package:flutter/material.dart';
import "dart:ui" as ui;

import 'package:flutter/services.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var curValue = 0.4;
  ui.Image? customImage;

  Future<ui.Image> load(String asset) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: 25, targetWidth: 25);
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    return frameInfo.image;
  }

  @override
  void initState() {
    load("assets/image/icon_one_circle.png").then((image) {
      setState(() {
        customImage = image;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(240, 233, 251, 0.23),
          border: Border.all(
            color: const Color.fromARGB(126, 255, 255, 255),
          ),
          borderRadius: BorderRadius.circular(50)),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "10,000",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Expanded(
            flex: 2,
            child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: 7,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: const Color.fromARGB(121, 20, 132, 224),
                    thumbShape: customImage != null
                        ? SliderThumbImage(customImage!)
                        : const RoundSliderThumbShape()),
                child: Slider(
                  label: curValue.toString(),
                  onChanged: (value) => {
                    setState(
                      () {
                        curValue = value;
                      },
                    )
                  },
                  value: curValue,
                )),
          ),
          const Text(
            "30,000",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class SliderThumbImage extends SliderComponentShape {
  final ui.Image image;

  SliderThumbImage(this.image);
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0, 0);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    var canvas = context.canvas;
    final picWidth = image.width;
    final picHeight = image.height;

    Offset picOffset = Offset(
      (center.dx - (picWidth / 2)),
      (center.dy - (picHeight / 2)),
    );

    Paint paint = Paint()..filterQuality = FilterQuality.high;
    canvas.drawImage(image, picOffset, paint);
  }
}
