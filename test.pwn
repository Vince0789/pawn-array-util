#include <a_samp>
#include "array_util.inc"

main()
{
    testShift();
    testUnshift();
    testInArray();
    testSort();
}

testShift()
{
    printf("\narray_shift");
    printf("-----------");

    new arrayToShift[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};

    printf("before shifting:");
    printArray(arrayToShift);

    new firstValue = array_shift(arrayToShift, 89);

    printf("after shifting:");
    printArray(arrayToShift);
    printf("value that was shifted off: %d", firstValue);
}

testUnshift()
{
    printf("\narray_unshift");
    printf("-------------");

    new arrayToShift[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};

    printf("before shifting:");
    printArray(arrayToShift);

    new lastValue = array_unshift(arrayToShift, 89);

    printf("after shifting:");
    printArray(arrayToShift);
    printf("value that was shifted off: %d", lastValue);
}

testInArray()
{
    printf("\nin_array");
    printf("--------");

    new testArray[] = {1, 3, 5, 7, 13, 5, 1, 7, 3};

    printf("array to search in:");
    printArray(testArray);
    printf("finding all the indexes that contain the number 5:");

    new index = -1;

    while(in_array(5, testArray, index))
    {
        printf("found 5 at index: %d", index);
    }
}

testSort()
{
    printf("\narray_sort");
    printf("----------");

    new arrayToSort[] = {13, 92, 85, 64, 17, 55, 33, 60, 58, 95};

    printf("before sort:");
    printArray(arrayToSort);

    array_sort(arrayToSort);

    printf("after sort:");
    printArray(arrayToSort);
}

printArray(const arr[], size = sizeof arr)
{
    new output[128];

    for(new i; i < size; i++)
    {
        new tmp[11];
        format(tmp, sizeof tmp, "%d", arr[i]);

        if(i > 0) 
        { 
            strcat(output, ", ");
        }

        strcat(output, tmp);
    }

    print(output);
}