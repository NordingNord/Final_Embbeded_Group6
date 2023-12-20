#include <stdio.h>
#include "weights.hpp"

// int a[2][2][2] = {{{1,2},{3,4}},{{5,6},{7,8}}};
constexpr int a_dims[2] = {4,4};
constexpr int a[4][4] = {	1,2,3,54,4,
							5,213,7,8,6,
							9,10,11,12,3,
							13};//,14,15,16,87};
// int kernel[2][2] = {{2,3},{10,20}};
constexpr int kernel_dims[3] = {1,3,3};
constexpr int kernel[1][3][3] = {1};
								// ,12,988,-3568,35,-2,1,8989,-100,
								// 1,0,1,1,0,1,1,0,1,
								// 1,1,1,1,1,1,1,1,1};

int main()
{
    int rows = 0;
    int cols = 0;
    int turns = 0;
	
    // General solution
	constexpr int row_margin = (int)(kernel_dims[1]/2);
	constexpr int col_margin = (int)(kernel_dims[2]/2);
	// inp (4,5), kernel (2,2), out (3,4)
	// inp (4,5), kernel (3,3), out (2,3)
	// inp (4,5), kernel (4,4), out (1,2)
    constexpr int result_rows = (a_dims[0]-(row_margin + kernel_dims[1]%2));
    constexpr int result_cols = (a_dims[1]-(col_margin + kernel_dims[2]%2));
    const int expected_turns = result_rows*result_cols*kernel_dims[0]*kernel_dims[1]*kernel_dims[2];
	printf("input dims: %d, %d\n", a_dims[0], a_dims[1]);
	printf("kernel dims: %d, %d, %d\n", kernel_dims[0], kernel_dims[1], kernel_dims[2]);
	// constexpr int num_kernels = kernel_dims[0];
	printf("result dims: %d, %d, %d\n", kernel_dims[0], result_rows, result_cols);
    int result[kernel_dims[0]][result_rows][result_cols] = {0};
    for (int i = row_margin; i < a_dims[0] - kernel_dims[1]%2; i++)
    {
        rows++;
        cols = 0;
        for (int ii = col_margin; ii < a_dims[1] - kernel_dims[2]%2; ii++)
        {
            cols++;
            for (int iii = 0; iii < kernel_dims[0]; iii++)
            {
				for (int iv = -row_margin; iv < row_margin + kernel_dims[1]%2; iv++)
				{
					for (int v = -col_margin; v < col_margin + kernel_dims[2]%2; v++)
					{
						// printf("(%d, %d) + (%d, %d) = (%d, %d) *%d\n", i, ii, iv, v, i+iv, ii+v, iii);
						turns++;
						// printf("iii=%d\n", iii);
						result[iii][i-row_margin][ii-col_margin] += a[i+iv][ii+v] * kernel[iii][iv+row_margin][v+col_margin];
						if (turns > 1000000)
						{
							return 1;
						}
					}
				}
            }
        }
    }

	

	// printf("Expected result:\n");
	// int expectedResult[3][2][3] = {81389,-608676,87474,102052,106131,102336,
	// 								36,299,34,60,273,129,
	// 								261,320,108,297,306,165};
	// bool same = true;
	// for (int i = 0; i < 3; i++)
	// {
	// 	printf("{");
	// 	for (int ii = 0; ii < 2; ii++)
	// 	{
	// 		printf("	{");
	// 		for (int iii = 0; iii < 3; iii++)
	// 		{
	// 			printf("%d, ", expectedResult[i][ii][iii]);
	// 		}
	// 		printf("	}\n");
	// 	}
	// 	printf("}\n");
	// }
	
	// printf("Computed result:\n");
	// for (int i = 0; i < kernel_dims[0]; i++)
	// {
	// 	printf("{");
	// 	for (int ii = 0; ii < result_rows; ii++)
	// 	{
	// 		printf("	{");
	// 		for (int iii = 0; iii < result_cols; iii++)
	// 		{
	// 			if (expectedResult[i][ii][iii] != result[i][ii][iii])
	// 			{
	// 				printf("%d (wrong),", result[i][ii][iii]);
	// 			}
	// 			else {
	// 				printf("%d, ", result[i][ii][iii]);
	// 			}
	// 		}
	// 		printf("	}\n");
	// 	}
	// 	printf("}\n");
	// }

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
    //                 turns++;
    //                 if (turns > 100)
    //                 {
    //                     return 1;
    //                 }
    //             }
    //         }
    //     }
    // }
    printf("Done. Turns: %d | should be: %d\n", turns, expected_turns); 
    printf("rows, cols: %d, %d | should be: %d, %d\n", rows, cols, result_rows, result_cols); 
    // printf("Resulting (rows,cols) = (%d,%d)", rows, cols);
    
    // for (int i = 0; i < sizeof(conv2d_dims)/sizeof(*conv2d_dims); i++)
    // {
    //     printf("%d\n", conv2d_dims[i]);
    // }
    
    return 0;
}