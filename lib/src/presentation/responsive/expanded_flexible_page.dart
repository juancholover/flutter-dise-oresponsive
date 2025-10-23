import 'package:app_ventas/src/presentation/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 21, 23),
      appBar: AppBar(
        title: const Text('Expanded & Flexible Demo'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: '💪 Expanded vs Flexible',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            const Text(
              'Ambos widgets permiten que sus hijos ocupen el espacio disponible en un Row/Column',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 24),

            // Ejemplo 1: Expanded con flex igual
            _buildSectionTitle('1️⃣ Expanded con flex igual (1:1:1)'),
            const SizedBox(height: 8),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.pink.shade300,
                      child: const Center(
                        child: Text(
                          'Flex: 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink.shade500,
                      child: const Center(
                        child: Text(
                          'Flex: 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink.shade700,
                      child: const Center(
                        child: Text(
                          'Flex: 1',
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

            // Ejemplo 2: Expanded con flex diferente
            _buildSectionTitle('2️⃣ Expanded con flex diferente (1:2:3)'),
            const SizedBox(height: 8),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.purple.shade300,
                      child: const Center(
                        child: Text(
                          'Flex: 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.purple.shade500,
                      child: const Center(
                        child: Text(
                          'Flex: 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.purple.shade700,
                      child: const Center(
                        child: Text(
                          'Flex: 3',
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

            // Ejemplo 3: Flexible con fit loose
            _buildSectionTitle('3️⃣ Flexible con FlexFit.loose'),
            const SizedBox(height: 8),
            const Text(
              'Los widgets solo ocupan el espacio que necesitan',
              style: TextStyle(color: Colors.white70, fontSize: 12),
            ),
            const SizedBox(height: 8),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      color: Colors.orange.shade400,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Flexible\nloose',
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      color: Colors.orange.shade600,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Texto más largo aquí',
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
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      color: Colors.orange.shade800,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'OK',
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

            // Ejemplo 4: Combinación de Expanded y tamaño fijo
            _buildSectionTitle('4️⃣ Combinación: Expanded + Tamaño Fijo'),
            const SizedBox(height: 8),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pinkAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    color: Colors.red.shade400,
                    child: const Center(
                      child: Text(
                        '80px\nFijo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green.shade500,
                      child: const Center(
                        child: Text(
                          'Expanded\n(ocupa resto)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    color: Colors.blue.shade400,
                    child: const Center(
                      child: Text(
                        '80px\nFijo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Ejemplo 5: Ejemplo práctico - Dashboard
            _buildSectionTitle('5️⃣ Ejemplo Práctico: Dashboard'),
            const SizedBox(height: 8),
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.pink.shade400, Colors.pink.shade700],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Encabezado (flex: 2)',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink.shade300,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Menu\n(1)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.pink.shade500,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'Contenido\n(flex: 3)',
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
                    '📚 Resumen:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Expanded: Ocupa todo el espacio disponible',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Text(
                    '• Flexible (loose): Solo usa el espacio necesario',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  Text(
                    '• Flex: Controla la proporción de espacio',
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
        color: Colors.pinkAccent,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
