# AJNToastMessage
Hello iPhonic, Here I implemented custom message class. You can just drag and drop in your project and use all the methods. It is very easy and classy way.        

> In android platform, you can see Toast.message for display any text message, same way I have created custom message class in **SWIFT** language. 

> **You have to set minimum deployment target iOS 10 and latter.**

> **You can use in iPhone and iPad Application.**

> I am explaining you how to use...! 

> **Position methods and it's parameters :**

     1. MessageInTop(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
     
     2. MessageInCenter(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
     
     3. MessageInBottom(TextMessage: String, TextColor: UIColor, TextFont : UIFont, IsViewCornerRadius : Bool , ControllerName : UIViewController, ViewColor : UIColor)
     
     Parameters of above methods are mention below.  
     
     TextMessage: "Enter your text message", // You can write your text message. 
     TextColor: UIColor.white, // You can assign text message color here.
     TextFont : UIFont.systemFont(ofSize: 14), // You can assign font name and size here.
     IsViewCornerRadius : true/false , // It's your choise, you want corner radius or not. 
     ControllerName : self, // Assign self in this parameter.
     ViewColor : UIColor.blue // Assign background color here.

> **Animation methods and it's parameters :**

**Please avoid unnecessary dash or lines in example, it's issue in simulator. It's working fine in Device.**  

     -> You can use these all animation in Top , Center and Bottom position
     
     1. slideViewInThenOut(from edge: SimpleAnimationEdge = .none , to edgeTo: SimpleAnimationEdge = .none)
     Parameters Explanation : 
     from : edge of the parent view that should be used as the starting point of the animation, like 'top', 'left'
     to : edge of the parent view that should be used as the ending point of the animation, like 'bottom' , 'right'
      
     **Example is given below.**

![alt text](https://github.com/AnandNanavaty/AJNToastMessage/blob/master/ezgif.com-video-to-gif.gif)
     
     2 fadeViewInThenOut() // Not parameters 
     
     **Example is given below.**
     
![alt text](https://github.com/AnandNanavaty/AJNToastMessage/blob/master/Animation_Center1.gif)
     
     3 zoomInThenOut() // Not parameters 
     
     **Example is given below.**
     
![alt text](https://github.com/AnandNanavaty/AJNToastMessage/blob/master/Center_Zoom.gif)
     
     
     
