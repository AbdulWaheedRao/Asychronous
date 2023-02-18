

void main(List<String> arguments) async{
//fetchPizza().then((value) => printablePizza(value).then((value) => print(value)));

//var pizza=await fetchPizza();
//print(await printablePizza(pizza));



//countSecond(3);
//print(await printableOrder());

   Future <int> result=generateNo();
   result.then((value) => print(value));
   result.whenComplete(() => print('completed'));
   //print('pakistan');
//sum(20, 30).then((value) => avrg(value).then((value) =>print( 'the average value is :$value')));
   var sumResult=await sum(20, 30);
  var avg=await avrg(sumResult);

 // print(avg);
 
  print("hello manu");
  //this line use instead of last two line print(await avrg(sumResult));

}
Future<int> generateNo(){
  return Future.delayed(const Duration(seconds: 5), () => 65,
  );

}
Future<num> sum(num no1, num no2){
  return Future.delayed(const Duration (seconds: 2),() => no1 + no2, 
  );
}
Future<num> avrg(num no){
return Future.delayed(const Duration (seconds: 2),()=> no/2
);
}
Future<String> fetchOrder(){
  return Future.delayed(const Duration(seconds: 2),() => 'Pakistan Zindabad',
  );
}
Future<String> printableOrder(){
  return Future.delayed(const Duration(seconds: 2),() async => 'your order is:${await fetchOrder()}',
  );
}
void countSecond(int maxValue) async{
  for (var i = 0; i < maxValue; i++) {
    await Future.delayed(const Duration(seconds: 1),() => print(i),
    );
  }

}
Future<String> fetchPizza(){
  return Future.delayed(const Duration(seconds: 2),() => 'BBQ Pizza',);
}
Future<String> printablePizza(String Pizza){
return Future.delayed(const Duration(seconds: 1),() => 'your order is :$Pizza',);
}