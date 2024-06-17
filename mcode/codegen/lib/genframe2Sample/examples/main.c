/*
 * File: main.c
 *
 * MATLAB Coder version            : 24.1
 * C/C++ source code generated on  : 07-Jun-2024 09:51:21
 */

/*************************************************************************/
/* This automatically generated example C main file shows how to call    */
/* entry-point functions that MATLAB Coder generated. You must customize */
/* this file for your application. Do not modify this file directly.     */
/* Instead, make a copy of this file, modify it, and integrate it into   */
/* your development environment.                                         */
/*                                                                       */
/* This file initializes entry-point function arguments to a default     */
/* size and value before calling the entry-point functions. It does      */
/* not store or use any values returned from the entry-point functions.  */
/* If necessary, it does pre-allocate memory for returned values.        */
/* You can use this file as a starting point for a main function that    */
/* you can deploy in your application.                                   */
/*                                                                       */
/* After you copy the file, and before you deploy it, you must make the  */
/* following changes:                                                    */
/* * For variable-size function arguments, change the example sizes to   */
/* the sizes that your application requires.                             */
/* * Change the example values of function arguments to the values that  */
/* your application requires.                                            */
/* * If the entry-point functions return values, store these values or   */
/* otherwise use them as required by your application.                   */
/*                                                                       */
/*************************************************************************/

/* Include Files */
#include "main.h"
#include "genframe2Sample.h"
#include "genframe2Sample_terminate.h"
#include "rt_nonfinite.h"

/* Function Declarations */
static unsigned int argInit_uint32_T(void);

static unsigned char argInit_uint8_T(void);

/* Function Definitions */
/*
 * Arguments    : void
 * Return Type  : unsigned int
 */
static unsigned int argInit_uint32_T(void)
{
  return 0U;
}

/*
 * Arguments    : void
 * Return Type  : unsigned char
 */
static unsigned char argInit_uint8_T(void)
{
  return 0U;
}

/*
 * Arguments    : int argc
 *                char **argv
 * Return Type  : int
 */
int main(int argc, char **argv)
{
  (void)argc;
  (void)argv;
  /* The initialize function is being called automatically from your entry-point
   * function. So, a call to initialize is not included here. */
  /* Invoke the entry-point functions.
You can call entry-point functions multiple times. */
  main_genframe2Sample();
  /* Terminate the application.
You do not need to do this more than one time. */
  genframe2Sample_terminate();
  return 0;
}

/*
 * Arguments    : void
 * Return Type  : void
 */
void main_genframe2Sample(void)
{
  double o_frame[1024];
  double o_state;
  unsigned int Len_tmp;
  unsigned short o_cnt;
  short o_data;
  unsigned char mode_tmp;
  boolean_T o_valid;
  /* Initialize function 'genframe2Sample' input arguments. */
  Len_tmp = argInit_uint32_T();
  mode_tmp = argInit_uint8_T();
  /* Call the entry-point 'genframe2Sample'. */
  genframe2Sample(Len_tmp, Len_tmp, Len_tmp, Len_tmp, mode_tmp, mode_tmp,
                  mode_tmp, &o_data, &o_valid, &o_cnt, o_frame, &o_state);
}

/*
 * File trailer for main.c
 *
 * [EOF]
 */
