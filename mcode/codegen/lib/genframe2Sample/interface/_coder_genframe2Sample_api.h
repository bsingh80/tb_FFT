/*
 * File: _coder_genframe2Sample_api.h
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

#ifndef _CODER_GENFRAME2SAMPLE_API_H
#define _CODER_GENFRAME2SAMPLE_API_H

/* Include Files */
#include "emlrt.h"
#include "mex.h"
#include "tmwtypes.h"
#include <string.h>

/* Variable Declarations */
extern emlrtCTX emlrtRootTLSGlobal;
extern emlrtContext emlrtContextGlobal;

#ifdef __cplusplus
extern "C" {
#endif

/* Function Declarations */
void genframe2Sample(uint32_T Len, uint32_T Fs, uint32_T f1, uint32_T f2,
                     uint8_T mode, uint8_T i_ready, uint8_T rst,
                     int16_T *o_data, boolean_T *o_valid, uint16_T *o_cnt,
                     real_T o_frame[1024], real_T *o_state);

void genframe2Sample_api(const mxArray *const prhs[7], int32_T nlhs,
                         const mxArray *plhs[5]);

void genframe2Sample_atexit(void);

void genframe2Sample_initialize(void);

void genframe2Sample_terminate(void);

void genframe2Sample_xil_shutdown(void);

void genframe2Sample_xil_terminate(void);

#ifdef __cplusplus
}
#endif

#endif
/*
 * File trailer for _coder_genframe2Sample_api.h
 *
 * [EOF]
 */
