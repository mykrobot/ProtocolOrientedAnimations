**Protocol Oriented Animations**
-------------------
This project provides some animations that can be used with any subclass of UIView.  See [NatashaTheRobot's talk on Protocol Oriented Programming](https://realm.io/news/appbuilders-natasha-muraschev-practical-protocol-oriented-programming/) for more information, and how to learn more about Protocol Oriented Programming.


Getting Started
---------------
 1. All you need to do is drag in the `MoveableProtocol.swift` into your project. 
 
 2. Once the protocol is in the project, go ahead and conform the custom view to the Moveable Protocol.
>`class CustomTextField: UITextField, Moveable {}` 

 3. In your `ViewController` file, you can now call any of the Moveable animations.
>  ex 1: `someTextField.shake()` 		
>   ex 2: `someTextField.move(.Right, points: 600) `


See the demo project for basic implementation.


Contributing
----------
We'd love to see more additions to this repo. If you come up with other animations, the best way to contribute is through submitting a pull request. Feel free to submit a new Gissue (GitHub Issue) for any bugs that you might find. 

If possible, please provide documentation for your contributions. 

Questions
----------
If you have any questions, please feel free to contact me through [Twitter](https://twitter.com/Mykrobot). 
