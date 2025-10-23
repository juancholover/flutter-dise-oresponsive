import 'package:app_ventas/src/presentation/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 📱 Obtener información del dispositivo usando MediaQuery
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final orientation = MediaQuery.of(context).orientation;
    final padding = MediaQuery.of(context).padding;
    final brightness = MediaQuery.of(context).platformBrightness;

    // 📐 Determinar el tipo de dispositivo según el ancho
    String deviceType;
    if (width < 600) {
      deviceType = 'Móvil';
    } else if (width < 900) {
      deviceType = 'Tablet';
    } else {
      deviceType = 'Desktop';
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 21, 23),
      appBar: AppBar(
        title: const Text('MediaQuery Demo'),
        backgroundColor: Colors.yellow.shade700,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 📊 Card de información del dispositivo
            Card(
              color: Colors.yellow.shade100,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: '📱 Información del Dispositivo',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 16),
                    _buildInfoRow('Ancho:', '${width.toStringAsFixed(1)} px'),
                    _buildInfoRow('Alto:', '${height.toStringAsFixed(1)} px'),
                    _buildInfoRow('Tipo:', deviceType),
                    _buildInfoRow(
                        'Orientación:',
                        orientation == Orientation.portrait
                            ? 'Vertical'
                            : 'Horizontal'),
                    _buildInfoRow('Tema:', brightness == Brightness.dark ? 'Oscuro' : 'Claro'),
                    _buildInfoRow('Padding Superior:', '${padding.top.toStringAsFixed(1)} px'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 🎨 Ejemplo de diseño adaptativo
            CustomText(
              text: '🎨 Diseño Adaptativo',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 12),

            // Grid que se adapta según el ancho
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width < 600 ? 2 : (width < 900 ? 3 : 4),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade600,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // 📏 Ejemplo de tamaño proporcional
            CustomText(
              text: '📏 Tamaños Proporcionales',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            const SizedBox(height: 12),

            Container(
              width: width * 0.5, // 50% del ancho de pantalla
              height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow.shade400,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  '50% Ancho',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            Container(
              width: width * 0.75, // 75% del ancho de pantalla
              height: 100,
              decoration: BoxDecoration(
                color: Colors.yellow.shade600,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  '75% Ancho',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
