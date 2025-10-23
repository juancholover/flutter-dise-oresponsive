import 'package:app_ventas/src/presentation/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 21, 23),
      appBar: AppBar(
        title: const Text('LayoutBuilder Demo'),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: '📐 LayoutBuilder Ejemplos',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            const Text(
              'LayoutBuilder permite adaptar el UI basándose en las restricciones del widget padre',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 20),

            // Ejemplo 1: Contenedor adaptativo
            CustomText(
              text: '1️⃣ Contenedor Adaptativo',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(height: 12),
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlueAccent, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Adapta el diseño según el ancho disponible
                  if (constraints.maxWidth > 400) {
                    return _buildWideLayout(constraints);
                  } else {
                    return _buildNarrowLayout(constraints);
                  }
                },
              ),
            ),
            const SizedBox(height: 24),

            // Ejemplo 2: Grid adaptativo
            CustomText(
              text: '2️⃣ Grid Adaptativo',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, constraints) {
                // Calcula columnas según el ancho
                int columns = (constraints.maxWidth / 120).floor();
                if (columns < 2) columns = 2;

                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columns,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.widgets, size: 32, color: Colors.white),
                            const SizedBox(height: 4),
                            Text(
                              'Item ${index + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 24),

            // Ejemplo 3: Texto adaptativo
            CustomText(
              text: '3️⃣ Tamaño de Texto Adaptativo',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent,
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade800,
                borderRadius: BorderRadius.circular(12),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // Ajusta tamaño de texto según ancho disponible
                  double fontSize = constraints.maxWidth * 0.05;
                  if (fontSize > 32) fontSize = 32;
                  if (fontSize < 16) fontSize = 16;

                  return Column(
                    children: [
                      Text(
                        'Texto Adaptativo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Ancho disponible: ${constraints.maxWidth.toStringAsFixed(0)}px',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Tamaño de fuente: ${fontSize.toStringAsFixed(0)}px',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWideLayout(BoxConstraints constraints) {
    return Container(
      color: Colors.lightBlue.shade100,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Columna 1',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade600,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Columna 2',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Columna 3',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNarrowLayout(BoxConstraints constraints) {
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade400,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Fila 1',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Fila 2',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
