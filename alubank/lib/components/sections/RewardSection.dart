import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';
import '../../themes/theme_colors.dart';
import '../box_card.dart';

class Rewardsection extends StatelessWidget {
  const Rewardsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text('Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: BoxCard(boxContent: _RewardActivityContent()),
        ),
      ],
    );
  }
}

class _RewardActivityContent extends StatelessWidget {
  const _RewardActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ThemeColors.boxCardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pontos totais:'),
                  Text('3000', style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Text('Objetivos:', style: TextStyle(fontSize: 20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['delivery']),
                ),
                Text('Entrega grátis: 15000 pts'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['streaming']),
                ),
                Text('1 mês de streaming: 30000 pts'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
