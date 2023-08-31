import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';

enum CalendarItemStatus {
  selected,
  normal,
  muted,
}

class CalendarItemWidget extends StatelessWidget {
  final bool isSuccses;
  final bool status;
  final bool dotIndecator;
  final CalendarItemStatus stateIndicator;
  final String dayOfWeek;
  final int numberOfMounth;

  const CalendarItemWidget({
    super.key,
    this.isSuccses = false,
    this.dotIndecator = false,
    this.status = false,
    required this.stateIndicator,
    required this.dayOfWeek,
    required this.numberOfMounth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 54,
              width: 42,
              decoration: BoxDecoration(
                color: (stateIndicator == CalendarItemStatus.normal)
                    ? context.theme.palette.grayscale.g4
                    : (stateIndicator == CalendarItemStatus.selected)
                        ? context.theme.palette.grayscale.g5
                        : context.theme.palette.grayscale.g3,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$numberOfMounth',
                    style: (stateIndicator != CalendarItemStatus.muted)
                        ? context.theme.typeface.body2.regular
                        : TextStyle(color: context.theme.palette.grayscale.g5),
                  ),
                  Text(
                    dayOfWeek,
                    style: (stateIndicator != CalendarItemStatus.muted)
                        ? context.theme.typeface.caption.regular
                        : TextStyle(color: context.theme.palette.grayscale.g5),
                  ),
                ],
              ),
            ),
            if (status) ...{
              isSuccses
                  ? SvgPicture.asset('assets/icons/Starred.svg')
                  : SvgPicture.asset('assets/icons/Failed.svg'),
            }
          ],
        ),
        if (dotIndecator)
          ClipOval(
            child: SizedBox(
              height: 5,
              width: 5,
              child: ColoredBox(
                color: context.theme.palette.grayscale.g4,
              ),
            ),
          ),
      ],
    );
  }
}
