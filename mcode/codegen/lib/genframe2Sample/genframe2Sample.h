/*
 * File: genframe2Sample.h
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

#ifndef GENFRAME2SAMPLE_H
#define GENFRAME2SAMPLE_H

/* Include Files */
#include "rtwtypes.h"
#include <stddef.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
extern void genframe2Sample(unsigned int Len, unsigned int Fs, unsigned int f1,
                            unsigned int f2, unsigned char mode,
                            unsigned char i_ready, unsigned char rst,
                            short *o_data, boolean_T *o_valid,
                            unsigned short *o_cnt, double o_frame[1024],
                            double *o_state);

void genframe2Sample_init(void);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for genframe2Sample.h
 *
 * [EOF]
 */
