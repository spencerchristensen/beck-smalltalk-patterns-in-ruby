# Kent Beck's Best Practice Patterns in Ruby

This repo contains patterns from Kent Beck's book *Smalltalk Best Practice Patterns* implemented in Ruby. This is purely for educational purposes, allowing me to study both Ruby and these patterns simultaneously. While all Ruby code is written by me, credit for the patterns and concepts themselves belong entirely to Kent Beck.

## Rules

## Quotes

> Objects model the world through behavior and state. Behavior is the dynamic, active, computational part of the model. State is what is left after behavior is done, how the model is represented before, after, and during a computation. Of the two, behavior is the more important to get right. The primacy of behavior is one of the odd truths of objects; odd because it flies in the face of so much accumulated experience. Back in the bad old days, you wanted to get the representation right as quickly as possible because every change to the representation bred changes in many different computations. Objects (done right) change all that. No longer is your system a slave of its representation. Because objects can hide their representation behind a wall of messages, you are free to change representation and only affect one object.

Beck, Kent. Smalltalk Best Practice Patterns (19)

> Messages are the heartbeat of a Smalltalk program...When you learn to see your program in terms of patterns of messages and you learn what can be done to that stream of messages to solve problems, then you will be able to solve any problem you can imagine in Smalltalk.

Beck, Kent. Smalltalk Best Practice Patterns (43)

> In the dawn of computing time, state was all there was...the first thing electronic computing did was make state virtual...the stored program computer changed all this. Now, the manipulations and the state were on par...The enormous cost of [early programs with lots of functions modifying lots of state] led to a backlash. Programs as state were bad. State must be bad too. This led to the development of functional programming, where there is no state, only programs. In spite of their conceptual and mathematical elegance, functional programming languages never caught on for commercial software. The problem is that programmers think and model in terms of state...Objects represent a middle ground. State is good, but only when properly managed.

Beck, Kent. Smalltalk Best Practice Patterns (80-81)

> The very richness of the collection classes is their biggest drawback. Beginning programmers typically learn to use a small fraction of the available classes and messages, relying on leftover skills from procedural programming for the rest of the functionality they need.

Beck, Kent. Smalltalk Best Practice Patterns (113)

## Patterns

| Name | Problem | Solution |
|:--|:--|:--|
| Choosing Method | How do you execute one of several alternatives? | Send a message to one of several different kinds of objects. When you observe explicit conditional logic repeated in several places, it is time to represent the alternatives as objects with a choosing method. |
| Collecting Parameter | How do you return a collection that is the collaborative result of several methods? | Add a parameter that collects their results to all of the submethods. |
| Decomposing Message | How do you invoke parts of a computation? | Send several messages to self. |
| Delegation | How does an object share implementation without inheritance? | Pass part of its work to another object. |
| Dispatched Interpretation | How can two objects cooperate when one wishes to conceal its representation? | Have the client send a message to the encoded object. Pass a parameter to which the encoded object will send decoded messages. |
| Double Dispatch | How can you code a computation that has many cases, such as when it is the cross product of two class hierarchies? | Send a message to the argument. Append the class name of the receiver to the selector. Pass the receiver as an argument. This can lead to N x M methods. |
| Extending Super | How do you add to a superclass' implementation of a method? | Override the method and send a message to `super` in the overriding method |
| Intention Revealing Message | How do you communicate your intent when the implementation is simple? | Send a message to send and name it so that it communicates what is to be done instead of how it is done. |
| Intention Revealing Selector | What do you name a method? | Name the methods after what they accomplish. To generalize a name, imagine that you create a second implementation very different from the first. Would you give that new implementation the same name? If so, you have reached the appropriate level of naming abstraction. |
| Mediating Protocol | How do you code the interaction between two objects that need to remain independent? | Refine the protocol between the objects so the words used are consistent |
| Message | How do yo invoke computation? | Send a named message and let the receiver decide what to do with it. Messages in OO can serve the same purpose as control structures in procedural languages. |
| Modifying Super | How do you change part of the behavior of a superclass' method without modifying it? | Override the method and invoke `super`, then execute the code to modify the results |
| Pluggable Behavior | How do you parameterize the behavior of an object? | Add a variable that will be used to trigger different behavior. |
| Pluggable Block | How do you code complex Pluggable Behavior that is not quite worth its own class? | Add an instance variable to store a block. Append "Block" to the Role Suggesting Instance Variable Name. Create a Composed Method to evaluate the Block to invoke the Pluggable Behavior. |
| Pluggable Selector | How do you code simple instance specific behavior? | Add a variable that contains a selector to be performed. Append "Message" to the Role Suggesting Instance Variable Name. Create a Composed Method that simply performs the selector. |
| Self Delegation | How do you implement delegation to an object that needs reference to the delegating object? | Pass along the delegating object in an additional parameter called `for:` |
| Simple Delegation | How do you invoke a disinterested delegate? | Delegate messages unchanged. |
| Super | How can you invoke superclass behavior? | Invoke code ina  superclass explicitly by sending a message to `super` instead of `self` |
| Comment Method | How do you comment methods? | Communicate information that is not obvious in a comment before the method. This should be rare and only used for truly obscure items: |
| Comparing Method | How do you order objects with respect to each other? | Implement `<=` to return true if the receiver should be ordered before the argument. |
| Composed Method | How do you divide your program into methods? | Divide your program into methods that perform one identifiable task. |
| Constructor Method | How do you represent instance creation? | Create methods that perform well-formed instances; pass all required parameters to them. |
| Constructor Parameter Method | How do you set instances variables from the parameters passed to the Constructor Method? | Code a single method that sets all the variables. |
| Conversion | how do you convert information from one object's format to another? | Convert from one objects format to another instead of overwhelming one object's protocol. |
| Converter Constructor Method | How do you represent the conversion of an object to another with a different interface? | Make a Constructor Method that takes the object to be converted as an argument. |
| Converter Method | How do you represent a simple conversion between two objects that share the same interface? | Provide a method in the object to be converted that converts to the new object. Prepend 'as'. |
| Debug Printing Method | How do you code the default printing method? | Override print to provide information about an objects structure to the programmer. |
| Execute Around Method | How do you represent pairs of actions that have to be taken together? | Code a method that takes a block, invoke the first method, yield to the block, and then invoke the second method. |
| Query Method | How do you represent testing a property of an object? | Provide a method that returns a Boolen. Name it by prefacing a form of "be", is|was|will|etc |
| Shortcut Constructor Method | What is the proper interface for when a Constructor Method becomes too wordy? | Represent object creation as a method called upon one of the parameters passed to the Constructor Method. |
| Qualified Subclass Name | What dco you name a new subclass? | Name subclasses in your hierarchies by prepending an adjective to the superclass name. |
| Simple Superclass Name | What do you call a class that is expected to be the root of an inheritance hierarchy? | Name a superclass with a single word that conveys its purpose in the design. |
| Array | How do you code a collection with a fixed number of elements? | Use an Array. Create it with `new: anInteger` so that it has space for the number of elements you know it needs. |
| Byte Array | How do you code an Array of numbers in the range of 0..255 or 128..127? | Use a ByteArray. |
| Collection | How do you represent a one-to-many relationship? | Use a Collection. |
| Dictionary | How do you map one kind of object to another? | Use a Dictionary. |
| Equality Method | How do you code equality for new objects? | If you will be putting objects in a Set, using them as Dictionary keys, or otherwise using them with other objects that define equality, define a method called "=" so only objects of compatible classes will be fully tested for equality. |
| Hashing Method | How do you ensure that new objects work correctly with hashed Collections? | If you override `=` and use the object with a hashed Collection, override "hash" so that two objects that are equal return the same hash value. |
| Interval | How do you code a collection of numbers in sequence? | Use an Interval with start, stop, and an optional step value. |
| Ordered Collection | How do you code Collections whose size can't be determined when they are created? | Use an OrderedCollection as your default dynamically sized Collection. |
| Run Array | How do you compactly code an OrderedCollection or Array where you have the same element many times in a row? | Use a RunArray to compress long runs of the same element. |
| Set | How do you code a Collection whose elements are unique? | Use a Set. |
| Sorted Collection | How do you sort a collection? | Use a SortedCollection. Set its sort block if you want to sort by some criteria other than `<=`. |
| Concatenating Stream | How do you concatenate several Collections? | Use a Stream to concatenate many Collections. |
| Duplicate Removing Set | How do you remove the duplicates from a Collection? | Send `asSet` to the Collection. The result will have all duplicates removed. |
| Lookup Cache | How do you optimize complex Detect or Select/Reject loops? | Prepend `lookup` to the name of the expensive search or filter method. Add an instance variable holding a Dictionary to cache results. Name the variable by appending "Cache" to the name of the search. Make the parameters of the search the keys of the Dictionary and the result of the search the values. |
| Parsing Stream | How do yo write a simple parser? | Put the Stream in an instance variable. Have all parsing methods work form the same Stream. |
| Queue | How do you implement a queue? | Implement a queue using an OrderedCollection. Operations: `add`, `remove`, `empty`, `length` |
| Searching Literal | How do you search for one of a few literal objects known when you write the code? | Ask a literal Collection if it includes the element you are seeking. |
| Stack | How do you implement a stack? | Implement a stack using an OrderedCollection. Operations: `push`, `pop`, `top`, `depth`, `empty` |
| Temporarily Sorted Collection | How do you present a Collection with one of many sort orders? | Return a sorted copy of the Collection by sending `asSortedCollection` to the Collection. |
| Collect | How do you operation on the result of a message sent to each object in the collection? | Use `collect` to create a new collection whose elements are the results of evaluating the block passed to `collect` with each element of the original collection. |
| Concatenation | How do you put two collections together? | Concatenate two collections by sending `,` to the first with the second as an argument. |
| Detect | How do you search a collection? | Search a collection by sending it `detect`. The first element for which the block argument evaluates to true will be returned. |
| Enumeration | How do you execute code across a collection? | Use the enumeration messages to spread a computation across a collection. |
| Includes | How do you search for a particular element in a collection? | Send `includes` and pass the object to be searched for. |
| Inject Into | How do you keep a running value as you iterate over a collection? | Use `inject:into` to keep a running value. |
| Is Empty | How do you test if a collection is empty? | Send `isEmpty` to test whether a collection is empty (has no elements). Use `notEmpty` to test whether a collection has elements. |
| Select Reject | How do you filter out part of a collection? | Use `select` and `reject` to return new collections containing only elements of interest. |
| Cascade | How do you format multiple messages to the same receiver? | Use a Cascade to send several messages to the same receiver. Separate the messages with a semicolon. Put each message on its own line and indent one tab. Only use Cascades for messages with zero or one argument. |
| Conditional Expression | How do you format conditional expressions where both branches assign or return a value? | Format conditionals so their value is used where it clearly expresses the intent of the method. |
| Guard Clause | How do you format code that shouldn't execute if a condition holds? | Format the one-branch conditional with an explicit return. |
| Indented Control Flow | How do you indent messages? | Put zero or one argument messages on the same lines as their receiver. For messages with two or more keywords put each keyword/argument pair on its own line, indented one tab. |
| Inline Message Pattern | How do you format the message pattern? | Write the message pattern without explicit line breaks. |
| Interesting Return Value | When do you explicitly return a value at the end of a method? | Return a value only when you intend for the sender to use the value. |
| Rectangular Block | How do you format blocks? | Make blocks rectangular. Use the square brackets as the upper left and bottom right corners of the rectangle. |
| Simple Enumeration Parameter | What do you call the parameter to an enumeration block? | Call the parameter "each". If you have nested enumeration blocks, append a descriptive word to all parameter names. |
| Type Suggesting Parameter Name | What do you call a method parameter? | Name parameters according to their most general expected class, preceded by "a" or "an". |
| Yourself | How can you use the value of a Cascade if the last message doesn't return the receiver of the message? | When you need the value of a Cascade and the last message does not return the receiver, append the message `yourself` to the Cascade. |
| Boolean Property Setting Method | How do you set a boolean property? | Create two methods beginnign with "be". One has property name, the other the negation. Add "toggle" if the client doesn't want to know about the current state. |
| Collection Accessor Method | How do you provide access to an instance variable that holds a collection? | Provide methods that are implemented with Delegation to the collection. To name the methods, add the name of the collection to the collection methods. |
| Common State | How do you represent state, different valuyes for which will exist in all instances of a class? | Declare an instance variable in the class. |
| Constant Method | How do you code a constant? | Create a method that returns the constant. |
| Default Value Method | How do you represent the default value of a variable? | Create a method that returns the value. Prepend "default" to the name of the variable as the name of the method. |
| Direct Variable Access | How do you get and set an instance variable's value? | Access and set the variable directly. |
| Enumeration Method | How do you provide safe, general access to collection elements? | Implement a method that executes a Block for each element of the collection.  Name the method by concatenating the name of the collection and "Do:" |
| Explicit Initialization | How do you initialize instance variables to their default value? | Implement a method `initialize` that sets all the values explicitly. Override the class message `new` to invoke it on new instances. |
| Getting Method | How do you provide access to an instance variable? | Provide a method that returns the value of that variable. Give it the same name as the variable. |
| Indirect Variable Access | How do you get and set an instance variable's value? | Access and set its value only through a Getting Method and a Setting Method. |
| Lazy Initialization | How do you initialize an instance variable to its default value? | Write a Getting Method for the variable. Initialize it if necessary with a Default Value Method. |
| Role Suggesting Instance Variable Name | What do you name an instance variable? | Name instance variables for the role they play in the computation. Make the name plural if the variable will hold a Collection. |
| Setting Method | How do you change the value of an instance variable? | Provide a method with the same name as the variable. Have it take a single parameter, the value to be set. |
| Variable State | How do you represent state whose presence varies from instance to instance? | Put variables that only some instances will have in a Dictionary stored in an instance variable called `properties`. Implement `propertyAt: aSymbol` and `propertyAt: aSymbol, put: anObject` to access properties. |
| Caching Temporary Variable | How do you improve the performance of a method? | Set a temporary variable to the value of the expression as soon as it is valid. Use the variable instead of the expression in the remainder of the method. |
| Collecting Temporary Variable | How do you gradually collect values to be used later in a method? | When you need to collect or merge objects over a complex enumeration, use a temporary variable to hold the collection or merged value. |
| Explaining Temporary Variable | How do you simplify a complex expression within a method? | Take a subexpression out of the complex expression. Assign its value to a termporary variable before the complex expression. Use the variable instead of the complex expression. |
| Reusing Temporary Variable | How do you use an expression several places in a method when its value may change? | Execute the expression once and set a temporary variable. Use the variable instead of the expression in the remainder of the method. |
| Role Suggesting Temporary Variable Name | What do you call a temporary variable? | Name a temporary variable for the role it plays in the computation. |
| Temporary Variable | How do you save the value of an expression for later use within a method? | Create a variable whose scope and extent is a single method. Delcare it just below the method selector. Assign it as soon as the expression is valid. |
