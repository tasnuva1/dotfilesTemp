# Creating custom data type like QuitMessage, MoveMessage.

````
struct QuitMessage { // unit struct MoveMessage
    x: i32,
    y: i32,
}
struct WriteMessage(String); // tuple 
struct ChangeColorMessage(i32, i32, i32);  // tuple

MoveMessage {
x: 23,
y: 38
};
// tightly indected instance
// enum name {namestracture}
// depanding on the stracture, I'll asscs.

impl MoveMessage {
    fn change_num(&mut self, num: i32) {
          self.x = num;
   }

   // Associated funtion/static funtion, it has to do with the MoveMessage, not it's instances
   fn new(num1: i32, num2: i32) -> Self {
        Self {
            x: num1,
            y: num2,
      }
   } 
}
````

- self that instances we are calling on. & and self keywork for not taking ownarship of that reference, and mut keywork for mutatiting that reference

- we can assas implimentation by . on the instances or :: for associated function/mathod. For associated function/mathod you don't need a reference to call it.


you can do this, but that's wired:
```
impl MoveMessage {
    fn change_num(&mut self, num: i32) {
          self.x = num;
   } // self means instance ar upor call by . 


    fn change_num2(num: i32) -> i32 {
          num
   } // :: assas means struct defination ar upor call
   fn new(num1: i32, num2: i32) -> Self {
        Self {
            x: num1,
            y: num2,
      }
   } // Self means struct defination ar upor call 
}


MoveMessage::change_num2; // it's not doing anything with the struct defination. it has nothing to do with the MoveMessage, the struct defination. it's not creating a date.
```

- **summery:** implementation or action function/mathod, you can call on instances with . you can asses . Associated fuction/mathod, you can call it on struct defination with :: you can asses. Case we don't have an instance to use the mathod on. anything associate is connected by this :: 


- String::from("something is thing"); // from is a associate mathod for String type.

----------------------------------------------------------------------------------------
```
enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String), // tuple
    ChangeColor(i32, i32, i32), // tuple
}


Message::Move {
x: 23, 
y: 37
};
// different, different, indivual instance in 1 structure
// enum name {namestracture}
// depanding on the stracture, I'll asscs.
```
----------------------------------------------------------------------------------------
# mathods:
- .clone()
- array.into()   to convert into an vec
- array/vec.inter()    to interate
- data = &data.to_uppercase();  
- str/string.split_whitespace() resulting an iterator which is collected into a Vec<&str>


----------------------------------------------------------------------------------------
# summary:
- into_iter() is iterator converter from collection.
- split() is iterator converter from string.
- collect() is collection converter from iterator.
- parse() is specified data type converter from string.
- unwrap() is Ok or Some extracter from Result or Option.


- .split(): Splits a string into substrings based on a delimiter and returns an iterator.
fn split(&self, delimiter: char) -> Split<'_, char>


- into_iter() converts a collection into an iterator. This is useful when you want to iterate over the elements of a collection and consume it in the process.


- unwrap() is a method used on a Result or Option to extract the inner value if it's Ok or Some. It's commonly used when you're certain that the result is not an error or None, and it simplifies error handling. 

----------------------------------------------------------------------------------------
# match is for underline value
&String means use pressure to converted to str referenct.


If you're interested in learning about how this kind of reference conversion works, you can jump ahead in the book and read this part in the smart pointers chapter: <https://doc.rust-lang.org/stable/book/ch15-02-deref.html#implicit-deref-coercions-with-functions-and-methods>

----------------------------------------------------------------------------------------
# For Hash Maps (HashMap<K, V>):
- new(): Creates an empty HashMap with at least the specified capacity.
- insert(key: K, value: V): Inserts a key-value pair into the hash map.
- contains_key(&key: &K) -> bool: Checks if a key exists in the hash map.
- get(&key: &K) -> Option<&V>: Gets the value associated with a key. take a ref to any type, return an option to a ref to any type.
- iter(): Returns an iterator over key-value pairs
- keys(): Returns an iterator over the keys.
- values(): Returns an iterator over the values.
- remove(&key: &K) -> Option<V>: Removes a key-value pair by key and returns the value.
- entry(key: K) -> Entry<'_, K, V>: gives key’s corresponding entry (location) for in-place manipulation.



`let score = scores.get(&team_name).copied().unwrap_or(0);` <br>
get() will returns an Option and gives a referens of that value. copied() mathod is able to go through that option type then copied() takes the reference to the inner i32 and creates a copy of it. Then use the unwrap_or(0) method to either retrieve the score if it exists or provide a default value of 0 if it doesn't. This is necessary because the get method returns an Option, and unwrap_or allows you to handle the case (without a match) where the key is not found in the map.
  
**👷todos:** I wanna do that chatni to see how data is flowting form one function to another.


Overwriting a Value:
    scores.insert(String::from("Blue"), 10);
    scores.insert(String::from("Blue"), 25);


scores.entry(String::from("Blue")).or_insert(50);    // Add Key and Value Only If a Key Isn’t Present or exists. 

----------------------------------------------------------------------------------------
mod means grouping related functionality. inside all private <br>
pub to public

----------------------------------------------------------------------------------------
pub fn entry(&mut self, key: K) -> Entry<'_, K, V>: & and self keywork for not taking ownarship of that instances, and mut keywork for mutatiting that instances

----------------------------------------------------------------------------------------
**note:** We welcome contributions of all kinds. Knowing what people use this book for the most helps direct our attention to making those sections the best that they can be. 

------------------------------------------------------------------------------------------------------------
One might argue that a book about code is somehow behind the times—that code is no
longer the issue; that we should be concerned about models and requirements instead.

. That programmers simply won’t be needed because busi-
ness people will generate programs from specifications.
Nonsense! We will never be rid of code, because code represents the details of the
requirements.

 And specifying requirements in such detail that a machine can execute them is
programming. Such a specification is code.

It will still need to
be rigorous, accurate, and so formal and detailed that a machine can understand and
execute it.

They are hoping
that one day we will discover a way to create machines that can do what we want rather
than what we say.

These machines will have to be able to understand us so well that they
can translate vaguely specified needs into perfectly executing programs that precisely meet
those needs. 

Not even humans, with all their intuition and creativity,
have been able to create successful systems from the vague feelings of their customers.

Indeed, if the discipline of requirements specification has taught us anything, it is that
well-specified requirements are as formal as code and can act as executable tests of that
code!
Remember that code is rea

Remember that code is really the language in which we ultimately express the require-
ments.

We may create languages that are closer to the requirements
But we will
never eliminate necessary precision—so there will always be code.

We’ve all looked at the mess we’ve just made and then have chosen to leave it for
another day

If you have been a programmer for more than two or three years, you have probably been
significantly slowed down by someone else’s messy code. If you have been a programmer
for longer than two or three years, you have probably been slowed down by messy code

Every addition or modification to the system requires that the tangles,
twists, and knots be “understood” so that more tangles, twists, and knots can be added.

 You will not
make the deadline by making the mess. Indeed, the mess will slow you down instantly, and
will force you to miss the deadline. The only way to make the deadline—the only way to
go fast—is to keep the code as clean as possible at all times.

A programmer with “code-sense” will look
at a messy module and see options and variations. The “code-sense” will help that pro-
grammer choose the best variation and guide him or her to plot a sequence of behavior
preserving transformations to get from here to there.

"I like my code to be elegant and efficient. The
logic should be straightforward to make it hard
for bugs to hide, the dependencies minimal to
ease maintenance, error handling complete
according to an articulated strategy, and per-
formance close to optimal so as not to tempt
people to make the code messy with unprinci-
pled optimizations. Clean code does one thing
well."

Bad code tries to do
too much, it has muddled intent and ambiguity of purpose. Clean code is focused. Each
function, each class, each module exposes a single-minded attitude that remains entirely
undistracted, and unpolluted, by the surrounding details.

 Like a good novel, clean code should clearly expose the ten-
sions in the problem to be solved.  It should build those tensions to a climax and then give the reader that “Aha! Of course!”

 as the issues and tensions are resolved in the revelation
of an obvious solution. 

briskly decisive and matter-of-fact, without hesi-
tation or unnecessary detail. After all the word “crisp” is nearly a synonym for “concrete.” “crisp abstraction”

a difference between code that is easy to read
and code that is easy to change. 
Dave ties cleanliness to tests!

Apparently he values code that is small, rather
than code that is large.Smaller is better. 

Clean code always
looks like it was written by someone who cares.
There is nothing obvious that you can do to
make it better. code left by some-
one who cares deeply about the craft.

Someone has taken the time to keep it simple and orderly.

Expresses all the design ideas that are in the 
system;

"After years of doing this work, it seems to me that all programs are made up of very
similar elements. One example is “find things in a collection.” Whether we have a data-
base of employee records, or a hash map of keys and values, or an array of items of some
kind, we often find ourselves wanting a particular item from that collection. When I find
that happening, I will often wrap the particular implementation in a more abstract method
or class. That gives me a couple of interesting advantages.

I can implement the functionality now with something simple, say a hash map, but
since now all the references to that search are covered by my little abstraction,

collection
behavior when all I really need is a few fairly simple ways of finding what I want. -  high expressiveness, and early building of simple abstractions. That’s what makes clean code for me."

Ron has summarized the contents of this book. No
duplication, one thing, expressiveness, tiny abstractions.


"You know you are working on clean code when each
routine you read turns out to be pretty much what
you expected. You can call it beautiful code when
the code also makes it look like the language was
made for the problem."

 When was the last time you saw a module that
was pretty much what you expected?

We’ve all railed against the fact that our lan-
guages weren’t designed for our problems. But Ward’s statement puts the onus back on us.
He says that beautiful code makes the language look like it was made for the problem

We are constantly reading old code as part of the effort to write new code.
Because this ratio is so high, we want the reading of code to be easy,

 there’s no way to write code without reading it, so making it
easy to read actually makes it easier to write.
There is no escape from this logic. You cannot write code if you cannot read the sur-
rounding code. The code you are trying to write today will be hard or easy to write
depending on how hard or easy the surrounding code is to read.

various principles of design. These
include the Single Responsibility Principle (SRP), the Open Closed Principle (OCP), and
the Dependency Inversion Principle (DIP) among others.

what is being measured and the unit of that measure-
ment

---
intention-revealing function (call it isFlagged) to hide the magic num-
bers

instead of using an array of ints. Use a struct for flaggedCells and then "add" mathod to add.

accountGroup or
bunchOfAccounts or just plain accounts would be better. not  accountList


HandlingOfStrings
StorageOfStrings

Imagine that you have a Product
class. If you have another called ProductInfo or ProductData

getActiveAccount();
getActiveAccounts();
getActiveAccountInfo();
How are the programmers in this project supposed to know which of these functions to call?

moneyAmount is indistinguishable
from money, customerInfo is indistinguishable from customer, accountData is indistinguish-
able from account

If you can’t pronounce it, you can’t discuss it without sounding like an idiot. “Well,
over here on the bee cee arr three cee enn tee we have a pee ess zee kyew int, see?” This
matters because programming is a social activity.

generationTimestamp; 
modificationTimestamp;
recordId 

“Hey, Mikey, take a look at this record! The gen-
eration timestamp is set to tomorrow’s date! How can that be?”

setDescription

 building *FACTORY for the creation of shapes*. This factory will be an interface and will
be implemented by a concrete class. I don’t
want my users knowing that I’m handing them an interface. I just want them to know that
it’s a *ShapeFactory*.

Readers shouldn’t have to mentally translate your names into other names they already
know. This is because those single-letter names for loop counters are traditional.

noun or noun phrase names like Customer, WikiPage,
Account, and AddressParser. Avoid words like Manager, Processor, Data, or Info in the name
of a class. A class name should not be a verb.

Methods should have verb or verb phrase names like postPayment, deletePage, or save. should be named for their value and prefixed with get,
set, and is for validation. employee.getName() employee.getName() paycheck.isPosted() for validating

DeleteItems function name might be a better. abort().  kill() 

For instance, it’s confusing to
have fetch, retrieve, and get as equivalent methods of different classes.

he function
names have to stand alone, and they have to be consistent in order for you to pick the cor-
rect method without any additional exploration.

it’s confusing to have a controller and a manager and a driver in the same
code base. What is the essential difference between a DeviceManager and a Protocol-
Controller?

However one might decide to use the word add for “consistency” when he or she is not
in fact adding in the same sense. “one word per concept” rule, should use a name like insert or append
instead.

go ahead and use
computer science (CS) terms, algorithm names, pattern names, math terms, and so forth. It
is not wise to draw every name from the problem domain.  AccountVisitor

 firstName, lastName, street, houseNumber, city,
state, and zipcode. Taken together it’s pretty clear that they form an address.

To split the func-
tion into smaller pieces we need to create a GuessStatisticsMessage class and make the
three variables fields of this class. This provides a clear context for the three variables.
      number = "no";
      verb = "are";
      pluralModifier = "s";
They
are definitively part of the GuessStatisticsMessage. 

Variables have a context.
Listing 2-2 / Listing 2-1 


 it is a bad idea to prefix every
class with GSD. Frankly, you are working against your tools. You type G and press the com-
pletion key and are rewarded with a mile-long list of every class in the system. 

The names accountAddress and customerAddress are fine names for instances of the
class Address but could be poor names for classes. Address is a fine name for a class. If I
need to differentiate between MAC addresses, port addresses, and Web addresses, I might
consider PostalAddress, MAC, and URI. The resulting names are more precise, which is the
point of all naming

good names is that it requires good descriptive skills and
a shared cultural background.


 it’s got duplicated
code, lots of odd strings, and many strange and inobvious data types and APIs.


renderPageWithSetupsAndTeardowns()
audio 1

Listing 3-2 


very small functions are better.
they should be smaller than that.
 Functions should not be 100 lines long.
Functions should hardly ever be 20 lines long. 
When Kent
showed me the code, I was struck by how small all the functions were
Every function in this pro-
gram was just two, or three, or four lines long.
 Each was transparently obvious. Each told
a story. And each led you to the next in a compelling order.*

Just better: Listing 3-3 includeSetupAndTeardownPages


blocks within if statements, else statements, while statements, and
so on should be one line long. Probably that line should be a function call. Not only does
this keep the enclosing function small, but it also adds documentary value because the
function called within the block can have a nicely descriptive name.

the indent level of a function should not be greater than one or two

the original renderHTML  is doing lots
more than one thing. It’s creating buffers, fetching
pages, searching for inherited pages, rendering paths,
appending arcane strings, and generating HTML,
among other things. it is hard to know what “one thing” is. 

It’s easy to make the case that it’s doing three things: 
1. Determining whether the page is a test page. 
2. If so, including setups and teardowns. 
3. Rendering the page in HTML.

TO RenderPageWithSetupsAndTeardowns, we check to see whether the page is a test page
and if so, we include the setups and teardowns. In either case we render the page in
HTML.
If a function does only those steps that are one level below the stated name of the
function, then the function is doing one thing.

the reason we write functions is to
decompose a larger concept (the name of the function) into a set of steps at
the next level of abstraction.

two levels of
abstraction. 
it would be very hard to mean-
ingfully shrink

another way to know that a function is doing more than “one thing” is if you can
extract another function from it with a name that is not merely a restatement of its imple-
mentation.


Functions that do one thing cannot be reasonably divided into
sections.

we need to make sure that the
statements within our function are all at the same level of abstraction. (In order to make sure our functions are doing “one thing,”)
There are concepts in there that are at a very high level of
abstraction, such as getHtml(); others that are at an intermediate level of abstraction, such
as: String pagePathName = PathParser.render(pagePath); and still others that are remark-
ably low level, such as: .append("\n").
Mixing levels of abstraction within a function is always confusing. Readers may not
be able to tell whether a particular expression is an essential concept or a detail.


like broken windows, once details are mixed with essential concepts, more and more
details tend to accrete within the function.

We want the code to read like a top-down narrative.5 We want every function to be fol-
lowed by those at the next level of abstraction so that we can read the program, descending
one level of abstraction at a time as we read down the list of functions. I call this The Step-
down Rule.

To include the setups and teardowns, we include setups, then we include the test page con-
tent, and then we include the teardowns.
To include the setups, we include the suite setup if this is a suite, then we include the
regular setup.
To include the suite setup, we search the parent hierarchy for the “SuiteSetUp” page
and add an include statement with the path of that page.
To search the parent. . .

It turns out to be very difficult for programmers to learn to follow this rule and write
functions that stay at a single level of abstraction. But learning this trick is also very
important.
It is the key to keeping functions short and making sure they do “one thing.”
Making the code read like a top-down set of TO paragraphs is an effective technique for
keeping the abstraction level consistent.

Listing 3-3, 3-2
Notice
how each function introduces the next, and each function remains at a consistent level
of abstraction.

So, One Level of Abstraction per Function.

Listing 3-4 
 it violates the Open Closed Principle8 (OCP) because it
must change whenever new types are added.possibly the worst problem with this
function is that there are an unlimited number of other functions that will have the same
structure. Ex: isPayday or deliverPay
All of which would also depend on type and same deleterious structure.

The factory will use the
switch statement to create appropriate instances of the derivatives of Employee, and the var-
ious functions, such as calculatePay, isPayday, and deliverPay, will be dispatched poly-
morphically through the Employee interface.

My general rule for switch statements is that they can be tolerated if they appear
only once, are used to create polymorphic objects  and are hidden behind an inheritance relationship.

example function from testableHtml to
SetupTeardownIncluder.render.
 I also gave each of the private methods an equally descriptive name
such as isTestable or includeSetupAndTeardownPages

The smaller and more focused a function is, the easier it is to choose a descriptive
name.

Choosing descriptive names will clarify the design of the module in your mind and
help you to improve it.

It is not at all uncommon that hunting for a good name results in a
favorable restructuring of the code. 

Be consistent in your names. 
Consider, for example, the names includeSetup-
AndTeardownPages, includeSetupPages, includeSuiteSetupPage, and includeSetupPage.
 The
similar phraseology in those names allows the sequence to tell a story.
you’d ask yourself: “What happened to
includeTeardownPages, includeSuiteTeardownPage, and includeTeardownPage?” How’s that
for being “. . . pretty much what you expected.”

Arguments are hard. They take a lot of con-
ceptual power. 

Consider, for instance, the
StringBuffer in the example. We could have
passed it around as an argument rather than mak-
ing it an instance variable, The argument would be a different level of abstraction than the function name and
forces you to know a detail.  that isn’t particularly important
at that point. 

 Imagine the difficulty of
writing all the test cases to ensure that all the various combinations of arguments work
properly.  If there are no arguments, this is trivial
 If there’s one argument, it’s not too hard.
With two arguments the problem gets a bit more challenging. With more than two argu-
ments, testing every combination of appropriate values can be daunting.


Output arguments are harder to understand than input arguments. One input argument is the next best thing to no arguments. SetupTeardown-
Includer.render(pageData) is pretty easy to understand. Clearly we are going to render the
data in the pageData object. 


In this form there is an input argument but no output argument. The overall
program is meant to interpret the function call as an event and use the argument to alter the
state of the system. Letting the systme know that user had attempt incurrent password, n number of times. 
 void passwordAttemptFailedNtimes(int attempts). 
 It should be very clear to the reader that this is an event. Failed.

 boolean fileExists(“MyFile”). 
InputStream
fileOpen(“MyFile”) ----> you may be
operating on that argument, transforming it into something else and returning it.


Choose
names and contexts carefully.

void
includeSetupPageInto(StringBuffer pageText). it's not looks like an event. instead of a
return value for a transformation is confusing.

 If a function is going to transform its input
argument, the transformation should appear as the return value: StringBuffer
transform(StringBuffer in)

Passing a boolean into a function is a truly terrible practice.  this function
does more than one thing. It does one thing if the flag is true and another if the flag is false!

Still, the
method call render(true) is just plain confusing to a poor reader. or seeing render(boolean isSuite).  We should have
split the function into two: renderForSuite() and renderForSingleTest().

A function with two arguments is harder to understand.  For exam-
ple, writeField(name) is easier to understand than writeField(output-Stream, name).10
Though the meaning of both is clear.  the first glides past the eye, easily depositing its
meaning. The second requires a short pause until we learn to ignore the first parameter. It showing the enner ditals that we don't need. we should never ignore any
part of code. The parts we ignore are where the bugs will hide.

Point p = new Point(0,0); is perfectly reasonable. 1 for each x's. However, the two argu-
ments in this case are ordered components of a single value. Whereas output-Stream and
name have neither a natural cohesion, nor a natural ordering. No relationship.

Even obvious dyadic functions like assertEquals(expected, actual) are problematic.
How many times have you put the actual where the expected should be? The two argu-
ments have no natural ordering. The expected, actual ordering is a convention that
requires practice to learn.

you might make the
writeField method a member of outputStream so that you can say outputStream.
writeField(name). Or you might make the outputStream a member variable of the current
class so that you don’t have to pass it.

Or you might extract a new class like FieldWriter
that takes the outputStream in its constructor and has a write method. A new enum.

three arguments. The
issues of ordering, pausing, and ignoring are more than doubled. 

When a function seems to need more than two or three arguments, it is likely that some of
those arguments ought to be wrapped into a class of their own. * When groups of variables are passed together, the way x and
y are in the example above, they are likely part of a concept that deserves a name of its
own. like:

Circle makeCircle(double x, double y, double radius);
Circle makeCircle(Point center, double radius);

String.format("%s worked %.2f hours.", name, hours); -----> So all the same rules apply. Functions that take variable arguments can be monads,
dyads, or even triads. But it would be a mistake to give them more arguments than
that.

1 argument function name: should form a very nice verb/noun pair. write(name). . Whatever this “name” thing is, it is being “written.” An
even better name might be writeField(name), which tells us that the “name” thing is a
“field.” ->  Using this form we
encode the names of the arguments into the function name. 

 For example, assertEquals
might be better written as assertExpectedEqualsActual(expected, actual).  This strongly
mitigates the problem of having to remember the ordering of the arguments.

Listing 3-6 -> UserValidator stract with checkPassword mathod. Inside stract Cryptographer type.
This side effect creates a temporal coupling. That is, checkPassword can only be
called at certain times (in other words, when it is safe to initialize the session). If you must have a temporal coupling,
you should make it clear in the name of the function: checkPasswordAndInitializeSession.

appendFooter(s); this should be without s. Does this function append s as the footer to something? Or does it append some footer
to s? Is s an input or an output? 
Anything that forces you to check the function signature is equivalent to a double-take.
It’s
a cognitive break and should be avoided.
In general output arguments should be avoided. If your function must change the state
of something, have it change the state of its owning object. -> for the output I take the argument, and teransfer.

For ex This:
public void appendFooter(StringBuffer report)
appendFooter(s);
Should be this:
report.appendFooter();

Functions should either do something or answer something, but not both. Either your
function should change the state of an object, or it should return some information about
that object. Doing both often leads to confusion. 


Command Query Separation:
if (attributeExists("username")) {
setAttribute("username", "unclebob");
...
}
try to resolve this by renaming the set function to setAndCheckIfExists, but that
doesn’t much help the readability of the if statement. attribute username exits then set it.

page 47: Prefer Exceptions to Returning Error Codes
Functions should do one thing. Error handing is one thing. Thus, a function that handles
errors should do nothing else.

enum in which all the
error codes are defined.

Writing software is like any other kind of writing. When you write a paper or an article,
you get your thoughts down first, then you massage it until it reads well. [this]

 refine that code, splitting out functions, changing names, elim-
inating duplication.

Every system is built from a domain-specific language designed by the programmers to
describe that system. Functions are the verbs of that language, and classes are the nouns.****
The art of programming is, and has always been, the art of language
design. [this]

Master programmers think of systems as stories to be told rather than programs to
be written.
They use the facilities of their chosen programming language to construct a
much richer and more expressive language that can be used to tell that story.
Part of that
domain-specific language is the hierarchy of functions that describe all the actions that
take place within that system. 
those actions are written to
use the very domain-specific language, 
they define to tell their own small part of the
story. 

 If you follow
the rules herein, your functions will be short, well named, and nicely organized. But never forget that your real goal is to tell the story of the system, and that the functions
you write need to fit cleanly together into a clear and precise language to help you with
that telling.

Lastly: Listing 3-7 
SetupTeardownIncluder.java -> it is so pleasent to read.

---
 If our programming languages were expressive enough, or if we had the talent to subtly wield those languages to express our intent, we would not need
comments very much

Every time you express yourself in code, you should pat yourself on the back. *

 I would rather that energy go toward making the code so clear and expressive that it

 Truth can only be found in one place: the code. Only the code can truly tell you what
it does. It is the only source of truly accurate information

Explain Yourself in Code [this]

Rather then this:
// Check to see if the employee is eligible for full benefits
Do this:
if (employee.isEligibleForFullBenefits())


Comments like this should not be contracts or legal tomes. Where possible, refer to a stan-
dard license or other external document rather than putting all the terms and conditions
into the comment.

rather then this:
// Returns an instance of the Responder being tested.
protected abstract Responder responderInstance();

Do this:
renaming the function: responderBeingTested.

Here’s a case that’s a bit better:
// format matched kk:mm:ss EEE, MMM dd, yyyy
Pattern timeMatcher = Pattern.compile(
       "\\d*:\\d*:\\d* \\w*, \\w* \\d*, \\d*");

regular expression is intended to match a
time and date that were format, it might have been better, and clearer to use: SimpleDateFormat.format

A good comment: Explanation of Intent:
//This is our best attempt to get a race condition 
//by creating large number of threads.
widget builder thread 25000 times to test Concurrent addition of widgets in the dashboard.

Warning of Consequences is okay comments.

TODOs are jobs that the programmer thinks should be done, but for some reason
can’t do at the moment. Like:
//TODO-MdM these are not needed
// We expect this to go away when we do the checkout model

It might be a request for someone else to
think of a better name or a reminder to make a change that is dependent on a
planned event.

Our only recourse is to examine the code in other parts of the system to find out what’s
going on. Any comment that forces you to look in another module for the meaning of that
comment has failed to communicate to you and is not worth the bits it consumes. 

What purpose does this comment serve? It’s certainly not more informative than the
code.

Mandated Comments: Comments like this just clutter up the code, propa-
gate lies, and lend to general confusion and disorganization.

Now we have Journal loging system like git.

Noise Comments: Sometimes you see comments that are nothing but noise. They restate the obvious and
provide no new information. our
eyes simply skip over them. Eventually the comments begin to lie as the code around them
changes.

/** The name. */
private String name;
/** The version. */
private String version;
/** The licenceName. */
private String licenceName;
/** The version. */
private String info;

They are just redundant noisy comments
written out of some misplaced desire to provide documentation.

This is a good one: look at the code:

`// does the module from the global list <mod> depend on the
// subsystem we are part of?
if (smodule.getDependSubsystems().contains(subSysMod.getSubSystem()))`

This could be rephrased without the comment as:

`ArrayList moduleDependees = smodule.getDependSubsystems();
String ourSubSystem = subSysMod.getSubSystem();
if (moduleDependees.contains(ourSubSystem)
`

There was a time, back in the sixties, when commenting-out code might have been
useful. But we’ve had good source code control systems for a very long time now. Those
systems will remember the code for us.

 who see that commented-out code won’t have the courage to delete it. 

 Nonlocal Information
Javadocs in Nonpublic Code: javadocs are for public API

---
Think of a well-written newspaper article. You read it vertically. At the top you expect a
headline that will tell you what the story is about. The first paragraph gives you a synopsis of the whole story,
hiding all the details while giving you the broad-brush concepts. As you continue down-
ward, the details increase until you have all the dates, names, quotes, claims, and other
minutia.

The topmost parts of the source file should provide the high-level concepts and algorithms. Detail should increase as we move downward, until at the end
we find the lowest level functions and details in the source file.

you are
trying to understand what the system does, but you are spending your time and mental
energy on trying to locate and remember where the pieces are.

ariables should be declared as close to their usage as possi-
ble. Because our functions are very short, local variables should appear a the top of each
function

Listing 5-5 
Dependent Functions. If one function calls another, they should be vertically close,
and the caller should be above the callee, if at all possible. Notice how the topmost function calls those below it and how they in turn
call those below them. As a newspaper artical, we expact the most importent concep to come first and we expact them to be express with the less amount of poluting detail. low level details comes last.


Certain bits of code want
to be near other bits. They have a certain
conceptual affinity. The stronger that affinity, the
less vertical distance there should be between
them. Consider this snippet of
code from Junit 4.3.1:

Programmers clearly prefer short lines. 

Notice how nicely the equations read. The factors(*) have no white space between them
because they are high precedence. The terms are separated by white space because addi-
tion and subtraction are lower precedence.

page: 87 - 
 My code might have looked like this:
 The alignment seems to
emphasize the wrong things and leads my eye away from the true intent. 
For example, in
the list of declarations above you are tempted to read down the list of variable names with-
out looking at their types.

 If I have long lists that need to be aligned, the problem is the length of the lists, not
the lack of alignment. 

Programmers rely heavily on this indentation scheme. They visually line up lines on
the left to see what scope they appear in. This allows them to quickly hop over scopes

Breaking Indentation. Whenever I have succumbed to this
temptation, I have almost always gone back and put the indentation back in. Like:
```
public class CommentWidget extends TextWidget
{
public static final String REGEXP = "^#[^\r\n]*(?:(?:\r\n)|\n|\r)?";
public CommentWidget(ParentWidget parent, String text){super(parent, text);} // *
public String render() throws Exception {return ""; } // *
}
```
```
public class CommentWidget extends TextWidget {
  public static final String REGEXP = "^#[^\r\n]*(?:(?:\r\n)|\n|\r)?";
  public CommentWidget(ParentWidget parent, String text) {
    super(parent, text);
  }
  public String render() throws Exception {
    return "";
  }
}
```

We decided where we’d put our braces,
what our indent size would be, how we would name classes, variables, and methods, and
so forth. Then we encoded those rules into the code formatter of our IDE and have stuck
with them ever since. These were not the rules that I prefer; they were rules decided by the
team.

---
There is a reason that we keep our variables private. We don’t want anyone else to depend
on them. We want to keep the freedom to change their type or implementation on a whim
or an impulse.

Listing 6-2: 
You can read the individual coordinates independently, but you must set the coordi-
nates together as an atomic operation. 
Hiding implementation is not just a matter of putting a layer of functions between
the variables. Hiding implementation is about abstractions! (the quality of dealing with ideas rather than events.) A class does not simply push its variables out through getters and setters. Rather it exposes abstract interfaces
that allow its users to manipulate the essence of the data, without having to know its
implementation.


Listing 6-3 *
is it better to expose the oviase ander line implementation by having get/getters for fuelTankCapacity, and number of gallons currently in the car. or to have a abscraction that gets the fuel percentage remaing. 

We do not want to expose
the details of our data. Rather we want to express our data in abstract terms. This is not
merely accomplished by using interfaces and/or getters and setters. Serious thought needs
to be put into the best way to represent the data that an object contains. The worst option is
to blithely add getters and setters. **


Data/Object Anti-Symmetry: 
 difference between objects and data structures. Objects hide
their data behind abstractions and expose functions that operate on that data.
Data struc-
ture expose their data and have no meaningful functions. **

Listing 6-5: simple data structures
without any behavior. those shape classes. 

Now consider the object-oriented solution. with a polymorphic area() method implemented by each type shape. Now if I had a new function I need to implement that to every sigle 
shape.

As we saw in the last section, objects
hide their data and expose operations. 

 This means that an object should not expose its
internal structure through accessors because to do so is to expose, rather than to hide, its
internal structure. 

a method should only call
the methods: of these: 
1. the class it's part of 
2. an object it created
3. an object passed as an argument to it
4. an object held in an instance varibale of a class it's in.

Options opts = ctxt.getOptions();
File scratchDir = opts.getScratchDir();
final String outputDir = scratchDir.getAbsolutePath();
If they are objects, then their internal structure
should be hidden rather than exposed, and so knowledge of their innards is a clear viola-
tion of the Law of Demeter. On the other hand, if they are just
data structures with no behavior, then they naturally expose their internal structure, and so
Demeter does not apply.

This issue would be a lot less confusing if data structures simply had public variables
and no functions, whereas objects had private variables and public functions. 

This confusion sometimes leads to unfortunate hybrid structures that are half object and
half data structure.  authors are unsure of—or worse, ignorant of—whether they need
protection from functions or types. need to add new types, or new functions.


ctxt.getAbsolutePathOfScratchDirectoryOption();
or
ctx.getScratchDirectoryOption().getAbsolutePath()
If ctxt is an object, we should be telling it to do something; we should not be asking it
about its internals. **
What if ctxt, options, and scratchDir are objects with real behavior? Then, because
objects are supposed to hide their internal structure, we should not be able to navigate
through them.

we should not be asking it
about its internals. So why did we want the absolute path of the scratch directory? What
were we going to do with it? 
better is: ctxt.createScratchFileStream(). ** 
This allows ctxt to hide its internals and prevents the current function from having to violate the Law of Demeter by
navigating through objects it shouldn’t know about.

Listing 6-7 page 131/462 public variables and no func-
tions. This is sometimes called a data transfer object. They often become the first in a series of translation stages that convert raw data
in a database into objects in the application code. They  are very useful struc-
tures, especially when communicating with databases or parsing messages from sockets. This usually provides no benefit.

treat the Active Record as a data structure and to create
separate objects that contain the business rules and that hide their internal data (which are
probably just instances of the Active Record). (in a transition face, data transfer objects) *

Conclusion
Objects expose behavior and hide data. This makes it easy to add new kinds of objects
without changing existing behaviors. It also makes it hard to add new behaviors to existing
objects. Data structures expose data and have no significant behavior. This makes it easy to
add new behaviors to existing data structures but makes it hard to add new data structures
to existing functions.
In any given system we will sometimes want the flexibility to add new data types, and
so we prefer objects for that part of the system. Other times we will want the flexibility to
add new behaviors, and so in that part of the system we prefer data types and procedures.

---
Many code bases are com-
pletely dominated by error handling. I mean that it is nearly impossible to see what the code does
because of all of the scattered error handling. if it
obscures logic, it’s wrong.

code that handles errors with grace and style.

The problem with these approaches is that they clutter the caller. The caller must
check for errors immediately after the call.

one of the most interesting things about exceptions is that they define a scope.  the try portion of a try-catch-finally statement, you
are stating that execution can abort at any point and then resume at the catch.


a stack
trace can’t tell you the intent of the operation that failed. 
Create informative error messages and pass them along with your exceptions. Men-
tion the operation that failed and the type of failure. 

relatively standard regardless of the
actual cause. record an error and make sure that we can proceed.

wrapping
third-party APIs is a best practice.

Often a single exception class is fine for a particular area of code. The information
sent with the exception can distinguish the errors. Use different classes only if there are
times when you want to catch one exception and allow the other one to pass through.

You create a class or configure an
object so that it handles a special case for you. When you do, the client code doesn’t have
to deal with exceptional behavior. That behavior is encapsulated in the special case object.

When we return null, we are essentially creating work for ourselves and foisting
problems upon our callers. All it takes is one missing null check to send an application
spinning out of control.

create a new exception type and throw it. Not obording. recoverable error.

remember, we
have to define a handler for InvalidArgumentException. What should the handler do? Is
there any good course of action?

forbid
passing null by default. When you do, you can code with the knowledge that a null in an
argument list is an indication of a problem.

Conclusion:
forbid
passing null by default. When you do, you can code with the knowledge that a null in an
argument list is an indication of a problem. 

We can
write robust clean code if we see error handling as a separate concern, something that is
viewable independently of our main logic.

 To the degree that we are able to do that, we can
reason about it independently.

---
We seldom control all the software in our systems. Sometimes we buy third-party pack-
ages or use open source. Other times we depend on teams in our own company to produce
components or subsystems for us. Somehow we must cleanly integrate this foreign code with our own.

Example: Map libary has a lot of function/mathods. But we want to limit the control. 
```public class Sensors {
private Map sensors = new HashMap();
public Sensor getById(String id) {
return (Sensor) sensors.get(id);
}
//snip
}```
New instance of Map, with in the class, that will utilius it. But outside of any mathods.

The use of generics is no longer a big issue because the casting
and type management is handled inside the Sensors class.  

This interface is also tailored and constrained to meet the needs of the application.  It
results in code that is easier to understand and harder to misuse. The Sensors class can
enforce design and business rules. *


 If you use a boundary interface like Map, keep it inside the class, or close family
of classes, where it is used. 


it may be in our best interest to write tests for the third-party code we use.
We might spend a day or two
(or more) reading the documentation and deciding how we are going to use it. Then we
might write our code to use the third-party code and see whether it does what we think. We
would not be surprised to find ourselves bogged down in long debugging sessions trying to
figure out whether the bugs we are experiencing are in our code or theirs. 

Learning the third-party code is hard. Integrating the third-party code is hard too.
Doing both at the same time is doubly hard. What if we took a different approach? Instead
of experimenting and trying out the new stuff in our production code, we could write some
tests to explore our understanding of the third-party code. Jim Newkirk calls such tests
learning tests.1

In learning tests we call the third-party API, as we expect to use it in our application. The tests focus on what we want out of the API. 

The original authors will have pressures to change their code to
meet new needs of their own. They will fix bugs and add new capabilities. With each
release comes new risk. If the third-party package changes in some way incompatible with
our tests, we will find out right away. 

Without these boundary tests to ease the migration, we might be
tempted to stay with the old version longer than we should. 

a clean boundary
should be supported by a set of outbound tests that exercise the interface the same way the
production code does. 

Using Code That Does Not Yet Exist:
We had a pretty good idea of where our world ended and the new world began.
clouds of
ignorance obscured our view beyond the boundary, our work made us aware of what we
wanted the boundary interface to be. 

requrement:
"Key the transmitter on the provided frequency and emit an analog representation of the
data coming from this stream. "
First, we defined our own interface. We called it something
catchy, like Transmitter. We gave it a method called transmit that took a frequency and a
data stream. 

Figure 8-2: * 
we insulated the CommunicationsController classes
from the transmitter API (which was out of our control and undefined).

Once the transmitter API was defined, we wrote the TransmitterAdapter to
bridge the gap. The ADAPTER2 encapsulated the interaction with the API and provides a
single place to change when the API evolves.

It’s better
to depend on something you control than on something you don’t control, lest it end up
controlling you. 

We manage third-party boundaries by having very few places in the code that refer to
them. We may wrap them as we did with Map, or we may use an ADAPTER to convert from
our perfect interface to the provided interface.

---
bad: Typically this would involve some kind of simple driver program that would allow
us to manually interact with the program we had written.

Nowadays I would write a test that made
sure that every nook and cranny of that code worked as I expected it to. ex: the execute method of the Command would be executed in a new
thread after the specified number of milliseconds. I would
schedule commands that set boolean flags, and then I would step the time forward, watching
those flags and ensuring that they went from false to true just as I changed the time to the
right value.

The Agile and TDD move-
ments have encouraged many programmers to write automated unit tests, and more are
joining their ranks every day.

By now everyone knows that TDD asks us to write unit tests first, before we write produc-
tion code. - what we do with it, automate every posibality. 

First Law: You may not write production code until you have written a failing unit test.
Second Law: You may not write more of a unit test than is sufficient to fail, and not com-
piling is failing.
Third Law: You may not write more production code than is sufficient to pass the cur-
rently failing test. 

These three laws lock you into a cycle that is perhaps thirty seconds long. The tests
and the production code are written together, with the tests just a few seconds ahead of the
production code.

If we work this way, we will write dozens of tests every day, hundreds of tests every
month, and thousands of tests every year. If we work this way, those tests will cover virtu-
ally all of our production code. The sheer bulk of those tests, which can rival the size of the
production code itself, can present a daunting management problem.



Keeping Tests Clean: “Quick and dirty” was
the watchword. Their variables did not have to be well named, their test functions did not
need to be short and descriptive. Their test code did not need to be well designed and
thoughtfully partitioned. So long as the test code worked, and so long as it covered the pro-
duction code, it was good enough.

What this team did not realize was that having dirty tests is equivalent to, if not worse
than, having no tests.

The problem is that tests must change as the production code
evolves. The dirtier the tests, the harder they are to change.

As you modify the production code, old tests start
to fail, and the mess in the test code makes it hard to get those tests to pass again. So the
tests become viewed as an ever-increasing liability. In the end they were
forced to discard the test suite entirely.

But, without a test suite they lost the ability to make sure that changes to their code
base worked as expected. Without a test suite they could not ensure that changes to one
part of their system did not break other parts of their system.

So their defect rate began to
rise. As the number of unintended defects rose, they started to fear making changes. They
stopped cleaning their production code because they feared the changes would do more
harm than good.

I have participated in, and coached, many teams who have been successful with clean unit
tests.

The moral of the story is simple: Test code is just as important as production code. It
is not a second-class citizen. It requires thought, design, and care. It must be kept as clean
as production code. 



It is unit tests
that keep our code flexible, maintainable, and reusable. The reason is simple. If you have
tests, you do not fear making changes to the code! Without tests every change is a possible
bug. 

No matter how flexible your architecture is, no matter how nicely partitioned your
design, without tests you will be reluctant to make changes because of the fear that you
will introduce undetected bugs.

The higher your test coverage, the less
your fear. Y
ou can make changes with near impunity to code that has a less than stellar
architecture and a tangled and opaque design. 

Indeed, you can improve that architecture
and design without fear!



What makes a clean test? Three things. Readability, readability, and readability.

Read-
ability is perhaps even more important in unit tests than it is in production code. 

The same thing that makes all code readable: clarity, simplicity,
and density of expression.

Note: 
Density means the degree of compactness of a substance. compactness means the quality of being closely packed together. tightness

In a test you want to say a lot with as few expressions as
possible.

don't  loaded with details that interfere with the expressiveness of the test. also not to fastrate the poor reader with a
swarm of details that must be understood before the tests make any real sense.



1. The first part builds up the test data
2. the
second part operates on that test data
3. the third part checks that the operation yielded
the expected results.

The BUILD-OPERATE-CHECK pattern is should be made obvious by the structure of these tests.

Good tests get
right to the point and use only the data types and functions that they truly need.

should be able to work out what they do very quickly, without being
misled or overwhelmed by details.

See in the order:
Listing 9-1 
The solution is so aligant: Listing 9-2 
Listing 9-1 

The details surrounding the creation of the
responder and the gathering and casting of the response are also just noise.  




Rather than using the APIs that programmers use to manipulate the sys-
tem, we build up a set of functions and utilities that make use of those APIs and that
make the tests more convenient to write and easier to read. These functions and utilities
become a specialized API used by the tests.

They are a testing language that program-
mers use to help themselves to write their tests and to help those who must read those
tests later on.

This testing API is not designed up front; rather it evolves from the continued refac-
toring of test code that has gotten too tainted by obfuscating detail. disciplined developers refactor their test
code into more succinct and expressive forms. 




Listing 9-5 
solution:
tooHot();
tooCold();
wayTooHot();
wayTooCold();
Details: Listing 9-6  
Listing 9-3 - lots of details here. 

 the
thing to note is the strange string in the assertEquals. Upper case means “on,” lower case
means “off,” and the letters are always in the following order: {heater, blower, cooler,
hi-temp-alarm, lo-temp-alarm}.





Listing 9-7 - a lot of duplicate code.
We can eliminate the duplication by using the TEMPLATE METHOD6 pattern and putting
the given/when parts in the base class, and the then parts in different derivatives. 



problem is the fact that there is more than one concept being tested. So probably the best
rule is that you should minimize the number of asserts per concept and test just one con-
cept per test function. No real solution example.



F.I.R.S.T.: Tests should be fast. Independent Tests should not depend on each other. Repeatable Tests should be repeatable in any environment. Self-Validating The tests should have a boolean output. Self-Validating The tests should have a boolean output. Timely The tests need to be written in a timely fashion.

Unit tests should be written just
before the production code that makes them pass. If you write tests after the production
code, then you may find the production code to be hard to test. Y
ou may decide that some
production code is too hard to test. Y
ou may not design the production code to be testable.


Test enhance the
flexibility, maintainability, and reusability of the production code. So keep your tests con-
stantly clean. Work to make them expressive and succinct. Invent testing APIs that act as
domain-specific language that helps you write the tests. 


---
all the atten-
tion to the expressiveness of code statements and the functions they comprise, we still
don’t have clean code until we’ve paid attention to higher levels of code organization. 

a class should begin with a list of variables: public variable, private variables, private instance variables. (a good reason to have a public variable.)
the public function, then  utility functions private.



Sometimes we need to make a variable or utility function protected so that it can be
accessed by a test. For us, tests rule. e’ll make it protected or package scope. 


The first rule of classes is that they should be small. The second rule of classes is that they
should be smaller than that. With functions we measured size by counting physical lines. With classes we use a
different measure. We count responsibilities.


Five methods isn’t too much, is it? In this case it is because despite its small number
of methods, SuperDashboard has too many responsibilities.




The name of a class should describe what responsibilities it fulfills. 

If we cannot derive a concise
name for a class, then it’s likely too large. The more ambiguous the class name, the more
likely it has too many responsibilities. For example, class names including weasel words
like Processor or
Manager or
Super often hint at unfortunate aggregation of
responsibilities.

The first “and” is a
hint that SuperDashboard has too many responsibilities.

The Single Responsibility Principle (SRP)2 states that a class or module should have one,
and only one, reason to change. -  definition of responsibility.

Classes should have one responsibility—one reason to
change.

The seemingly small SuperDashboard class in Listing 10-2 has two reasons to change.
First, it tracks version information that would seemingly need to be updated every time the
software gets shipped. 


We can easily extract all three SuperDashboard
methods that deal with version information into a separate class named Version. The Version class is a construct that has a high potential for reuse in other
applications!

Small enough?:
```
public class SuperDashboard extends JFrame implements MetaDataUser
    public Component getLastFocusedComponent() 
    public void setLastFocused(Component lastFocused) 
    public int getMajorVersionNumber() 
    public int getMinorVersionNumber() 
    public int getBuildNumber() 
}
```
A single-responsibility class:
```
public class Version {
    public int getMajorVersionNumber() 
    public int getMinorVersionNumber() 
    public int getBuildNumber() 
}
```

Trying to identify responsibilities (reasons to change) often helps us recognize and
create better abstractions in our code. 


We regularly encounter classes that do far too many things. Why?
The problem is that too many of us think that we are done once the program works.
We fail to switch to the other concern of organization and cleanliness. We move on to the
next problem rather than going back and breaking the overstuffed classes into decoupled
units with single responsibilities.


a large number of small, single-purpose
classes makes it more difficult to understand the bigger picture. They are concerned that
they must navigate from class to class in order to figure out how a larger piece of work gets
accomplished.

There is just as much to learn in the system with a few large
classes.  So the question is: Do you want your tools organized into toolboxes with many
small drawers each containing *well-defined and well-labeled components?* Or do you want
a few drawers that you just toss everything into?


Every sizable system will contain a large amount of logic and complexity. The pri-
mary goal in managing such complexity is to organize it so that a developer knows where to look to find things and need only understand, the directly affected complexity at any
given time


multipurpose classes insist we wade through lots of things we don’t need to know right now.

To restate the former points for emphasis: We want our systems to be composed of
many small classes, not a few large ones. Each small class encapsulates a single responsi-
bility, has a single reason to change, and collaborates with a few others to achieve the
desired system behaviors.



 the more variables a method
manipulates the more cohesive that method is to its class. A class in which each variable is
used by each method is maximally cohesive. 

When cohesion is high, it
means that the methods and variables of the class are co-dependent and hang together as a
logical whole.


The strategy of keeping functions small and keeping parameter lists short can some-
times lead to a rapid increase in number of instance variables that are used by a subset of methods. in that case, You should try to separate the variables and methods into two or
more classes such that the new classes are more cohesive. (shonjogshail)




 our classes lose cohesion because they accumulate
more and more instance variables that exist solely to allow a few functions to share them.

If there are a few functions that want to share certain variables, doesn’t that
make them a class in their own right? Of course it does.

So breaking a large function into many smaller functions often gives us the opportu-
nity to split several smaller classes out as well. and too many arguments.


if functions aruments shared then make a class.




Listing 10-5 : a big giganting mass in the main funtion.

Solution: Listing 10-6 (refactored)
```
main() { // 3 responablity
 int NUMBER_OF_PRIMES = 1000;
 primes = PrimeGenerator.generate(NUMBER_OF_PRIMES);

 tablePrinter = new RowColumnPagePrinter(var, var, var);
 tablePrinter.print(primes);
}

public class RowColumnPagePrinter {
  private int rowsPerPage;
  private int columnsPerPage;
  private int numbersPerPage;
  private String pageHeader;
  private PrintStream printStream;

  public RowColumnPagePrinter(int rowsPerPage,
                              int columnsPerPage,
                              String pageHeader) {
    this.rowsPerPage = rowsPerPage;
    this.columnsPerPage = columnsPerPage;
    this.pageHeader = pageHeader;
    numbersPerPage = rowsPerPage * columnsPerPage;
    printStream = System.out;
  }

 public print(int data[]) {
  int pageNumber = 1;
  for (int firstIndexOnPage = 0;
    printPageHeader(var, var);
    printPage(var, var, data);
    printStream.println("\f");
  }
 }

 private printPage(var, var, var) {
  
 }

 private printRow(var) {
  
 }

 private printPageHeader(var, var) {
  
 }

public class PrimeGenerator {
 private int[] primes;
 private ArrayList<Integer> multiplesOfPrimeFactors;

 static int[] generate(int n) {
  primes = new int[n];
  multiplesOfPrimeFactors = new ArrayList<Integer>();
  set2AsFirstPrime();
  checkOddNumbersForSubsequentPrimes();
  return primes;
 }

 private set2AsFirstPrime() {}
 private checkOddNumbersForSubsequentPrimes() {
  if (isPrime(candidate))
  primes[primeIndex++] = candidate;
 }

 private isPrime(int candidate) {}

 private isLeastRelevantMultipleOfNextLargerPrimeFactor(int candidate) {}
 private isNotMultipleOfAnyPreviousPrimeFactor(int candidate) {}
}
```
The change was made by writing a test suite that verified the precise behavior of the
first program. Then a tiny little changes were made, one at a time.  After each
change the program was executed to ensure that the behavior had not changed. One tiny
step after another, the first program was cleaned up and transformed into second new version.

in main funtion, The PrimeGenerator class knows how to generate a list prime numbers. Notice that it
is not meant to be instantiated as an object. The class is just a useful scope in which
its variables can be declared and kept hidden. This class will change if the algorithm for
computing prime numbers changes.

The RowColumnPagePrinter class knows *all about how to format a list of numbers into
pages with a certain number of rows and columns.* If the formatting of the output needed
changing, then this is the class that would be affected.




Listing 10-9:
two reasons to change mean that the
Sql class violates the SRP. there are private methods, such as selectWithCriteria, that
appear to relate only to select statements. Private method behavior that applies only to a small subset of a class can be a useful
heuristic for spotting potential areas for improvement.

However, the primary spur for tak-
ing action should be system change itself.  But as soon as we
find ourselves opening up a class, we should consider fixing our design.

Listing 10-9 
A class that must be opened for change
```java
public class Sql {
   public Sql(String table, Column[] columns)
   public String create()
   public String insert(Object[] fields)
   public String selectAll()
   public String findByKey(String keyColumn, String keyValue)
   public String select(Column column, String pattern)
   public String select(Criteria criteria)
   public String preparedInsert()
   private String columnList(Column[] columns)
   private String valuesList(Object[] fields, final Column[] columns)
   private String selectWithCriteria(String criteria)
   private String placeholderList(Column[] columns)
}
```
Solution: Note that the private methods, such as valuesList, move directly where they are needed. The common private behavior is isolated to a pair of utility classes. public fn, public fn grouping and private fn
```java
abstract public class Sql {
   public Sql(String table, Column[] columns)
   abstract public String generate();
}
public class CreateSql extends Sql {
   public CreateSql(String table, Column[] columns)
   @Override public String generate()
}
public class SelectSql extends Sql {
   public SelectSql(String table, Column[] columns)
   @Override public String generate()
}
public class InsertSql extends Sql {
   public InsertSql(String table, Column[] columns, Object[] fields)
   @Override public String generate()
   private String valuesList(Object[] fields, final Column[] columns) // this is 
}
public class SelectWithCriteriaSql extends Sql {
   public SelectWithCriteriaSql(
      String table, Column[] columns, Criteria criteria)
   @Override public String generate()
}
public class SelectWithMatchSql extends Sql {
   public SelectWithMatchSql(
      String table, Column[] columns, Column column, String pattern)
   @Override public String generate()
}
public class FindByKeySql extends Sql
   public FindByKeySql(
      String table, Column[] columns, String keyColumn, String keyValue)
   @Override public String generate()
}
public class PreparedInsertSql extends Sql {
   public PreparedInsertSql(String table, Column[] columns)
   @Override public String generate()
   private String placeholderList(Column[] columns)
}

public class ColumnList {
   public ColumnList(Column[] columns)
   public String generate()
}
```
fn like createSql, GenerateSql, insertSql and so on. all this sub classes inharant form apstract sql class 
which require them to implement a ganarate mathods/fn.


The risk that one function could
break another becomes vanishingly small. classes are all isolated from one
another.

We code the logic to build update statements in a new subclass of Sql
named UpdateSql. No other code in the system will break because of this change. 


 Our restructured
Sql class is open to allow new functionality via subclassing, but we can make this change
while keeping every other class closed

We want to structure our systems so that we muck with as little as possible when we
update them with new or changed features.

 In an ideal system, we incorporate new fea-
tures by extending the system, not by making modifications to existing code. 

this is called Organizing for Change.



Isolating from Change:
classes which contain implementation details (code) and abstract classes, which represent concepts only.

class depending upon concrete details (implementation) is at risk when
those details change. We can introduce interfaces and abstract classes (traits) to help isolate the
impact of those details.


If a system is decoupled enough to be tested and it will also be more flexible
and promote more reuse. The lack of coupling means that the elements of our system are
better isolated from each other and from change.

Dependency Inversion Principle (DIP).5 In essence, the DIP says that our
classes should depend upon abstractions, not on concrete details.



our Portfolio class is now dependent upon the StockExchange interface.
The StockExchange interface represents the abstract concept of asking for the current price
of a symbol. This abstraction isolates all of the specific details of obtaining such a price,
including from where that price is obtained.

---

