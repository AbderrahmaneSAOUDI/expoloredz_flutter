import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class ThoughtCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final void Function()? onUserTap;
  final void Function()? onLocationTap;
  final void Function()? onLike;
  final void Function()? onOpportunity;
  final void Function()? onMessage;

  const ThoughtCard({
    super.key,
    required this.data,
    this.onUserTap,
    this.onLocationTap,
    this.onLike,
    this.onOpportunity,
    this.onMessage,
  });

  @override
  Widget build(BuildContext context) {
    final user = data['user'] ?? {};
    final images = List<String>.from(data['images'] ?? []);
    final location = data['location'] ?? {};
    final lat = location['lat'] ?? 0.0;
    final lng = location['lng'] ?? 0.0;
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Row
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                    user['profilePic'] ?? 'assets/logo.png',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: onUserTap,
                        child: Text(
                          user['name'] ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        user['subtitle'] ?? '',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // Optional Connect button (not required)
              ],
            ),
            const SizedBox(height: 16),
            // Title
            Text(
              data['title'] ?? '',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Images Row
            if (images.isNotEmpty)
              Row(
                children: images
                    .take(2)
                    .map(
                      (img) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              img,
                              height: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            const SizedBox(height: 14),
            // Description
            Text(data['description'] ?? '', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 14),
            // Location
            Row(
              children: [
                const Text(
                  'Location: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: onLocationTap,
                  child: Text(
                    location['name'] ?? '',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Mini Map
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                height: 140,
                width: double.infinity,
                child: FlutterMap(
                  options: MapOptions(
                    initialCenter: LatLng(lat, lng),
                    initialZoom: 14,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.expoloredz_flutter',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: LatLng(lat, lng),
                          width: 40,
                          height: 40,
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 36,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Action Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  label: 'Like',
                  onTap: onLike,
                  color: Colors.blue[700],
                ),
                _ActionButton(
                  icon: Icons.volunteer_activism,
                  label: 'Opportunity',
                  onTap: onOpportunity,
                  color: Colors.blue[400],
                ),
                _ActionButton(
                  icon: Icons.message_outlined,
                  label: 'Message',
                  onTap: onMessage,
                  color: Colors.blue[200],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function()? onTap;
  final Color? color;

  const _ActionButton({
    required this.icon,
    required this.label,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        side: BorderSide(color: color ?? Colors.blue),
        foregroundColor: color ?? Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      onPressed: onTap,
      icon: Icon(icon, size: 20),
      label: Text(label),
    );
  }
}
