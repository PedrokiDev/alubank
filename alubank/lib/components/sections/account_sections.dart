import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountSections extends StatelessWidget {
  const AccountSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Ações da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: BoxCard(
                      boxContent: _AccountSectionsContent(
                          icon: Icon(Icons.account_balance_wallet),
                          text: 'Depositar'))),
              InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: BoxCard(
                      boxContent: _AccountSectionsContent(
                          icon: Icon(Icons.cached), text: 'Transferir'))),
              InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {},
                  child: BoxCard(
                      boxContent: _AccountSectionsContent(
                          icon: Icon(Icons.center_focus_strong), text: 'Ler'))),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountSectionsContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _AccountSectionsContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
