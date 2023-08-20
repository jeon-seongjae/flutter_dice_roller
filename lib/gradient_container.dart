import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

// Alignment? startAlignment;
// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
      : firstColor = Colors.black12,
        secondColor = Colors.indigo;

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            firstColor,
            secondColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(child: StyldText('Hello World!!')),
//     );
//   }
// }
