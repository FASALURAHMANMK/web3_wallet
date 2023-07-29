import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web3_wallet/walletprovider.dart';
class createwallet extends StatelessWidget {
  const createwallet({super.key});

  @override
  Widget build(BuildContext context) {
    final walletprovider = Provider.of<WalletProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Wallet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async{
            final mnemonic = walletprovider.generateMnemonic();
            final privatekey = await walletprovider.getPrivatekey(mnemonic);
            final publickey = await walletprovider.getPublickey(privatekey);
            print('Mnemo:$mnemonic');
            print('Private:$privatekey');
            print('Public:$publickey');
          },
          child: const Text('Create New Wallet'),
        ),
      ),
    );
  }
}