import 'package:flutter/material.dart';
import 'showModalBottomChild.dart';

class Option_Posts extends StatelessWidget {
  const Option_Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: _showModalBottomTitle(),
          ),
          const ShowModalBottomChild(
              icon: Icons.person_add_disabled_outlined,
              icondescription: 'Ne plus suivre'),
          const ShowModalBottomChild(
              icon: Icons.info_outline,
              icondescription: 'Pourquoi vous voyez cette publication'),
          const ShowModalBottomChild(
              icon: Icons.hide_source, icondescription: 'Masquer'),
          const ShowModalBottomChild(
              icon: Icons.account_circle_outlined,
              icondescription: 'A propos de ce compte'),
          const ShowModalBottomChild(
              icon: Icons.add_alert_outlined, icondescription: 'Signaler'),
        ],
      ),
    );
  }

  Widget _showModalBottomTitle() {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _option(Icons.share, 'Partager'),
          _option(Icons.link, 'Lien'),
          _option(Icons.bookmark_border, 'Enregistrer'),
          _option(Icons.qr_code_scanner, 'Code QR'),
        ],
      ),
    );
  }

  Widget _option(IconData icon, String libelle) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black87),
              borderRadius: BorderRadius.circular(50)),
          child: Icon(icon),
        ),
        Container(
          height: 10,
        ),
        Text(libelle)
      ],
    );
  }
}
