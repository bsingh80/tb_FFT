/*
 * File: genframe2Sample_emxutil.h
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

#ifndef GENFRAME2SAMPLE_EMXUTIL_H
#define GENFRAME2SAMPLE_EMXUTIL_H

/* Include Files */
#include "genframe2Sample_types.h"
#include "rtwtypes.h"
#include <stddef.h>
#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
extern void emxEnsureCapacity_real_T(emxArray_real_T *emxArray, int oldNumel);

extern void emxEnsureCapacity_uint32_T(emxArray_uint32_T *emxArray,
                                       int oldNumel);

extern void emxFree_real_T(emxArray_real_T **pEmxArray);

extern void emxFree_uint32_T(emxArray_uint32_T **pEmxArray);

extern void emxInit_real_T(emxArray_real_T **pEmxArray);

extern void emxInit_uint32_T(emxArray_uint32_T **pEmxArray);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for genframe2Sample_emxutil.h
 *
 * [EOF]
 */
