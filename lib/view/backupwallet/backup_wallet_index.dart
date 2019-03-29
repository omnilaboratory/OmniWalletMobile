import 'package:flutter/material.dart';
import 'package:wallet_app/l10n/WalletLocalizations.dart';
import 'package:wallet_app/main.dart';
import 'package:wallet_app/tools/app_data_setting.dart';
import 'package:wallet_app/view/backupwallet/backup_wallet_words.dart';
import 'package:wallet_app/view/main_view/main_page.dart';

class BackupWalletIndex extends StatelessWidget {

  static String tag = "BackupWallet";

  Widget buildDialogWindow(BuildContext context){
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(0.0),
      children: <Widget>[
        Center(
          child:Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.camera_enhance,
                  size: 60,
                ),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                    WalletLocalizations.of(context).backup_index_prompt_title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 20),
                child: Text(WalletLocalizations.of(context).backup_index_prompt_tips,textAlign: TextAlign.center,),
              ),
              InkWell(
                radius: MediaQuery.of(context).size.width*0.5,
                splashColor:Colors.blue,
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BackupWalletWords()));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Text(WalletLocalizations.of(context).backup_index_prompt_btn,textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
            ],
          )
        )
      ],
    );
  }
  static String tag='BackupWalletIndex';
  void onTouchBtn(BuildContext context){
    Navigator.pushNamed(context, BackupWalletWords.tag);
  }

  @override
  Widget build(BuildContext context) {
    Widget pageContent(){
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30,left: 20,right: 20),
            child:
                Image.asset("assets/LunarX_Logo.jpg",scale: 0.5,),
          ),
          Expanded(
              child: Align(
                  alignment: Alignment(0, -0.5),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:40,bottom: 20),
                          child: Text(
                              WalletLocalizations.of(context).backup_index_tips_title,
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          WalletLocalizations.of(context).backup_index_tips,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
//                        letterSpacing: 2,
                            fontWeight: FontWeight.bold

//                        fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    ),
                  ),
              )
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20 ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20 ),
                    child: RaisedButton(
                      color: AppCustomColor.btnConfirm,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                              WalletLocalizations.of(context).backup_index_btn,
                            style: TextStyle(color: Colors.white),
                              ),
                      onPressed: (){
                            this.onTouchBtn(context);
                          }
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(WalletLocalizations.of(context).backup_index_title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          FlatButton(
            onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil(MainPage.tag,(route) => route == null);
            },
            child: Text(WalletLocalizations.of(context).backup_index_laterbackup,style: TextStyle(color: AppCustomColor.btnConfirm),),
          )
        ],
      ),
      body: pageContent(),
    );
  }
}
