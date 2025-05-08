import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Local Image Avatar
        Card(
          elevation: 1,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.png'), // Local image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Raghad (Local)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('raghad.local@example.com', style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Network Image Avatar
        Card(
          elevation: 1,
          margin: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/8847/8847419.png'), // Network image
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Abeer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Abeer@gmail.com', style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}