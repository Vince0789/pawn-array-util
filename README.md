# pawn-array-util

[![sampctl](https://shields.southcla.ws/badge/sampctl-pawn--array--util-2f2f2f.svg?style=for-the-badge)](https://github.com/Vince0789/pawn-array-util)

<!--
Short description of your library, why it's useful, some examples, pictures or
videos. Link to your forum release thread too.

Remember: You can use "forumfmt" to convert this readme to forum BBCode!

What the sections below should be used for:

`## Installation`: Leave this section un-edited unless you have some specific
additional installation procedure.

`## Testing`: Whether your library is tested with a simple `main()` and `print`,
unit-tested, or demonstrated via prompting the player to connect, you should
include some basic information for users to try out your code in some way.

And finally, maintaining your version number`:

* Follow [Semantic Versioning](https://semver.org/)
* When you release a new version, update `VERSION` and `git tag` it
* Versioning is important for sampctl to use the version control features

Happy Pawning!
-->

## Installation

Simply install to your project:

```bash
sampctl package install Vince0789/pawn-array-util
```

Include in your code and begin using the library:

```pawn
#include <array_util>
```

## Usage

### array_shift
```pawn
stock array_shift(array[], value, size = sizeof array)
```
Appends `value` to the end of `array`. Pushes the first value off and returns it, moves everything down.

### array_unshift
```pawn
stock array_unshift(array[], value, size = sizeof array)
```
Inserts `value` at the start of `array`. Pushes the last value off and returns it, moves everything up.

### array_sort
```pawn
stock array_sort(arr[], left = 0, right = sizeof arr)
```
Sorts `array` in ascending order. Implementation of the QuickSort algorithm. This function does not return any value.

### in_array
```pawn
stock bool:in_array(needle, const haystack[], &index = 0, size = sizeof haystack)
```
Returns `true` if `needle` is in `haystack`, false otherwise. Using the `index` parameter, this function can be used in a while loop to find all instances of a certain value:

```pawn
new index = -1;

while(in_array(5, theArrayToSearch, index))
{
    printf("found 5 at index: %d", index);
}
```

## Testing

<!--
Depending on whether your package is tested via in-game "demo tests" or
y_testing unit-tests, you should indicate to readers what to expect below here.
-->

To test, simply run the package:

```bash
sampctl package run
```
