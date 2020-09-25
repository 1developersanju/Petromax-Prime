body: new ListView.builder(itemBuilder: (context, index){
  return new HorizList();
  })

class HorizList extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
   return new Container(
    height: 100.0,

    child: new ListView.builder(itemBuilder: (context, index){
      return new Card(child: new Container(width: 80.0,
        child: new Text('Hello'),alignment: Alignment.center,));
      }, scrollDirection: Axis.horizontal,),
    );
 }
}
