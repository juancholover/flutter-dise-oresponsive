import 'package:app_ventas/src/presentation/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  const FractionallySizedBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 21, 23),
      appBar: AppBar(
        title: const Text('FractionallySizedBox Demo'),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: '📏 FractionallySizedBox',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            const Text(
              'Dimensiona un widget como fracción de su padre (0.0 a 1.0)',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 24),

            // Ejemplo 1: Anchos fraccionarios
            _buildSectionTitle('1️⃣ Anchos Fraccionarios'),
            const SizedBox(height: 12),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildFractionalWidthBox(0.25, '25% (0.25)', Colors.green.shade300),
                  _buildFractionalWidthBox(0.50, '50% (0.50)', Colors.green.shade500),
                  _buildFractionalWidthBox(0.75, '75% (0.75)', Colors.green.shade700),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Ejemplo 2: Anchos y Altos combinados
            _buildSectionTitle('2️⃣ Ancho y Alto Fraccionario'),
            const SizedBox(height: 12),
            Container(
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.6,
                    heightFactor: 0.25,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'W: 60%\nH: 25%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.8,
                    heightFactor: 0.35,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade600,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'W: 80%\nH: 35%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    heightFactor: 0.20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal.shade800,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'W: 40%\nH: 20%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Ejemplo 3: Alineación con FractionallySizedBox
            _buildSectionTitle('3️⃣ Alineación'),
            const SizedBox(height: 12),
            Container(
              height: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // Top-Left
                  Align(
                    alignment: Alignment.topLeft,
                    child: FractionallySizedBox(
                      widthFactor: 0.35,
                      heightFactor: 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lime.shade600,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Top\nLeft',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Top-Right
                  Align(
                    alignment: Alignment.topRight,
                    child: FractionallySizedBox(
                      widthFactor: 0.35,
                      heightFactor: 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lime.shade700,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(12),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Top\nRight',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Center
                  Center(
                    child: FractionallySizedBox(
                      widthFactor: 0.4,
                      heightFactor: 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lime.shade400,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Centro\n40%x40%',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Bottom-Left
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FractionallySizedBox(
                      widthFactor: 0.35,
                      heightFactor: 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lime.shade800,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Bottom\nLeft',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Bottom-Right
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FractionallySizedBox(
                      widthFactor: 0.35,
                      heightFactor: 0.35,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lime.shade900,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Bottom\nRight',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Ejemplo 4: Uso práctico - Barra de progreso
            _buildSectionTitle('4️⃣ Ejemplo Práctico: Barras de Progreso'),
            const SizedBox(height: 12),
            _buildProgressBar('HTML/CSS', 0.9, Colors.orange),
            const SizedBox(height: 12),
            _buildProgressBar('JavaScript', 0.75, Colors.yellow.shade700),
            const SizedBox(height: 12),
            _buildProgressBar('Flutter', 0.85, Colors.blue),
            const SizedBox(height: 12),
            _buildProgressBar('Python', 0.65, Colors.green),
            const SizedBox(height: 24),

            // Ejemplo 5: Galería responsiva
            _buildSectionTitle('5️⃣ Galería Responsiva'),
            const SizedBox(height: 12),
            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      heightFactor: 0.85,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.green.shade400, Colors.green.shade700],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.image, size: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      heightFactor: 0.85,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.teal.shade400, Colors.teal.shade700],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.photo, size: 40, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      heightFactor: 0.85,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.lime.shade400, Colors.lime.shade700],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.photo_library, size: 40, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Info box
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '💡 Ventajas:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Perfecto para diseños proporcionales',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Text(
                    '• Se adapta automáticamente al tamaño del padre',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Text(
                    '• Ideal para barras de progreso y gráficos',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.lightGreenAccent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildFractionalWidthBox(double factor, String label, Color color) {
    return FractionallySizedBox(
      widthFactor: factor,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProgressBar(String skill, double progress, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              FractionallySizedBox(
                widthFactor: progress,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      '${(progress * 100).toInt()}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
