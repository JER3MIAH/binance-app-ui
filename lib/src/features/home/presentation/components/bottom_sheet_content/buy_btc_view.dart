import 'package:binance_app_ui/src/features/home/presentation/widgets/widgets.dart';
import 'package:binance_app_ui/src/features/theme/data/theme.dart';
import 'package:binance_app_ui/src/features/theme/logic/theme_provider.dart';
import 'package:binance_app_ui/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BuyBtcView extends HookConsumerWidget {
  final bool isSelling;
  const BuyBtcView({
    super.key,
    required this.isSelling,
  });

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context).colorScheme;
    final isDarkmode = ref.watch(themeProvider).isDarkMode;
    final priceController = useTextEditingController();
    final amountController = useTextEditingController();

    final style = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: theme.secondary,
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.dx),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.dx),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 28.dy,
                  width: 55.dx,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: isDarkmode
                        ? const Color(0xFF353945)
                        : const Color(0xFFCFD3D8),
                  ),
                  child: Center(
                    child: Text(
                      'Limit',
                      style: style.copyWith(
                        fontWeight:
                            isDarkmode ? FontWeight.w700 : FontWeight.w500,
                        color: theme.outline,
                      ),
                    ),
                  ),
                ),
                Text('Market', style: style),
                Text('Stop-Limit', style: style),
              ],
            ),
          ),
          YBox(15.dy),
          CustomTextField(
            controller: priceController,
            prefixText: 'Limit price',
          ),
          CustomTextField(
            controller: amountController,
            prefixText: 'Amount',
          ),
          const CustomTextField(
            readOnly: true,
            isNotField: true,
            prefixText: 'Type',
          ),
          CustomCheckBox(
            title: 'Post Only',
            isSelected: false,
            onTap: () {},
          ),
          YBox(15.dy),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: style.copyWith(fontSize: 12.sp),
              ),
              Text(
                '0.00',
                style: style.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
          BuyBtcGradientButton(
            onTap: () {},
          ),
          const HorizLine(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextAndPrice(
                text: 'Total account value',
                price: '0.00',
              ),
              TextAndPrice(
                text: 'NGN ',
                price: '',
                isNGN: true,
              ),
            ],
          ),
          YBox(15.dy),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextAndPrice(
                text: 'Open Orders',
                price: '0.00',
              ),
              TextAndPrice(
                text: 'Available',
                price: '0.00',
              ),
            ],
          ),
          YBox(25.dy),
          _buildDepositButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDepositButton({
    required VoidCallback onTap,
  }) {
    return BounceInAnimation(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 32.dy,
          width: 80.dx,
          decoration: BoxDecoration(
            color: const Color(0xFF2764FF),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Deposit',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: appColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
