import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/theming/colors.dart';
import 'package:meals_app/widgets/custome_filter_switch.dart';

class FiltersView extends ConsumerWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
        backgroundColor: AppColors.barColor,
        foregroundColor: AppColors.white,
      ),
      backgroundColor: AppColors.bodyBackgroundColor,
      body: const Column(
        children: [
          CustomSwitchListTile(
            title: 'Gluten-free',
            subTitle: 'Only include gluten-free meals.',
            filter: Filters.glutenFree,
          ),
          CustomSwitchListTile(
            title: 'Lactose-free',
            subTitle: 'Only include Lactose-free meals.',
            filter: Filters.lactoseFree,
          ),
          CustomSwitchListTile(
            title: 'Vegetarian',
            subTitle: 'Only include vegetarian meals.',
            filter: Filters.vegetarian,
          ),
          CustomSwitchListTile(
            title: 'Vegan',
            subTitle: 'Only include Vegan meals.',
            filter: Filters.vegan,
          ),
        ],
      ),
    );
  }
}
