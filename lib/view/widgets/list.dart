import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hour/globals.dart' as globals;

class ListActivities extends StatelessWidget {
  const ListActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {

        return Card(
          color: Colors.white,
          child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            
            title: Text(
              'DFGKÇDF',
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),

            subtitle: Text(
              'Das 14h às 15h',
              style: GoogleFonts.lato(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.info_outline,
                  color: globals.primary,
                  size: 30,
                ),
            
                IconButton(
                  iconSize: 30,

                  onPressed: () {
                    
                  },
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: globals.primary,
                  ),
                ),
              ], 
            ),
            
            onTap: () {
              Navigator.pushNamed(
                context,
                '/info_activity',
              );
            },
          )
        );
      },
    );
  }
}