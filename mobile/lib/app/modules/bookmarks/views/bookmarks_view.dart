import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bookmarks_controller.dart';
import '../../../core/theme/app_theme.dart';

class BookmarksView extends GetView<BookmarksController> {
  const BookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmarks'),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wallpaper.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Bookmarks - Coming Soon',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppTheme.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
