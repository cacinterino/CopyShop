import 'package:flutter/cupertino.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../widgets/category_tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchQuery = '';
  int selectedCategory = 0;

  final Map<int, String> categories = {
    0: "All Products",
    1: "Shirts",
    2: "Jackets",
  };

  @override
  Widget build(BuildContext context) {
    final filteredProducts = products.where((p) {
      final matchesSearch =
      p.name.toLowerCase().contains(searchQuery.toLowerCase());

      if (selectedCategory == 0) return matchesSearch;

      return matchesSearch && p.category == categories[selectedCategory]!;
    }).toList();

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CopyShop'),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CupertinoSearchTextField(
                placeholder: 'Search products',
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ),
            // Category tabs
            CategoryTabs(
              categories: categories,
              selectedCategory: selectedCategory,
              onCategoryChanged: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
            ),
            const SizedBox(height: 12),
            // Product grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.65,
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  return ProductCard(product: filteredProducts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
