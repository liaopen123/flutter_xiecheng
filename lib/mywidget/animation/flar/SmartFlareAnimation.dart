import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SmartFlareAnimation extends StatefulWidget {
  _SmartFlareAnimationState createState() => _SmartFlareAnimationState();
}
enum AnimationToPlay {
  Activate,
  Deactivate,
  CameraTapped,
  PulseTapped,
  ImageTapped
}
class _SmartFlareAnimationState extends State<SmartFlareAnimation> {
  // width and height retrieved from the artboard values in the animation
  static const double AnimationWidth = 295.0;
  static const double AnimationHeight = 251.0;
  AnimationToPlay _animationToPlay = AnimationToPlay.Deactivate;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AnimationWidth,
      height: AnimationHeight,
      child: GestureDetector(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          onTapUp: (TapUpDetails details) {
            var localTouchPosition =
            (context.findRenderObject() as RenderBox).globalToLocal(
                details.globalPosition);
            var dx = localTouchPosition.dx;
            var dy = localTouchPosition.dy;
            print("dx:$dx,dy:$dy");


            var topHalfTouched = localTouchPosition.dy < AnimationHeight / 2;

            var leftSideTouched = localTouchPosition.dx < AnimationWidth / 3;

            var rightSideTouched = localTouchPosition.dx >
                (AnimationWidth / 3) * 2;

            var middleTouched = !leftSideTouched && !rightSideTouched;

            if (leftSideTouched && topHalfTouched) {
              print('TopLeft');
            } else if (middleTouched && topHalfTouched) {
              print('TopMiddle');
            } else if (rightSideTouched && topHalfTouched) {
              print('TopRight');
            } else {
              if (isOpen) {
                print('Bottom Close');
              } else {
                print('Bottom Open');
              }
            }



            if (leftSideTouched && topHalfTouched) {
              _setAnimationToPlay(AnimationToPlay.CameraTapped);
            } else if (middleTouched && topHalfTouched) {
              _setAnimationToPlay(AnimationToPlay.PulseTapped);
            } else if (rightSideTouched && topHalfTouched) {
              _setAnimationToPlay(AnimationToPlay.ImageTapped);
            } else {
              if (isOpen) {
                _setAnimationToPlay(AnimationToPlay.Deactivate);
              } else {
                _setAnimationToPlay(AnimationToPlay.Activate);
              }

              isOpen = !isOpen;
            }




          },
          child: FlareActor('assets/flar/button-animation.flr',
              animation: _getAnimationName(_animationToPlay))),

    );
  }


  String _getAnimationName(AnimationToPlay animationToPlay) {
    switch (animationToPlay) {
      case AnimationToPlay.Activate:
        return 'activate';
      case AnimationToPlay.Deactivate:
        return 'deactivate';
      case AnimationToPlay.CameraTapped:
        return 'camera_tapped';
      case AnimationToPlay.PulseTapped:
        return 'pulse_tapped';
      case AnimationToPlay.ImageTapped:
        return 'image_tapped';
        break;
      default:
        return 'deactivate';
    }
  }

  void _setAnimationToPlay(AnimationToPlay animation) {
    setState(() {
      _animationToPlay = animation;
    });
  }

}
