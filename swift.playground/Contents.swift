import UIKit

// Comments are represented by two forward slashes.
// They are "forward slashes" because they are leaning "forward" (in the
// direction of the natural flow of text).

/**
 Multiline 
 comments
 are created 
 like this.
 */

/** As with most programming languages, whitespace doesnt matter */

// Variables are created using the "var" keyword
var numberOne: Int = 1

// Swift is a "strongly typed" language which means
// variables have "types" that they belong to. E.g. we
// have "numbers" and "numbers" are different than "words".
// It makes total sense to multiply two numbers but it doesn't
// make sense to "multiply words". Swift helps us from doing
// silly things like by restricting what we can do with certain
// types.
var someInteger: Int = 32

var floatingPointNumber: Float = 3.16
var name: String = "Atticus"
var character: Character = "A"

// Type inferencing
var x = 1
x = 2
x = 234839593

// Constants
let y = 10
// this wont work: y = 50

var price = 2.99
price * 5

var view = UIView(
    frame:CGRect(
        origin:CGPoint(x: 0, y:0),
        size: CGSize(width: 100, height: 30)
    )
)
view.backgroundColor = UIColor.redColor()











