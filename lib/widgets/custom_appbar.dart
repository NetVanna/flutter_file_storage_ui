import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.firstIcon,
    required this.secondIcon,
    this.color = Colors.blue,
    this.titleColor = Colors.white,
    this.subTitleColor = Colors.white,
    this.firstIconColor = Colors.white,
    this.secondIconColor = Colors.white,
    this.opacity = 0.1,
  });

  final double opacity;
  final String title, subTitle;
  final IconData firstIcon, secondIcon;
  final Color color, titleColor, subTitleColor, firstIconColor, secondIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 25,
      ),
      alignment: Alignment.bottomCenter,
      height: 170,
      decoration: BoxDecoration(color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: titleColor),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 17,
                  color: subTitleColor,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(opacity),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    firstIcon,
                    color: firstIconColor,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(opacity),
                    borderRadius: BorderRadius.circular(15)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    secondIcon,
                    color: secondIconColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
