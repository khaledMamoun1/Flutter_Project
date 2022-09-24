
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/CategoryProvider.dart';

class Category extends StatefulWidget {
  const Category ({Key? key}) : super(key: key);


 

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  void initState() {
    Provider.of<CategoryProvider>(context, listen: false).getAllData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context)=>Consumer<CategoryProvider>(

  builder: (context,  categoryProv, child) {
  return ListView.builder(
      itemCount: categoryProv.category?.data!.data!.length,
        padding: const EdgeInsets.all(8),
      
        itemBuilder: (BuildContext context, int index) {

          return  Container(
            // height: 50,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(
                      fit: BoxFit.cover,
                      image: categoryProv.category?.data!.data![index].image == null ?
                          const NetworkImage("https://freesvg.org/img/Loading_icon_with_fade.png")

                        :NetworkImage(
                        categoryProv.category?.data!.data![index].image ?? "")
                     ),

                  const SizedBox(height: 10,),

                   Text("${categoryProv.category?.data!.data![index].name!}")

                ],
              ),
            )
          );
        }
          );
        }


  );
}

