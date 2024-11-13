import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                radius: 25,
              ).animate().slideX(
                    duration: 800.ms,
                    begin: -3,
                    end: 0.03,
                  ),
              const SizedBox(width: 80),
              locationWidget("Karachi, Pakistan", context),
              const Spacer(),
              const Icon(Icons.sort)
                  .animate()
                  .slideX(duration: 800.ms, begin: 3, end: -0.01)
            ],
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            children: [
              Text(
                "Hello, ",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: 'Prompt', fontSize: 32, color: Colors.white70),
              ).animate().fadeIn(duration: 1200.ms),
              Text(
                "Umer",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: 'Prompt', fontSize: 32, color: Colors.white),
              ).animate().fadeIn(duration: 1200.ms),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Text(
            "Choose your ideal car",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: 'Prompt', fontSize: 18, color: Colors.white70),
          ).animate().fadeIn(duration: 1200.ms),
        ),
      ],
    );
  }
}

Widget locationWidget(String location, BuildContext context) {
  return Row(
    children: [
      const Icon(Iconsax.location, size: 12).animate().scale(duration: 800.ms),
      const SizedBox(width: 3),
      Text(
        location,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontFamily: 'Prompt', fontSize: 12, color: Colors.white),
      ),
    ],
  ).animate().scale(duration: 800.ms);
}
