/**
 * MIT License
 * 
 * Copyright (c) 2018 Vince0789
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

// -----------------------------------------------------------------------------

/**
 * <summary>
 *  Appends <c>value</c> to the end of array. Pushes the first value off and 
 *	returns it, moves everything down.
 * </summary>
 * <param name="array">The array to append the value to.</param>
 * <param name="value">The value to append.</param>
 * <param name=size">
 *  Size of the array. If lower than the actual size of the array then indices 
 *  greater than size are not affected.
 * </param>
 * <returns>The value at the first index.</returns>
 */
stock array_shift(array[], value, size = sizeof array)
{
	new returnval = array[0];
	
	for(new i; i < size - 1; i++)
	{
		array[i] = array[i + 1];
	}
	
	array[size - 1] = value;
	return returnval;
}

/**
 * <summary>
 *  Inserts a value at the start of array. Pushes the last value off and returns 
 *  it, moves everything up.
 * </summary>
 * <param name="array">The array to prepend the value to.</param>
 * <param name="value">The value to prepend.</param>
 * <param name=size">
 *  Size of the array. If lower than the actual size of the array then the index
 *  at size - 1 is returned and higher indices are not affected.
 * </param>
 * <returns>The value at size - 1.</return>
 */
stock array_unshift(array[], value, size = sizeof array)
{
	new returnval = array[size - 1];
	
	for(new i = size - 1; i > 0; i--)
	{
		array[i] = array[i - 1];
	}
	
	array[0] = value;
	return returnval;
}

/**
 * <summary>
 *  Checks if a value exists within an array.
 * </summary>
 * <param name="needle">The value to search for.</param>
 * <param name="haystack">The array to search in.</param>
 * <param name="index">Reference variable to store the index of the first match.</param>
 * <param name="size">Size of the array.</param>
 * <returns>true if found, false otherwise.</returns>
 */
stock bool:in_array(needle, const haystack[], &index = 0, size = sizeof haystack)
{	
	while(index < size)
	{
		if(haystack[index++] == needle)
			return true;
	}
    return false;
}

/**
 * <summary>
 *	Sorts array values in ascending order. Implementation of the QuickSort algorithm.
 * </summary>
 * <param name="arr">The array to sort.</param>
 * <param name="left">Index of the lower bound, should normally be 0.</param>
 * <param name="right">Index of the upper bound, should normally be the size of the array.</param>
 */
stock array_sort(array[], left = 0, right = sizeof array)
{
	new
		i = left,
		j = right;

	new pivot = array[(left + right) / 2];

	// partition
	while (i <= j)
	{
		while (array[i] < pivot) { i++; }
		while (array[j] > pivot) { j--; }

		if (i <= j)
		{
			new temp = array[i];
			array[i] = array[j];
			array[j] = temp;
		  	i++;
		  	j--;
		}
	}

	// recursion
	if (left < j)
		array_sort(array, left, j);

	if (i < right)
		array_sort(array, i, right);
}

// -----------------------------------------------------------------------------
// EOF
