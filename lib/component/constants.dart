import 'package:flutter/material.dart';

class AppConstants {
  static const String appName = 'Explore DZ';
  static const String logoAsset = 'assets/logo.webp';
  static const Duration splashDuration = Duration(seconds: 3);

  // Colors
  static const Color primaryColor = Color(0xFF1597D5);
  static const Color secondaryColor = Color(0xFFF7C901);
  static const Color inputBackground = Color(0xFFE2F2FA);
  static const Color primaryButtonColor = Color(0xFF1597D5);
  static const Color darkBlue = Color(0xFF0247AE);
  static const Color errorColor = Color(0xFFFC0001);

  // Font Styles (example, adjust as needed)
  static const TextStyle bodyTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    color: primaryColor,
  );

  static const TextStyle headingTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: secondaryColor,
  );

  // Sample data for volunteering opportunities (thoughts)
  static const List<Map<String, dynamic>> thoughtsTemplates = [
    {
      'user': {
        'name': 'Jane Doe',
        'profilePic': 'assets/logo.png',
        'subtitle': 'Community organizer and beach lover.',
      },
      'title': 'Beach Cleanup',
      'images': [
        'assets/background.png',
        'assets/logo_compas.png',
      ],
      'description': 'Join us to clean the local beach and help the environment! All are welcome, supplies provided.',
      'location': {
        'name': 'Santa Monica Beach',
        'lat': 34.0100,
        'lng': -118.4962,
      },
    },
    {
      'user': {
        'name': 'Alex Green',
        'profilePic': 'assets/logo_compas.png',
        'subtitle': 'Nature enthusiast and volunteer.',
      },
      'title': 'Park Tree Planting',
      'images': [
        'assets/logo.webp',
        'assets/background.png',
      ],
      'description': 'Help us plant trees in the city park. Make a difference for future generations!',
      'location': {
        'name': 'Central City Park',
        'lat': 34.0522,
        'lng': -118.2437,
      },
    },
  ];

  // Sample data for opportunities
  static const List<Map<String, dynamic>> opportunitiesTemplates = [
    {
      'user': {
        'name': 'Community Organizer',
        'profilePic': 'assets/user.jpg',
        'subtitle': 'Working for clean water access.',
      },
      'title': 'Bringing Clean Water to BADEW Tent Communities',
      'images': [
        'assets/1 (1).jpg',
        'assets/1 (1).jpg',
      ],
      'description': 'Help bring clean water to nomadic tent communities in the Algerian Sahara. These remote desert families often rely on scarce or unsafe water sources. By supporting mobile filtration systems or deep well projects, we can improve their health and dignity. Join us in making a lasting impact where it\'s most needed.',
      'location': {
        'name': 'BADEW Tent Communities, Algerian Sahara',
        'lat': 22.785,
        'lng': 5.522,
      },
    },
    {
      'user': {
        'name': 'Sustainable Agriculture Team',
        'profilePic': 'assets/user.jpg',
        'subtitle': 'Promoting organic farming practices.',
      },
      'title': 'Support organic farming and be part of a healthy community.',
      'images': [
        'assets/1 (2).jpg',
        'assets/1 (2).jpg',
      ],
      'description': 'Support local organic farming initiatives and help promote sustainable agriculture. Your efforts contribute to healthier food, soil, and communities. Be part of a movement that nurtures both people and the planet.',
      'location': {
        'name': 'Organic Farming Community',
        'lat': 36.87,
        'lng': 7.73,
      },
    },
    {
      'user': {
        'name': 'Youth Program Coordinator',
        'profilePic': 'assets/user.jpg',
        'subtitle': 'Creating memorable experiences for children.',
      },
      'title': 'Become a Camp Animator and Inspire Young Mind',
      'images': [
        'assets/1 (3).jpg',
        'assets/1 (3).jpg',
      ],
      'description': 'Join as a summer camp animator and help create unforgettable experiences for children and youth. Lead games, workshops, and outdoor activities that inspire learning and fun. Build connections, grow your skills, and make a positive impact this summer.',
      'location': {
        'name': 'Summer Camp, Kabylie',
        'lat': 36.456,
        'lng': 4.163,
      },
    },
    {
      'user': {
        'name': 'Health Awareness Volunteer',
        'profilePic': 'assets/user.jpg',
        'subtitle': 'Supporting maternal health initiatives.',
      },
      'title': 'Health Awareness Campaigns for Pregnant Women',
      'images': [
        'assets/1 (4).jpg',
        'assets/1 (4).jpg',
      ],
      'description': 'Organize health awareness campaigns to educate pregnant women on prenatal care, nutrition, and safe childbirth practices. These initiatives aim to reduce maternal and infant health risks through community outreach and expert guidance.',
      'location': {
        'name': 'Community Health Center',
        'lat': 33.8,
        'lng': 2.88,
      },
    },
    {
      'user': {
        'name': 'Disaster Relief Coordinator',
        'profilePic': 'assets/user.jpg',
        'subtitle': 'Helping earthquake victims rebuild.',
      },
      'title': 'Support Earthquake Victims with Safe Housing',
      'images': [
        'assets/1 (1).webp',
        'assets/1 (2).webp',
      ],
      'description': 'Join efforts to build safe and resilient homes for families affected by earthquakes. Your support helps restore dignity, security, and stability to those who have lost everything. Together, we can rebuild lives and strengthen communities for the future.',
      'location': {
        'name': 'Earthquake Recovery Zone',
        'lat': 36.82,
        'lng': 5.77,
      },
    },
  ];
}
