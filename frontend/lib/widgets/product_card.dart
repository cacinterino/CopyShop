import 'package:flutter/cupertino.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                product.image,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 180,
                    color: CupertinoColors.systemGrey4,
                    child: const Icon(CupertinoIcons.cube_box, size: 50),
                  );
                },
              ),
            ),
            // Product info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '\$${(product.price * (1 - product.discount / 100)).toStringAsFixed(2)}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (product.discount > 0)
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              '\$${product.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: CupertinoColors.systemGrey,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${product.sold} sold',
                      style: const TextStyle(
                          color: CupertinoColors.systemGrey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
