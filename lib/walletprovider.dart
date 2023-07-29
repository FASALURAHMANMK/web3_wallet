import 'package:web3dart/web3dart.dart';
import 'package:bip39/bip39.dart' as bip39;
import 'package:ed25519_hd_key/ed25519_hd_key.dart';
import 'package:hex/hex.dart';
import 'package:flutter/foundation.dart';

abstract class WalletAddressService {
  String generateMnemonic();
  Future<String> getPrivatekey(String mnemonic);
  Future<EthereumAddress>getPublickey(String privatekey);

}

class WalletProvider extends ChangeNotifier implements WalletAddressService{
  @override
  String generateMnemonic(){
    return bip39.generateMnemonic();
  }
  @override
  Future<String>getPrivatekey(String mnemonic) async {
    final seed = bip39.mnemonicToSeed(mnemonic);
    final master = await ED25519_HD_KEY.getMasterKeyFromSeed(seed);
    final privatekey = HEX.encode(master.key);
    return privatekey;
  }
  @override
  Future<EthereumAddress> getPublickey(String privatekey) async{
    final private = EthPrivateKey.fromHex(privatekey);
    final address = await private.address;
    return address;
  }
}
