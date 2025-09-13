import 'package:flutter/cupertino.dart';

class CategoryTabs extends StatelessWidget {
  final Map<int, String> categories;
  final int selectedCategory;
  final ValueChanged<int> onCategoryChanged;

  const CategoryTabs({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: CupertinoSegmentedControl<int>(
        children: categories.map((key, value) {
          return MapEntry(
            key,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(value),
            ),
          );
        }),
        groupValue: selectedCategory,
        onValueChanged: onCategoryChanged,
      ),
    );
  }
}
