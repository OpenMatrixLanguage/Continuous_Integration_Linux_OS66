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
 * dfftw_plan_many_dft - FFTW3 Fortran 77 wrapper to Intel(R) MKL.
 *
 ******************************************************************************
 */

#include "fftw3_mkl_f77.h"

void
dfftw_plan_many_dft(PLAN *p, INTEGER *rank, INTEGER *n, INTEGER *howmany,
                    COMPLEX16 *in, INTEGER *inembed, INTEGER *istride,
                    INTEGER *idist, COMPLEX16 *out, INTEGER *onembed,
                    INTEGER *ostride, INTEGER *odist, INTEGER *sign,
                    INTEGER *flags)
{
    INTEGER one = 1;
    INTEGER is[MKL_MAXRANK];
    INTEGER os[MKL_MAXRANK];
    INTEGER i;

    if (p == NULL || rank == NULL) return;
    if (istride == NULL || ostride == NULL) return;
    if (inembed == NULL || onembed == NULL) return;

    if (*rank > MKL_MAXRANK)
    {
        *(MKL_INT64*)p = 0;
        return;
    }

    is[0] = *istride;
    os[0] = *ostride;
    for (i = 1; i < *rank; i++)
    {
        is[i] = inembed[i - 1] * is[i - 1];
        os[i] = onembed[i - 1] * os[i - 1];
    }

    dfftw_plan_guru_dft(p, rank, n, is, os, &one, howmany, idist, odist, in,
                        out, sign, flags);
}
