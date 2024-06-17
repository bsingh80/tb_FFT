/*
 * File: _coder_genframe2Sample_info.c
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

/* Include Files */
#include "_coder_genframe2Sample_info.h"
#include "emlrt.h"
#include "tmwtypes.h"

/* Function Declarations */
static const mxArray *c_emlrtMexFcnResolvedFunctionsI(void);

/* Function Definitions */
/*
 * Arguments    : void
 * Return Type  : const mxArray *
 */
static const mxArray *c_emlrtMexFcnResolvedFunctionsI(void)
{
  const mxArray *nameCaptureInfo;
  const char_T *data[4] = {
      "789cc5934b4ec3301086a7a8053685ae38068b4aa8881d2a4d85105191b3c328a4ae9bb8"
      "c476143ba89c020ec141d8c119d871126892367d48562395c26c26bf"
      "3ed9ff3c1ca85c5e5700e000f278d9cd737daa1bd3bc03cbb1ca2b863c8b1a5497cecdf8"
      "f3341329341deb5c088fd3e2e44072263ca19da788424c950c1fe920",
      "2343165287718a16859d2a6e2da042a428fd6e07943ca084431ca87985e1a228e6f161e8"
      "b75a721ebe611e8d157edbb96b9fe1f30e4aa248c6ba17cb11255a61"
      "bbdb769dd86382091fab304870daa872854fdc4c924469c95d3af678340158f75dcb7230"
      "277240b14fc5309e0cb389327acc8bbeee37ec6bcfd8574e26ce48b3",
      "dff3ab19fd729230a14f61beb7b70dfd5ca3df32dfdaded2e995d8d761c97e4cff651df6"
      "b3fcf5fa99a1bff27b87efd65ffacde2bffcc686fbcabec723835f63"
      "85372d5b5da0d61509f4c9c8be41fd2eeff3eebc8ede1a9f757580416ffbfe1f9a648de"
      "7",
      ""};
  nameCaptureInfo = NULL;
  emlrtNameCaptureMxArrayR2016a(&data[0], 1704U, &nameCaptureInfo);
  return nameCaptureInfo;
}

/*
 * Arguments    : void
 * Return Type  : mxArray *
 */
mxArray *emlrtMexFcnProperties(void)
{
  mxArray *xEntryPoints;
  mxArray *xInputs;
  mxArray *xResult;
  const char_T *propFieldName[9] = {"Version",
                                    "ResolvedFunctions",
                                    "Checksum",
                                    "EntryPoints",
                                    "CoverageInfo",
                                    "IsPolymorphic",
                                    "PropertyList",
                                    "UUID",
                                    "ClassEntryPointIsHandle"};
  const char_T *epFieldName[8] = {
      "Name",     "NumberOfInputs", "NumberOfOutputs", "ConstantInputs",
      "FullPath", "TimeStamp",      "Constructor",     "Visible"};
  xEntryPoints =
      emlrtCreateStructMatrix(1, 1, 8, (const char_T **)&epFieldName[0]);
  xInputs = emlrtCreateLogicalMatrix(1, 7);
  emlrtSetField(xEntryPoints, 0, "Name",
                emlrtMxCreateString("genframe2Sample"));
  emlrtSetField(xEntryPoints, 0, "NumberOfInputs",
                emlrtMxCreateDoubleScalar(7.0));
  emlrtSetField(xEntryPoints, 0, "NumberOfOutputs",
                emlrtMxCreateDoubleScalar(5.0));
  emlrtSetField(xEntryPoints, 0, "ConstantInputs", xInputs);
  emlrtSetField(xEntryPoints, 0, "FullPath",
                emlrtMxCreateString(
                    "C:\\AESupportProjects\\NGC_Training\\slhu\\files_ngc_"
                    "slhu\\custom_examples\\tb_FFT\\mcode\\genframe2Sample.m"));
  emlrtSetField(xEntryPoints, 0, "TimeStamp",
                emlrtMxCreateDoubleScalar(739410.40571759257));
  emlrtSetField(xEntryPoints, 0, "Constructor",
                emlrtMxCreateLogicalScalar(false));
  emlrtSetField(xEntryPoints, 0, "Visible", emlrtMxCreateLogicalScalar(true));
  xResult =
      emlrtCreateStructMatrix(1, 1, 9, (const char_T **)&propFieldName[0]);
  emlrtSetField(xResult, 0, "Version",
                emlrtMxCreateString("24.1.0.2603908 (R2024a) Update 3"));
  emlrtSetField(xResult, 0, "ResolvedFunctions",
                (mxArray *)c_emlrtMexFcnResolvedFunctionsI());
  emlrtSetField(xResult, 0, "Checksum",
                emlrtMxCreateString("pHBg4oz2gfgacl8j7fabLB"));
  emlrtSetField(xResult, 0, "EntryPoints", xEntryPoints);
  return xResult;
}

/*
 * File trailer for _coder_genframe2Sample_info.c
 *
 * [EOF]
 */
