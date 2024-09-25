#include <iostream>
#include <gtest/gtest.h>

#include "acados/utils/print.h"
#include "acados_c/ocp_nlp_interface.h"
#include "acados_c/external_function_interface.h"
#include "acados/ocp_nlp/ocp_nlp_constraints_bgh.h"
#include "acados/ocp_nlp/ocp_nlp_cost_ls.h"

#include "acados_solver_campusrover_model.h"

campusrover_model_solver_capsule *g_capsule;

int main(int argc, char **argv)
{
  testing::InitGoogleTest(&argc, argv);
  std::cout << "\n\n\n#### Acados load model test ###" << std::endl;
  g_capsule = campusrover_model_acados_create_capsule();
  int status = 0;
  status = campusrover_model_acados_create(g_capsule);
  if (status)
  {
      printf("campusrover_model_acados_create() returned status %d. Exiting.\n", status);
      exit(1);
  }
  std::cout << "campusrover_model_acados_create model is created" << std::endl;

  ocp_nlp_config *nlp_config = campusrover_model_acados_get_nlp_config(g_capsule);
  ocp_nlp_dims *nlp_dims = campusrover_model_acados_get_nlp_dims(g_capsule);
  ocp_nlp_in *nlp_in = campusrover_model_acados_get_nlp_in(g_capsule);
  ocp_nlp_out *ocp_nlp_out = campusrover_model_acados_get_nlp_out(g_capsule);

  int N = nlp_dims->N;
  int nx = *nlp_dims->nx;
  int nu = *nlp_dims->nu;
  int np = capsule_->nlp_np;
  printf("time horizion is %d, with state %d and input %d \n", N, nx, nu);
  
  double x_current[] = {0, 0, 0, 0, 0, 0, 0};
  double u_current[] = {0, 0};
  double param[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

  for(int i = 0; i < 300; i++)
  {
    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, 0, "lbx", x_current);
    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, 0, "ubx", x_current);
    status = campusrover_model_acados_solve(g_capsule);
    ocp_nlp_out_get(nlp_config, nlp_dims, ocp_nlp_out, 0, "u", &u_current);
    campusrover_model_acados_update_params(g_capsule, 0, param, np);
    // update model
    // x_current = ...
  }


  std::cout << "#### Acados load model test ###\n\n\n" << std::endl;
  return RUN_ALL_TESTS();
}