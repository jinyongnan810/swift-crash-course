// includes all the swift basics
import Foundation
print("hello")

let hello = "hello"
let world = "world"


// part 1: let
let arr = [
    hello,
    world
]

// let makes array(and other value type)'s value and itself immutable
//arr.append("ok")

// part 2: string & array are structure(value) types, and aren't reference type.
// Assigning to another variable copies the value
let foo = "foo"
var foo2 = foo
foo2 = "foo2"
foo

var arr2 = arr
arr2 = ["baz","boo"]
arr

// let cannot make reference type immutable, and functions can change the parameters
let names = NSMutableArray(array: ["foo","bar"])
names.add("hello")
func changeArray(_ array:NSArray) {
    let shallowCoppy = array as! NSMutableArray
    shallowCoppy.add("bye")
}
changeArray(names)
names
