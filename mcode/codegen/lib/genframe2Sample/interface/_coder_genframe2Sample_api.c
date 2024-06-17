/*
 * File: _coder_genframe2Sample_api.c
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

/* Include Files */
#include "_coder_genframe2Sample_api.h"
#include "_coder_genframe2Sample_mex.h"

/* Variable Definitions */
emlrtCTX emlrtRootTLSGlobal = NULL;

static const mxArray *eml_mx;

static const mxArray *b_eml_mx;

emlrtContext emlrtContextGlobal = {
    true,                                                 /* bFirstTime */
    false,                                                /* bInitialized */
    131643U,                                              /* fVersionInfo */
    NULL,                                                 /* fErrorFunction */
    "genframe2Sample",                                    /* fFunctionName */
    NULL,                                                 /* fRTCallStack */
    false,                                                /* bDebugMode */
    {2045744189U, 2170104910U, 2743257031U, 4284093946U}, /* fSigWrd */
    NULL                                                  /* fSigMem */
};

/* Function Declarations */
static uint32_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId);

static const mxArray *b_emlrt_marshallOut(const boolean_T u);

static uint8_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                  const char_T *identifier);

static const mxArray *c_emlrt_marshallOut(const uint16_T u);

static uint8_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                  const emlrtMsgIdentifier *parentId);

static const mxArray *d_emlrt_marshallOut(const real_T u[1024]);

static uint32_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId);

static const mxArray *e_emlrt_marshallOut(const real_T u);

static void emlrtExitTimeCleanupDtorFcn(const void *r);

static uint32_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                 const char_T *identifier);

static const mxArray *emlrt_marshallOut(const emlrtStack *sp, const int16_T u);

static uint8_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                  const emlrtMsgIdentifier *msgId);

static const mxArray *fimath(const emlrtStack *sp, emlrtMCInfo *location);

static void genframe2Sample_once(const emlrtStack *sp);

static const mxArray *numerictype(const emlrtStack *sp, emlrtMCInfo *location);

/* Function Definitions */
/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 * Return Type  : uint32_T
 */
static uint32_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId)
{
  uint32_T y;
  y = e_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

/*
 * Arguments    : const boolean_T u
 * Return Type  : const mxArray *
 */
static const mxArray *b_emlrt_marshallOut(const boolean_T u)
{
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  m = emlrtCreateLogicalScalar(u);
  emlrtAssign(&y, m);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *nullptr
 *                const char_T *identifier
 * Return Type  : uint8_T
 */
static uint8_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                  const char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  uint8_T y;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = d_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId);
  emlrtDestroyArray(&nullptr);
  return y;
}

/*
 * Arguments    : const uint16_T u
 * Return Type  : const mxArray *
 */
static const mxArray *c_emlrt_marshallOut(const uint16_T u)
{
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxUINT16_CLASS, mxREAL);
  *(uint16_T *)emlrtMxGetData(m) = u;
  emlrtAssign(&y, m);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *u
 *                const emlrtMsgIdentifier *parentId
 * Return Type  : uint8_T
 */
static uint8_T d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                  const emlrtMsgIdentifier *parentId)
{
  uint8_T y;
  y = f_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

/*
 * Arguments    : const real_T u[1024]
 * Return Type  : const mxArray *
 */
static const mxArray *d_emlrt_marshallOut(const real_T u[1024])
{
  static const int32_T iv[2] = {0, 0};
  static const int32_T iv1[2] = {1, 1024};
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u[0]);
  emlrtSetDimensions((mxArray *)m, &iv1[0], 2);
  emlrtAssign(&y, m);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 * Return Type  : uint32_T
 */
static uint32_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId)
{
  static const int32_T dims = 0;
  uint32_T ret;
  emlrtCheckBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "uint32", false, 0U,
                          (const void *)&dims);
  ret = *(uint32_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

/*
 * Arguments    : const real_T u
 * Return Type  : const mxArray *
 */
static const mxArray *e_emlrt_marshallOut(const real_T u)
{
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  m = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m);
  return y;
}

/*
 * Arguments    : const void *r
 * Return Type  : void
 */
static void emlrtExitTimeCleanupDtorFcn(const void *r)
{
  emlrtExitTimeCleanup(&emlrtContextGlobal);
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *nullptr
 *                const char_T *identifier
 * Return Type  : uint32_T
 */
static uint32_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                 const char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  uint32_T y;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = b_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId);
  emlrtDestroyArray(&nullptr);
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const int16_T u
 * Return Type  : const mxArray *
 */
static const mxArray *emlrt_marshallOut(const emlrtStack *sp, const int16_T u)
{
  const mxArray *b_y;
  const mxArray *m;
  const mxArray *y;
  y = NULL;
  b_y = NULL;
  m = emlrtCreateNumericMatrix(1, 1, mxINT16_CLASS, mxREAL);
  *(int16_T *)emlrtMxGetData(m) = u;
  emlrtAssign(&b_y, m);
  emlrtAssign(&y, emlrtCreateFIR2013b((emlrtCTX)sp, eml_mx, b_eml_mx,
                                      "simulinkarray", b_y, false, false));
  return y;
}

/*
 * Arguments    : const emlrtStack *sp
 *                const mxArray *src
 *                const emlrtMsgIdentifier *msgId
 * Return Type  : uint8_T
 */
static uint8_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                  const emlrtMsgIdentifier *msgId)
{
  static const int32_T dims = 0;
  uint8_T ret;
  emlrtCheckBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "uint8", false, 0U,
                          (const void *)&dims);
  ret = *(uint8_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

/*
 * Arguments    : const emlrtStack *sp
 *                emlrtMCInfo *location
 * Return Type  : const mxArray *
 */
static const mxArray *fimath(const emlrtStack *sp, emlrtMCInfo *location)
{
  const mxArray *pArrays[42];
  const mxArray *m;
  pArrays[0] = emlrtCreateStringR2022a((emlrtCTX)sp, "RoundMode");
  pArrays[1] = emlrtCreateStringR2022a((emlrtCTX)sp, "nearest");
  pArrays[2] = emlrtCreateStringR2022a((emlrtCTX)sp, "RoundingMethod");
  pArrays[3] = emlrtCreateStringR2022a((emlrtCTX)sp, "Nearest");
  pArrays[4] = emlrtCreateStringR2022a((emlrtCTX)sp, "OverflowMode");
  pArrays[5] = emlrtCreateStringR2022a((emlrtCTX)sp, "saturate");
  pArrays[6] = emlrtCreateStringR2022a((emlrtCTX)sp, "OverflowAction");
  pArrays[7] = emlrtCreateStringR2022a((emlrtCTX)sp, "Saturate");
  pArrays[8] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductMode");
  pArrays[9] = emlrtCreateStringR2022a((emlrtCTX)sp, "FullPrecision");
  pArrays[10] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumMode");
  pArrays[11] = emlrtCreateStringR2022a((emlrtCTX)sp, "FullPrecision");
  pArrays[12] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductWordLength");
  pArrays[13] = emlrtCreateDoubleScalar(32.0);
  pArrays[14] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumWordLength");
  pArrays[15] = emlrtCreateDoubleScalar(32.0);
  pArrays[16] = emlrtCreateStringR2022a((emlrtCTX)sp, "MaxProductWordLength");
  pArrays[17] = emlrtCreateDoubleScalar(65535.0);
  pArrays[18] = emlrtCreateStringR2022a((emlrtCTX)sp, "MaxSumWordLength");
  pArrays[19] = emlrtCreateDoubleScalar(65535.0);
  pArrays[20] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductFractionLength");
  pArrays[21] = emlrtCreateDoubleScalar(30.0);
  pArrays[22] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductFixedExponent");
  pArrays[23] = emlrtCreateDoubleScalar(-30.0);
  pArrays[24] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumFractionLength");
  pArrays[25] = emlrtCreateDoubleScalar(30.0);
  pArrays[26] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumFixedExponent");
  pArrays[27] = emlrtCreateDoubleScalar(-30.0);
  pArrays[28] =
      emlrtCreateStringR2022a((emlrtCTX)sp, "SumSlopeAdjustmentFactor");
  pArrays[29] = emlrtCreateDoubleScalar(1.0);
  pArrays[30] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumBias");
  pArrays[31] = emlrtCreateDoubleScalar(0.0);
  pArrays[32] =
      emlrtCreateStringR2022a((emlrtCTX)sp, "ProductSlopeAdjustmentFactor");
  pArrays[33] = emlrtCreateDoubleScalar(1.0);
  pArrays[34] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductBias");
  pArrays[35] = emlrtCreateDoubleScalar(0.0);
  pArrays[36] = emlrtCreateStringR2022a((emlrtCTX)sp, "CastBeforeSum");
  pArrays[37] = emlrtCreateLogicalScalar(true);
  pArrays[38] = emlrtCreateStringR2022a((emlrtCTX)sp, "SumSlope");
  pArrays[39] = emlrtCreateDoubleScalar(9.3132257461547852E-10);
  pArrays[40] = emlrtCreateStringR2022a((emlrtCTX)sp, "ProductSlope");
  pArrays[41] = emlrtCreateDoubleScalar(9.3132257461547852E-10);
  return emlrtCallMATLABR2012b((emlrtConstCTX)sp, 1, &m, 42, &pArrays[0],
                               "fimath", true, location);
}

/*
 * Arguments    : const emlrtStack *sp
 * Return Type  : void
 */
static void genframe2Sample_once(const emlrtStack *sp)
{
  static emlrtMCInfo emlrtMCI = {
      -1, /* lineNo */
      -1, /* colNo */
      "", /* fName */
      ""  /* pName */
  };
  emlrtAssignP(&b_eml_mx, NULL);
  emlrtAssignP(&eml_mx, NULL);
  emlrtAssignP(&b_eml_mx, numerictype(sp, &emlrtMCI));
  emlrtAssignP(&eml_mx, fimath(sp, &emlrtMCI));
  emlrtCheckDefaultFimathR2008b(&eml_mx);
}

/*
 * Arguments    : const emlrtStack *sp
 *                emlrtMCInfo *location
 * Return Type  : const mxArray *
 */
static const mxArray *numerictype(const emlrtStack *sp, emlrtMCInfo *location)
{
  const mxArray *pArrays[8];
  const mxArray *m;
  pArrays[0] = emlrtCreateStringR2022a((emlrtCTX)sp, "FractionLength");
  pArrays[1] = emlrtCreateDoubleScalar(13.0);
  pArrays[2] = emlrtCreateStringR2022a((emlrtCTX)sp, "BinaryPoint");
  pArrays[3] = emlrtCreateDoubleScalar(13.0);
  pArrays[4] = emlrtCreateStringR2022a((emlrtCTX)sp, "Slope");
  pArrays[5] = emlrtCreateDoubleScalar(0.0001220703125);
  pArrays[6] = emlrtCreateStringR2022a((emlrtCTX)sp, "FixedExponent");
  pArrays[7] = emlrtCreateDoubleScalar(-13.0);
  return emlrtCallMATLABR2012b((emlrtConstCTX)sp, 1, &m, 8, &pArrays[0],
                               "numerictype", true, location);
}

/*
 * Arguments    : const mxArray * const prhs[7]
 *                int32_T nlhs
 *                const mxArray *plhs[5]
 * Return Type  : void
 */
void genframe2Sample_api(const mxArray *const prhs[7], int32_T nlhs,
                         const mxArray *plhs[5])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  real_T(*o_frame)[1024];
  real_T o_state;
  uint32_T Fs;
  uint32_T Len;
  uint32_T f1;
  uint32_T f2;
  int16_T o_data;
  uint16_T o_cnt;
  uint8_T i_ready;
  uint8_T mode;
  uint8_T rst;
  boolean_T o_valid;
  st.tls = emlrtRootTLSGlobal;
  o_frame = (real_T(*)[1024])mxMalloc(sizeof(real_T[1024]));
  /* Marshall function inputs */
  Len = emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "Len");
  Fs = emlrt_marshallIn(&st, emlrtAliasP(prhs[1]), "Fs");
  f1 = emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "f1");
  f2 = emlrt_marshallIn(&st, emlrtAliasP(prhs[3]), "f2");
  mode = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "mode");
  i_ready = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[5]), "i_ready");
  rst = c_emlrt_marshallIn(&st, emlrtAliasP(prhs[6]), "rst");
  /* Invoke the target function */
  genframe2Sample(Len, Fs, f1, f2, mode, i_ready, rst, &o_data, &o_valid,
                  &o_cnt, *o_frame, &o_state);
  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(&st, o_data);
  if (nlhs > 1) {
    plhs[1] = b_emlrt_marshallOut(o_valid);
  }
  if (nlhs > 2) {
    plhs[2] = c_emlrt_marshallOut(o_cnt);
  }
  if (nlhs > 3) {
    plhs[3] = d_emlrt_marshallOut(*o_frame);
  }
  if (nlhs > 4) {
    plhs[4] = e_emlrt_marshallOut(o_state);
  }
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void genframe2Sample_atexit(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtPushHeapReferenceStackR2021a(
      &st, false, NULL, (void *)&emlrtExitTimeCleanupDtorFcn, NULL, NULL, NULL);
  emlrtEnterRtStackR2012b(&st);
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
  genframe2Sample_xil_terminate();
  genframe2Sample_xil_shutdown();
  emlrtExitTimeCleanup(&emlrtContextGlobal);
  emlrtDestroyArray(&eml_mx);
  emlrtDestroyArray(&b_eml_mx);
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void genframe2Sample_initialize(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 3U, "ForceOff");
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    genframe2Sample_once(&st);
  }
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void genframe2Sample_terminate(void)
{
  emlrtDestroyRootTLS(&emlrtRootTLSGlobal);
}

/*
 * File trailer for _coder_genframe2Sample_api.c
 *
 * [EOF]
 */
