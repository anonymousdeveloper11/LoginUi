import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/register.png'), fit: BoxFit.cover)
      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text('Create\nAccount',
                style: TextStyle(color: Colors.white, fontSize: 33),),
            ),
            SingleChildScrollView(
              child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 35,
                  left: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                            ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)),
                              hintText: "Name",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),

                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sign Up',
                            style: TextStyle(color: Colors.white,
                            fontSize: 27, fontWeight: FontWeight.w700),),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4c505b),
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, "login");
                            },
                                child: Text('Sign In',
                                textAlign: TextAlign.left,
                                style: TextStyle(decoration: TextDecoration.underline ,color: Colors.white,
                                fontSize: 18),
                                ),
                            style: ButtonStyle(),)
                          ],
                        )
                      ],
                    ),
                  ),
                  // TextField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //       fillColor: Colors.grey.shade100,
                  //       hintText: "Password",
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10)
                  //       )
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text('Sign In ',
                  //       style: TextStyle(color: Color(0xff4c505b),fontSize: 27, fontWeight: FontWeight.w700),),
                  //     CircleAvatar(
                  //       radius: 30,
                  //       backgroundColor: Color(0xff4c505b),
                  //       child: IconButton(
                  //           color: Colors.white,
                  //           onPressed: (){}, icon: Icon(Icons.arrow_forward)),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     TextButton(onPressed: (){
                  //       Navigator.pushNamed(context, 'register');
                  //     }, child: Text('Sign Up', style: TextStyle(
                  //         decoration: TextDecoration.underline,
                  //         fontSize: 10,
                  //         color: Color(0xff4c505b)
                  //     ),)),
                  //     TextButton(onPressed: (){}, child: Text('Forgot Password', style: TextStyle(decoration: TextDecoration.underline,fontSize: 18,
                  //         color: Color(0xff4c505b)),))
                  //   ],
                  // )
                ],
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}
