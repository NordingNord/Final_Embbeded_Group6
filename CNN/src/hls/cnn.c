#include <stdio.h>
#include "weights.hpp"

// int a[2][2][2] = {{{1,2},{3,4}},{{5,6},{7,8}}};
const int a_dims[2] = {6,6};
const int a[6][6] = {1,2,3,4,5,1,1,2,3,4,5,1,1,2,3,4,5,1,1,2,3,4,5,1,1,2,3,4,5,1,1,2,3,4,5,1};
// int kernel[2][2] = {{2,3},{10,20}};
const int kernel_dims[3] = {3,3,2};
const int kernel[3][3][2] = {{10, 11, 12,10, 11, 12,10, 11, 12},{10, 11, 12, 10, 11, 12,10, 11, 12}};

int main()
{
    int rows = 0;
    int cols = 0;
    int turn = 0;
    // int result[kernel_dims[3]];
    // General solution
    for (int i = (int)(kernel_dims[0]/2); i < a_dims[0] - kernel_dims[0]%2; i++)
    {
        rows++;
        cols = 0;
        for (int ii = (int)(kernel_dims[1]/2); ii < a_dims[1] - kernel_dims[1]%2; ii++)
        {
            cols++;
            for (int iii = -(int)(kernel_dims[0]/2); iii < (int)(kernel_dims[0]/2) + kernel_dims[0]%2; iii++)
            {
                for (int iv = -(int)(kernel_dims[1]/2); iv < (int)(kernel_dims[1]/2) + kernel_dims[1]%2; iv++)
                {
                    for (int v = 0; v < kernel_dims[2]; v++)
                    {
                        printf("(%d, %d) + (%d, %d) = (%d, %d) *%d\n", i, ii, iii, iv, i+iii, ii+iv, v);
                    }
                    turn++;
                    if (turn > 500)
                    {
                        return 1;
                    }
                }
            }
        }
    }
    // // Works for even kernel size
    // for (int i = (int)(kernel_dims[0]/2); i < a_dims[0] - kernel_dims[0]%2; i++)
    // {
    //     rows++;
    //     cols = 0;
    //     for (int ii = (int)(kernel_dims[1]/2); ii < a_dims[1] - kernel_dims[1]%2; ii++)
    //     {
    //         cols++;
    //         for (int iii = -(int)(kernel_dims[0]/2); iii < (int)(kernel_dims[0]/2); iii++)
    //         {
    //             for (int iv = -(int)(kernel_dims[1]/2); iv < (int)(kernel_dims[1]/2); iv++)
    //             {
    //                 printf("(%d, %d) + (%d, %d) = (%d, %d)\n", i, ii, iii, iv, i+iii, ii+iv);
    //                 turn++;
    //                 if (turn > 100)
    //                 {
    //                     return 1;
    //                 }
    //             }
    //         }
    //     }
    // }

    printf("Done. Turns: %d\n", turn); 
    printf("rows, cols: %d, %d\n", rows, cols); 
    // printf("Resulting (rows,cols) = (%d,%d)", rows, cols);
    
    // for (int i = 0; i < sizeof(conv2d_dims)/sizeof(*conv2d_dims); i++)
    // {
    //     printf("%d\n", conv2d_dims[i]);
    // }
    
    return 0;
}