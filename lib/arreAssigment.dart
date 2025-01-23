import 'package:flutter/material.dart';

class ArreAssigment extends StatelessWidget {
  final String title;
  final String subtitle;
  final String thumbnailImage;
  final List<String> userProfileImages;
  final String views;

  ArreAssigment({
    required this.title,
    required this.subtitle,
    required this.thumbnailImage,
    required this.userProfileImages,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.network(
              thumbnailImage,
              fit: BoxFit.cover,
            ),
          ),
          // Gradient Overlay (optional, for better text readability)
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.2),
                ],
                stops: const [0, 0.1, 0.8, 1],
              ),
            ),
          )),
          // Content
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Subtitle
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Row(
                    children: [
                  // User Images
                  Stack(
                    children: [
                      for (int i = 0; i < userProfileImages.length; i++)
                        Positioned(
                          left: i * 20,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundImage: NetworkImage(userProfileImages[i]),
                            ),
                          ),
                        )
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4EA0F7),
                      borderRadius: BorderRadius.circular(4),
                    ),
                      child: const Text("16 x 16",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      )
                  )
                ]),
                const SizedBox(
                  height: 12,
                ),
                // Views and Play Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Icon(
                    Icons.play_circle_outline,
                     size: 32,
                     color: Colors.white,
                  ),
                    Text(
                      views,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}