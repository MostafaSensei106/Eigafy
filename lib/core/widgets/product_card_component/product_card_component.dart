import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../config/constants/app_constants.dart';
import '../../models/product_model/product_model.dart';
import '../app_divider_components/full_app_divider_components.dart';
import '../button_components/icon_button_components/icon_button_filled_component.dart';

class ProductCardComponent extends StatelessWidget {
  const ProductCardComponent({required this.product, super.key});

  final ProductModel product;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(AppConstants.outBorderRadius),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppConstants.outBorderRadius),
                ),
                child: Image.network(
                  product.imageUrl.isNotEmpty
                      ? product.imageUrl
                      : 'https://picsum.photos/200',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButtonFilledComponent(
                  icon: Iconsax.heart_add_copy,

                  onPressed: () {},
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: IconButtonFilledComponent(
                  icon: Iconsax.add_square_copy,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        const FullAppDividerComponents(),

        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingHalf,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppConstants.margin - 4,
            children: [
              Text(
                product.name,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                padding: const EdgeInsets.all(AppConstants.paddingHalf),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(
                    AppConstants.inBorderRadius,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: AppConstants.margin - 4,
                  children: [
                    Text('${product.rating}'),
                    const Icon(
                      CupertinoIcons.star_fill,
                      size: 20,
                      color: CupertinoColors.systemYellow,
                    ),
                    Text('(${product.totalReviews})'),
                  ],
                ),
              ),
              Text(
                '${product.price} EGP',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                product.description,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
