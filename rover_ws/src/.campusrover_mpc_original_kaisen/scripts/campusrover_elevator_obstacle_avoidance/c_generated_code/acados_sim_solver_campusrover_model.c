/*
 * Copyright 2019 Gianluca Frison, Dimitris Kouzoupis, Robin Verschueren,
 * Andrea Zanelli, Niels van Duijkeren, Jonathan Frey, Tommaso Sartor,
 * Branimir Novoselnik, Rien Quirynen, Rezart Qelibari, Dang Doan,
 * Jonas Koenemann, Yutao Chen, Tobias Schöls, Jonas Schlagenhauf, Moritz Diehl
 *
 * This file is part of acados.
 *
 * The 2-Clause BSD License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.;
 */
// standard
#include <stdio.h>
#include <stdlib.h>

// acados
#include "acados_c/external_function_interface.h"
#include "acados_c/sim_interface.h"
#include "acados_c/external_function_interface.h"

#include "acados/sim/sim_common.h"
#include "acados/utils/external_function_generic.h"
#include "acados/utils/print.h"


// example specific
#include "campusrover_model_model/campusrover_model_model.h"
#include "acados_sim_solver_campusrover_model.h"


// ** solver data **

sim_solver_capsule * campusrover_model_acados_sim_solver_create_capsule()
{
    void* capsule_mem = malloc(sizeof(sim_solver_capsule));
    sim_solver_capsule *capsule = (sim_solver_capsule *) capsule_mem;

    return capsule;
}


int campusrover_model_acados_sim_solver_free_capsule(sim_solver_capsule * capsule)
{
    free(capsule);
    return 0;
}


int campusrover_model_acados_sim_create(sim_solver_capsule * capsule)
{
    // initialize
    const int nx = CAMPUSROVER_MODEL_NX;
    const int nu = CAMPUSROVER_MODEL_NU;
    const int nz = CAMPUSROVER_MODEL_NZ;
    const int np = CAMPUSROVER_MODEL_NP;
    bool tmp_bool;

    
    double Tsim = 0.2;

    

    // sim plan & config
    sim_solver_plan_t plan;
    plan.sim_solver = DISCRETE;

    // create correct config based on plan
    sim_config * campusrover_model_sim_config = sim_config_create(plan);
    capsule->acados_sim_config = campusrover_model_sim_config;

    // sim dims
    void *campusrover_model_sim_dims = sim_dims_create(campusrover_model_sim_config);
    capsule->acados_sim_dims = campusrover_model_sim_dims;
    sim_dims_set(campusrover_model_sim_config, campusrover_model_sim_dims, "nx", &nx);
    sim_dims_set(campusrover_model_sim_config, campusrover_model_sim_dims, "nu", &nu);
    sim_dims_set(campusrover_model_sim_config, campusrover_model_sim_dims, "nz", &nz);


    // sim opts
    sim_opts *campusrover_model_sim_opts = sim_opts_create(campusrover_model_sim_config, campusrover_model_sim_dims);
    capsule->acados_sim_opts = campusrover_model_sim_opts;
    int tmp_int = 3;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "newton_iter", &tmp_int);
    double tmp_double = 0.0;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "newton_tol", &tmp_double);
    sim_collocation_type collocation_type = GAUSS_LEGENDRE;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "collocation_type", &collocation_type);

 
    tmp_int = 4;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "num_stages", &tmp_int);
    tmp_int = 1;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "num_steps", &tmp_int);
    tmp_bool = 0;
    sim_opts_set(campusrover_model_sim_config, campusrover_model_sim_opts, "jac_reuse", &tmp_bool);


    // sim in / out
    sim_in *campusrover_model_sim_in = sim_in_create(campusrover_model_sim_config, campusrover_model_sim_dims);
    capsule->acados_sim_in = campusrover_model_sim_in;
    sim_out *campusrover_model_sim_out = sim_out_create(campusrover_model_sim_config, campusrover_model_sim_dims);
    capsule->acados_sim_out = campusrover_model_sim_out;

    sim_in_set(campusrover_model_sim_config, campusrover_model_sim_dims,
               campusrover_model_sim_in, "T", &Tsim);

    // model functions

    // sim solver
    sim_solver *campusrover_model_sim_solver = sim_solver_create(campusrover_model_sim_config,
                                               campusrover_model_sim_dims, campusrover_model_sim_opts);
    capsule->acados_sim_solver = campusrover_model_sim_solver;


    /* initialize parameter values */
    double* p = calloc(np, sizeof(double));
    
    p[2] = 10.0;
    p[10] = 10.0;
    p[11] = 10.0;

    campusrover_model_acados_sim_update_params(capsule, p, np);
    free(p);


    /* initialize input */
    // x
    double x0[7];
    for (int ii = 0; ii < 7; ii++)
        x0[ii] = 0.0;

    sim_in_set(campusrover_model_sim_config, campusrover_model_sim_dims,
               campusrover_model_sim_in, "x", x0);


    // u
    double u0[2];
    for (int ii = 0; ii < 2; ii++)
        u0[ii] = 0.0;

    sim_in_set(campusrover_model_sim_config, campusrover_model_sim_dims,
               campusrover_model_sim_in, "u", u0);

    // S_forw
    double S_forw[63];
    for (int ii = 0; ii < 63; ii++)
        S_forw[ii] = 0.0;
    for (int ii = 0; ii < 7; ii++)
        S_forw[ii + ii * 7 ] = 1.0;


    sim_in_set(campusrover_model_sim_config, campusrover_model_sim_dims,
               campusrover_model_sim_in, "S_forw", S_forw);

    int status = sim_precompute(campusrover_model_sim_solver, campusrover_model_sim_in, campusrover_model_sim_out);

    return status;
}


int campusrover_model_acados_sim_solve(sim_solver_capsule *capsule)
{
    // integrate dynamics using acados sim_solver
    int status = sim_solve(capsule->acados_sim_solver,
                           capsule->acados_sim_in, capsule->acados_sim_out);
    if (status != 0)
        printf("error in campusrover_model_acados_sim_solve()! Exiting.\n");

    return status;
}


int campusrover_model_acados_sim_free(sim_solver_capsule *capsule)
{
    // free memory
    sim_solver_destroy(capsule->acados_sim_solver);
    sim_in_destroy(capsule->acados_sim_in);
    sim_out_destroy(capsule->acados_sim_out);
    sim_opts_destroy(capsule->acados_sim_opts);
    sim_dims_destroy(capsule->acados_sim_dims);
    sim_config_destroy(capsule->acados_sim_config);

    // free external function

    return 0;
}


int campusrover_model_acados_sim_update_params(sim_solver_capsule *capsule, double *p, int np)
{
    int status = 0;
    int casadi_np = CAMPUSROVER_MODEL_NP;

    if (casadi_np != np) {
        printf("campusrover_model_acados_sim_update_params: trying to set %i parameters for external functions."
            " External function has %i parameters. Exiting.\n", np, casadi_np);
        exit(1);
    }

    return status;
}

/* getters pointers to C objects*/
sim_config * campusrover_model_acados_get_sim_config(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_config;
};

sim_in * campusrover_model_acados_get_sim_in(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_in;
};

sim_out * campusrover_model_acados_get_sim_out(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_out;
};

void * campusrover_model_acados_get_sim_dims(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_dims;
};

sim_opts * campusrover_model_acados_get_sim_opts(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_opts;
};

sim_solver  * campusrover_model_acados_get_sim_solver(sim_solver_capsule *capsule)
{
    return capsule->acados_sim_solver;
};

