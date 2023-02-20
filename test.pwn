#include <a_samp>
#include "array_util.inc"

main()
{
    TestShift();
    TestUnshift();
    TestInArray();
    TestSort();
    TestShuffle();
}

TestShift()
{
    printf("\nArrayShift");
    printf("-----------");

    new arrayToShift[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};

    printf("before shifting:");
    PrintArray(arrayToShift);

    new firstValue = ArrayShift(arrayToShift, 89);

    printf("after shifting:");
    PrintArray(arrayToShift);
    printf("value that was shifted off: %d", firstValue);
}

TestUnshift()
{
    printf("\nArrayUnshift");
    printf("-------------");

    new arrayToShift[] = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55};

    printf("before shifting:");
    PrintArray(arrayToShift);

    new lastValue = ArrayUnshift(arrayToShift, 89);

    printf("after shifting:");
    PrintArray(arrayToShift);
    printf("value that was shifted off: %d", lastValue);
}

TestInArray()
{
    printf("\nInArray");
    printf("--------");

    new testArray[] = {1, 3, 5, 7, 13, 5, 1, 7, 3};

    printf("array to search in:");
    PrintArray(testArray);
    printf("finding all the indexes that contain the number 5:");

    new index = -1;

    while(InArray(5, testArray, index))
    {
        printf("found 5 at index: %d", index);
    }
}

TestSort()
{
    printf("\nArraySort");
    printf("----------");

    new arrayToSort[] = {13, 92, 85, 64, 17, 55, 33, 60, 58, 95};

    printf("before sort:");
    PrintArray(arrayToSort);

    ArraySort(arrayToSort);

    printf("after sort:");
    PrintArray(arrayToSort);
}

TestShuffle()
{
    printf("\nArrayShuffle");
    printf("------------");

    new arrayToShuffle[] = {13, 92, 85, 64, 17, 55, 33, 60, 58, 95};

    printf("before shuffle:");
    PrintArray(arrayToShuffle);

    ArrayShuffle(arrayToShuffle);

    printf("after sort:");
    PrintArray(arrayToShuffle);
}

PrintArray(const arr[], size = sizeof arr)
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
