/*
 * File: genframe2Sample.c
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

/* Include Files */
#include "genframe2Sample.h"
#include "genStim.h"
#include "genframe2Sample_data.h"
#include "genframe2Sample_emxutil.h"
#include "genframe2Sample_initialize.h"
#include "genframe2Sample_types.h"
#include "randn.h"
#include "rt_nonfinite.h"
#include "rt_nonfinite.h"
#include <emmintrin.h>
#include <math.h>
#include <string.h>

/* Variable Definitions */
static unsigned short p_cnt;

static double p_state;

static short p_data_vec[1024];

/* Function Declarations */
static double rt_powd_snf(double u0, double u1);

/* Function Definitions */
/*
 * Arguments    : double u0
 *                double u1
 * Return Type  : double
 */
static double rt_powd_snf(double u0, double u1)
{
  double y;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = rtNaN;
  } else {
    double d;
    double d1;
    d = fabs(u0);
    d1 = fabs(u1);
    if (rtIsInf(u1)) {
      if (d == 1.0) {
        y = 1.0;
      } else if (d > 1.0) {
        if (u1 > 0.0) {
          y = rtInf;
        } else {
          y = 0.0;
        }
      } else if (u1 > 0.0) {
        y = 0.0;
      } else {
        y = rtInf;
      }
    } else if (d1 == 0.0) {
      y = 1.0;
    } else if (d1 == 1.0) {
      if (u1 > 0.0) {
        y = u0;
      } else {
        y = 1.0 / u0;
      }
    } else if (u1 == 2.0) {
      y = u0 * u0;
    } else if ((u1 == 0.5) && (u0 >= 0.0)) {
      y = sqrt(u0);
    } else if ((u0 < 0.0) && (u1 > floor(u1))) {
      y = rtNaN;
    } else {
      y = pow(u0, u1);
    }
  }
  return y;
}

/*
 * GEN_FUNC Summary of this function goes here
 *    Detailed explanation goes here
 *
 * Arguments    : unsigned int Len
 *                unsigned int Fs
 *                unsigned int f1
 *                unsigned int f2
 *                unsigned char mode
 *                unsigned char i_ready
 *                unsigned char rst
 *                short *o_data
 *                boolean_T *o_valid
 *                unsigned short *o_cnt
 *                double o_frame[1024]
 *                double *o_state
 * Return Type  : void
 */
void genframe2Sample(unsigned int Len, unsigned int Fs, unsigned int f1,
                     unsigned int f2, unsigned char mode, unsigned char i_ready,
                     unsigned char rst, short *o_data, boolean_T *o_valid,
                     unsigned short *o_cnt, double o_frame[1024],
                     double *o_state)
{
  emxArray_real_T *t;
  emxArray_uint32_T *y;
  double b_data[1024];
  double b_y_data[1024];
  double x_data[1024];
  double *t_data;
  unsigned int state[625];
  int x_size[2];
  int i;
  int mti;
  int vectorUB;
  unsigned int *y_data;
  short re_data[1024];
  if (!isInitialized_genframe2Sample) {
    genframe2Sample_initialize();
  }
  /* Declare persistent variables */
  /*  State */
  *o_cnt = p_cnt;
  /* o_data = complex(fi(0,1,16,13)); */
  *o_data = 0;
  if (p_state == 1.0) {
    *o_data = p_data_vec[p_cnt - 1];
  }
  *o_valid = (p_state == 1.0);
  *o_state = p_state;
  /* o_frame = zeros(1,Len,'like', complex(fi(0,1,16,13)));  */
  /* o_frame = zeros(1,Len,'double'); */
  /* coder.varsize('o_frame',[1,1024],[0 1]);   */
  for (i = 0; i < 1024; i++) {
    o_frame[i] = (double)p_data_vec[i] * 0.0001220703125;
  }
  switch ((int)p_state) {
  case 0: {
    double a;
    double varargin_1;
    int loop_ub;
    unsigned int r;
    p_state = 1.0;
    p_cnt = 1U;
    /*  Generate Stimulus Data */
    emxInit_uint32_T(&y);
    y_data = y->data;
    if ((double)Len - 1.0 < 0.0) {
      y->size[0] = 1;
      y->size[1] = 0;
    } else {
      i = y->size[0] * y->size[1];
      y->size[0] = 1;
      y->size[1] = (int)((double)Len - 1.0) + 1;
      emxEnsureCapacity_uint32_T(y, i);
      y_data = y->data;
      loop_ub = (int)((double)Len - 1.0);
      for (i = 0; i <= loop_ub; i++) {
        y_data[i] = (unsigned int)i;
      }
    }
    emxInit_real_T(&t);
    i = t->size[0] * t->size[1];
    t->size[0] = 1;
    loop_ub = y->size[1];
    t->size[1] = y->size[1];
    emxEnsureCapacity_real_T(t, i);
    t_data = t->data;
    for (i = 0; i < loop_ub; i++) {
      t_data[i] = (double)y_data[i] / (double)Fs;
    }
    memset(&state[0], 0, 625U * sizeof(unsigned int));
    r = 5489U;
    state[0] = 5489U;
    for (mti = 0; mti < 623; mti++) {
      r = ((r ^ r >> 30U) * 1812433253U + (unsigned int)mti) + 1U;
      state[mti + 1] = r;
    }
    state[624] = 624U;
    switch (mode) {
    case 0U: {
      __m128d b_r;
      a = 6.2831853071795862 * (double)f1;
      x_size[1] = y->size[1];
      mti = (t->size[1] / 2) << 1;
      vectorUB = mti - 2;
      for (i = 0; i <= vectorUB; i += 2) {
        b_r = _mm_loadu_pd(&t_data[i]);
        _mm_storeu_pd(&x_data[i], _mm_mul_pd(_mm_set1_pd(a), b_r));
      }
      for (i = mti; i < loop_ub; i++) {
        x_data[i] = a * t_data[i];
      }
      i = x_size[1];
      a = 6.2831853071795862 * (double)f2;
      for (vectorUB = 0; vectorUB < i; vectorUB++) {
        x_data[vectorUB] = sin(x_data[vectorUB]);
        b_y_data[vectorUB] = a * t_data[vectorUB];
      }
      for (vectorUB = 0; vectorUB < loop_ub; vectorUB++) {
        b_y_data[vectorUB] = cos(b_y_data[vectorUB]);
      }
      loop_ub = x_size[1] - 1;
      mti = (x_size[1] / 2) << 1;
      vectorUB = mti - 2;
      for (i = 0; i <= vectorUB; i += 2) {
        __m128d r1;
        b_r = _mm_loadu_pd(&x_data[i]);
        r1 = _mm_loadu_pd(&b_y_data[i]);
        _mm_storeu_pd(&x_data[i], _mm_add_pd(_mm_mul_pd(_mm_set1_pd(1.2), b_r),
                                             _mm_mul_pd(_mm_set1_pd(1.5), r1)));
      }
      for (i = mti; i <= loop_ub; i++) {
        x_data[i] = 1.2 * x_data[i] + 1.5 * b_y_data[i];
      }
    } break;
    case 1U:
      a = ((double)f2 - (double)f1) *
          rt_powd_snf(((double)Len - 1.0) / (double)Fs, -1.0) / 2.0;
      x_size[1] = y->size[1];
      for (i = 0; i < loop_ub; i++) {
        varargin_1 = (double)y_data[i] / (double)Fs;
        x_data[i] = 6.2831853071795862 *
                    (a * rt_powd_snf(varargin_1, 2.0) + (double)f1 * t_data[i]);
      }
      for (vectorUB = 0; vectorUB < loop_ub; vectorUB++) {
        x_data[vectorUB] = cos(x_data[vectorUB]);
      }
      /* Chirp with linear instaneous freq deviation */
      break;
    case 2U: {
      __m128d b_r;
      int b_size[2];
      a = 6.2831853071795862 * (double)f1;
      x_size[0] = 1;
      x_size[1] = y->size[1];
      mti = (t->size[1] / 2) << 1;
      vectorUB = mti - 2;
      for (i = 0; i <= vectorUB; i += 2) {
        b_r = _mm_loadu_pd(&t_data[i]);
        _mm_storeu_pd(&x_data[i], _mm_mul_pd(_mm_set1_pd(a), b_r));
      }
      for (i = mti; i < loop_ub; i++) {
        x_data[i] = a * t_data[i];
      }
      i = x_size[1];
      a = 6.2831853071795862 * (double)f2;
      for (vectorUB = 0; vectorUB < i; vectorUB++) {
        x_data[vectorUB] = sin(x_data[vectorUB]);
        b_y_data[vectorUB] = a * t_data[vectorUB];
      }
      for (vectorUB = 0; vectorUB < loop_ub; vectorUB++) {
        b_y_data[vectorUB] = cos(b_y_data[vectorUB]);
      }
      double b_t[2];
      b_t[0] = 1.0;
      b_t[1] = t->size[1];
      randn(b_t, state, b_data, b_size);
      if (x_size[1] == b_size[1]) {
        loop_ub = x_size[1] - 1;
        mti = (x_size[1] / 2) << 1;
        vectorUB = mti - 2;
        for (i = 0; i <= vectorUB; i += 2) {
          __m128d r1;
          __m128d r2;
          b_r = _mm_loadu_pd(&b_y_data[i]);
          r1 = _mm_loadu_pd(&x_data[i]);
          r2 = _mm_loadu_pd(&b_data[i]);
          _mm_storeu_pd(
              &x_data[i],
              _mm_add_pd(_mm_add_pd(r1, _mm_mul_pd(_mm_set1_pd(0.75), b_r)),
                         _mm_mul_pd(_mm_set1_pd(0.1), r2)));
        }
        for (i = mti; i <= loop_ub; i++) {
          x_data[i] = (x_data[i] + 0.75 * b_y_data[i]) + 0.1 * b_data[i];
        }
      } else {
        binary_expand_op(x_data, x_size, b_y_data, b_data, b_size);
      }
    } break;
    default: {
      __m128d b_r;
      a = 6.2831853071795862 * (double)f1;
      x_size[1] = y->size[1];
      mti = (t->size[1] / 2) << 1;
      vectorUB = mti - 2;
      for (i = 0; i <= vectorUB; i += 2) {
        b_r = _mm_loadu_pd(&t_data[i]);
        _mm_storeu_pd(&x_data[i], _mm_mul_pd(_mm_set1_pd(a), b_r));
      }
      for (i = mti; i < loop_ub; i++) {
        x_data[i] = a * t_data[i];
      }
      i = x_size[1];
      for (vectorUB = 0; vectorUB < i; vectorUB++) {
        x_data[vectorUB] = sin(x_data[vectorUB]);
      }
      loop_ub = x_size[1] - 1;
      mti = (x_size[1] / 2) << 1;
      vectorUB = mti - 2;
      for (i = 0; i <= vectorUB; i += 2) {
        b_r = _mm_loadu_pd(&x_data[i]);
        _mm_storeu_pd(&x_data[i], _mm_mul_pd(_mm_set1_pd(1.2), b_r));
      }
      for (i = mti; i <= loop_ub; i++) {
        x_data[i] *= 1.2;
      }
    } break;
    }
    emxFree_uint32_T(&y);
    emxFree_real_T(&t);
    loop_ub = x_size[1];
    for (i = 0; i < loop_ub; i++) {
      short i1;
      a = x_data[i] * 8192.0;
      varargin_1 = fabs(a);
      if (varargin_1 < 4.503599627370496E+15) {
        if (varargin_1 >= 0.5) {
          a = floor(a + 0.5);
        } else {
          a *= 0.0;
        }
      }
      if (a < 32768.0) {
        if (a >= -32768.0) {
          i1 = (short)a;
        } else {
          i1 = MIN_int16_T;
        }
      } else if (a >= 32768.0) {
        i1 = MAX_int16_T;
      } else {
        i1 = 0;
      }
      re_data[i] = i1;
    }
    if (Len < 1U) {
      loop_ub = 0;
    } else {
      loop_ub = (int)Len;
    }
    if (loop_ub - 1 >= 0) {
      memcpy(&p_data_vec[0], &re_data[0],
             (unsigned int)loop_ub * sizeof(short));
    }
  } break;
  case 1: {
    if ((i_ready != 0) && (p_cnt < Len)) {
      unsigned int r;
      r = p_cnt + 1U;
      if (p_cnt + 1U > 65535U) {
        r = 65535U;
      }
      p_cnt = (unsigned short)r;
    } else if (p_cnt == Len) {
      p_state = 2.0;
      p_cnt = 0U;
    }
  } break;
  default:
    if (rst != 0) {
      p_state = 0.0;
    }
    break;
  }
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void genframe2Sample_init(void)
{
  p_state = 0.0;
  p_cnt = 0U;
  /* p_data_vec = zeros(1,Len,'like', complex(fi(0,1,16,13)));  */
  /* coder.varsize('p_data_vec',[1 1024],[0 1]);   */
  memset(&p_data_vec[0], 0, 1024U * sizeof(short));
  /*  using fixed size to enable UVM build */
}

/*
 * File trailer for genframe2Sample.c
 *
 * [EOF]
 */
