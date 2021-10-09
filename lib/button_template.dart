import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key, required this.icon, required this.string, required this.onTap})
      : super(key: key);

  final Icon icon;
  final String string;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 50, height: 50),
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                5.0,
              ),
            ),
            child: ColoredBox(
              color: Colors.white,
              child: TextButton(
                onPressed: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    icon,
                    Expanded(
                      child: Center(
                        child: Text(
                          string,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24.0,
                      height: 24.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 50, height: 50),
      ],
    );
  }
}
