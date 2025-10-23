import 'package:app_ventas/src/presentation/widgets/CustomButton.dart';
import 'package:app_ventas/src/presentation/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 21, 23),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Responsiveness in Flutter',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 50),

                        // 🔹 Botones
                        CustomButton(
                          backgroundColor: Colors.yellow,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'mediaQuery');
                          },
                          child: CustomText(
                            text: 'MediaQuery',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        CustomButton(
                          backgroundColor: Colors.lightBlueAccent,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'layoutBuilder');
                          },
                          child: CustomText(
                            text: 'LayoutBuilder',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        CustomButton(
                          backgroundColor: Colors.orange,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'orientation');
                          },
                          child: CustomText(
                            text: 'OrientationBuilder',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        CustomButton(
                          backgroundColor: Colors.pinkAccent,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'expanded');
                          },
                          child: CustomText(
                            text: 'Expanded and Flexible',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        CustomButton(
                          backgroundColor: Colors.lightGreenAccent,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'fractionally');
                          },
                          child: CustomText(
                            text: 'FractionallySizedBox',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),

                        CustomButton(
                          backgroundColor: Colors.green,
                          textColor: Colors.black,
                          onPressed: () {
                            Navigator.pushNamed(context, 'aspect');
                          },
                          child: CustomText(
                            text: 'AspectRatio',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
