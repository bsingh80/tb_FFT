/*
 * File: genStim.c
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

/* Include Files */
#include "genStim.h"
#include "rt_nonfinite.h"
#include <string.h>

/* Function Definitions */
/*
 * Arguments    : double in1_data[]
 *                int in1_size[2]
 *                const double in2_data[]
 *                const double in3_data[]
 *                const int in3_size[2]
 * Return Type  : void
 */
void binary_expand_op(double in1_data[], int in1_size[2],
                      const double in2_data[], const double in3_data[],
                      const int in3_size[2])
{
  double b_in1_data[1024];
  int i;
  int loop_ub;
  int stride_0_1;
  int stride_1_1;
  if (in3_size[1] == 1) {
    loop_ub = in1_size[1];
  } else {
    loop_ub = in3_size[1];
  }
  stride_0_1 = (in1_size[1] != 1);
  stride_1_1 = (in3_size[1] != 1);
  for (i = 0; i < loop_ub; i++) {
    int in1_tmp;
    in1_tmp = i * stride_0_1;
    b_in1_data[i] = (in1_data[in1_tmp] + 0.75 * in2_data[in1_tmp]) +
                    0.1 * in3_data[i * stride_1_1];
  }
  in1_size[0] = 1;
  in1_size[1] = loop_ub;
  if (loop_ub - 1 >= 0) {
    memcpy(&in1_data[0], &b_in1_data[0],
           (unsigned int)loop_ub * sizeof(double));
  }
}

/*
 * File trailer for genStim.c
 *
 * [EOF]
 */
