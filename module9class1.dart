import 'package:demoapp/module8class3.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {


    void showAlertDialog(){
      showDialog(context: context,
          barrierDismissible: false,
          builder: (context)=>AlertDialog(
        title: Text("This is title"),
        content: Text("Are you sure? "),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancel")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Module8class3()));
          }, child: Text("Submit"))
        ],
      ));
    }
    void showAlertDialogWithIcon(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("Installation Alert"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 30,),
                SizedBox(width: 5,),
                Text("WARNING")
              ],
            ),
            Text("data datad at ada ta atada tadat  adat ada  tada tad atadat adat ada tad atad ata dat ada ta dat ada ta dat ad ata  da tada ta da ta da tad ata da ta")
          ], 
        ),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Module8class3()));
          }, child: Text("Install"))
        ],

      ));
    }
    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text("Simple Dialog"),
        children: [
          SimpleDialogOption(
            child: Text("option 1")
          ),
        SimpleDialogOption(
          child: Text("option 1")
          )
        ],
      ));
    }
    void showBottomAlert(){
      showModalBottomSheet(context: context, builder: (content)=>Container(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("choose option",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
            ListTile(title: Text("Option 1"),
              onTap: (){},
              onLongPress: (){},
            ),
            ListTile(title: Text("Option 1"),
            ),
            ListTile(title: Text("Option 1"),
            ),
            ListTile(title: Text("Option 1"),
            ),
            ListTile(title: Text("Option 1"),
            ),
        SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Save"),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),))
          ],
        ),
      ));
    }



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Alert'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text("Alert Dialogue")),
            ElevatedButton(onPressed: (){
              showAlertDialogWithIcon();
            }, child:Text("Alert Dialogue with ICON")
            ),
            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text("Simple Alert Dialog")),
            ElevatedButton(onPressed: (){
              showBottomAlert();
            }, child: Text("Bottom sheet alert"))
          ],
        ),
      ),
    );
  }
}
