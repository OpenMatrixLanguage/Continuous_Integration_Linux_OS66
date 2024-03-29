/*******************************************************************************
* Copyright 2005-2019 Intel Corporation.
*
* This software and the related documents are Intel copyrighted  materials,  and
* your use of  them is  governed by the  express license  under which  they were
* provided to you (License).  Unless the License provides otherwise, you may not
* use, modify, copy, publish, distribute,  disclose or transmit this software or
* the related documents without Intel's prior written permission.
*
* This software and the related documents  are provided as  is,  with no express
* or implied  warranties,  other  than those  that are  expressly stated  in the
* License.
*******************************************************************************/

/*
 *
 * fftwf_plan_r2r_2d - FFTW3 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw3_mkl.h"

fftwf_plan
fftwf_plan_r2r_2d(int nx, int ny, float *in, float *out, fftwf_r2r_kind kindx,
                 fftwf_r2r_kind kindy, unsigned flags)
{
    int n[2] = { nx, ny };
    fftwf_r2r_kind kind[2] = { kindx, kindy };

    return fftwf_plan_r2r(2, n, in, out, kind, flags);
}
