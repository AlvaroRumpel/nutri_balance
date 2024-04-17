import 'package:flutter/material.dart';

import '../app_colors.dart';

class GridItem extends StatelessWidget {
  final String filePath;
  final String label;
  const GridItem({
    super.key,
    required this.filePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.white.shade900,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: AppColors.black.shade100.withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            filePath,
            scale: 1.3,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 20,
                ),
          ),
        ],
      ),
    );
  }
}
