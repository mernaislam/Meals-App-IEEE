import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/theming/colors.dart';

class CustomSwitchListTile extends ConsumerWidget {
  final String title;
  final String subTitle;
  final Filters filter;
  const CustomSwitchListTile({
    super.key,
    required this.subTitle,
    required this.title,
    required this.filter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return SwitchListTile(
      inactiveTrackColor: AppColors.white,
      activeTrackColor: AppColors.darkGreen,
      thumbColor: const MaterialStatePropertyAll(AppColors.black),
      value: activeFilters[filter]!,
      onChanged: (isChecked) {
        ref.read(filtersProvider.notifier).setFilter(filter, isChecked);
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          fontSize: 12.5,
          fontWeight: FontWeight.w500,
        ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
