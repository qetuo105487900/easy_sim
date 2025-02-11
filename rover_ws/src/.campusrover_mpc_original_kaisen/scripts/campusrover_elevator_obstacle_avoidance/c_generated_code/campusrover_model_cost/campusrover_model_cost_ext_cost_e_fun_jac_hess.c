/* This file was automatically generated by CasADi.
   The CasADi copyright holders make no ownership claim of its contents. */
#ifdef __cplusplus
extern "C" {
#endif

/* How to prefix internal symbols */
#ifdef CASADI_CODEGEN_PREFIX
  #define CASADI_NAMESPACE_CONCAT(NS, ID) _CASADI_NAMESPACE_CONCAT(NS, ID)
  #define _CASADI_NAMESPACE_CONCAT(NS, ID) NS ## ID
  #define CASADI_PREFIX(ID) CASADI_NAMESPACE_CONCAT(CODEGEN_PREFIX, ID)
#else
  #define CASADI_PREFIX(ID) campusrover_model_cost_ext_cost_e_fun_jac_hess_ ## ID
#endif

#include <math.h>

#ifndef casadi_real
#define casadi_real double
#endif

#ifndef casadi_int
#define casadi_int int
#endif

/* Add prefix to internal symbols */
#define casadi_f0 CASADI_PREFIX(f0)
#define casadi_s0 CASADI_PREFIX(s0)
#define casadi_s1 CASADI_PREFIX(s1)
#define casadi_s2 CASADI_PREFIX(s2)
#define casadi_s3 CASADI_PREFIX(s3)
#define casadi_s4 CASADI_PREFIX(s4)
#define casadi_sq CASADI_PREFIX(sq)

/* Symbol visibility in DLLs */
#ifndef CASADI_SYMBOL_EXPORT
  #if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
    #if defined(STATIC_LINKED)
      #define CASADI_SYMBOL_EXPORT
    #else
      #define CASADI_SYMBOL_EXPORT __declspec(dllexport)
    #endif
  #elif defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
    #define CASADI_SYMBOL_EXPORT __attribute__ ((visibility ("default")))
  #else
    #define CASADI_SYMBOL_EXPORT
  #endif
#endif

casadi_real casadi_sq(casadi_real x) { return x*x;}

static const casadi_int casadi_s0[11] = {7, 1, 0, 7, 0, 1, 2, 3, 4, 5, 6};
static const casadi_int casadi_s1[3] = {0, 0, 0};
static const casadi_int casadi_s2[16] = {12, 1, 0, 12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
static const casadi_int casadi_s3[5] = {1, 1, 0, 1, 0};
static const casadi_int casadi_s4[19] = {7, 7, 0, 3, 6, 9, 9, 9, 9, 9, 0, 1, 2, 0, 1, 2, 0, 1, 2};

/* campusrover_model_cost_ext_cost_e_fun_jac_hess:(i0[7],i1[],i2[12])->(o0,o1[7],o2[7x7,9nz]) */
static int casadi_f0(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, int mem) {
  casadi_real a0, a1, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a2, a20, a21, a22, a23, a24, a3, a4, a5, a6, a7, a8, a9;
  a0=arg[2]? arg[2][5] : 0;
  a1=sin(a0);
  a2=arg[0]? arg[0][0] : 0;
  a3=arg[2]? arg[2][3] : 0;
  a3=(a2-a3);
  a3=(a1*a3);
  a4=cos(a0);
  a5=arg[0]? arg[0][1] : 0;
  a6=arg[2]? arg[2][4] : 0;
  a6=(a5-a6);
  a6=(a4*a6);
  a3=(a3-a6);
  a6=casadi_sq(a3);
  a7=1.0000000000000001e-01;
  a8=arg[2]? arg[2][6] : 0;
  a2=(a2-a8);
  a8=casadi_sq(a2);
  a9=arg[2]? arg[2][7] : 0;
  a5=(a5-a9);
  a9=casadi_sq(a5);
  a8=(a8+a9);
  a8=sqrt(a8);
  a9=(a7*a8);
  a10=(a9*a8);
  a6=(a6+a10);
  a10=3.1400000000000001e+00;
  a11=arg[0]? arg[0][2] : 0;
  a0=(a0-a11);
  a11=2.;
  a0=(a0/a11);
  a12=sin(a0);
  a12=(a10*a12);
  a13=casadi_sq(a12);
  a14=1.0000000000000000e-02;
  a15=8.9999999999999997e-02;
  a16=-10.;
  a17=(a16*a8);
  a17=exp(a17);
  a18=(a15*a17);
  a14=(a14+a18);
  a18=(a13*a14);
  a6=(a6+a18);
  if (res[0]!=0) res[0][0]=a6;
  a6=(a2+a2);
  a13=(a15*a13);
  a18=(a17*a13);
  a18=(a16*a18);
  a18=(a18+a9);
  a9=(a7*a8);
  a18=(a18+a9);
  a9=(a8+a8);
  a18=(a18/a9);
  a19=(a6*a18);
  a3=(a3+a3);
  a20=(a1*a3);
  a19=(a19+a20);
  if (res[1]!=0) res[1][0]=a19;
  a19=(a5+a5);
  a20=(a19*a18);
  a3=(a4*a3);
  a20=(a20-a3);
  if (res[1]!=0) res[1][1]=a20;
  a20=5.0000000000000000e-01;
  a3=cos(a0);
  a21=(a12+a12);
  a21=(a21*a14);
  a21=(a10*a21);
  a22=(a3*a21);
  a22=(a20*a22);
  a22=(-a22);
  if (res[1]!=0) res[1][2]=a22;
  a22=0.;
  if (res[1]!=0) res[1][3]=a22;
  if (res[1]!=0) res[1][4]=a22;
  if (res[1]!=0) res[1][5]=a22;
  if (res[1]!=0) res[1][6]=a22;
  a22=(a11*a18);
  a2=(a2/a8);
  a23=(a16*a2);
  a23=(a17*a23);
  a23=(a13*a23);
  a23=(a16*a23);
  a24=(a7*a2);
  a23=(a23+a24);
  a24=(a7*a2);
  a23=(a23+a24);
  a23=(a23/a9);
  a24=(a18/a9);
  a2=(a2+a2);
  a2=(a24*a2);
  a23=(a23-a2);
  a23=(a6*a23);
  a22=(a22+a23);
  a23=(a1+a1);
  a23=(a1*a23);
  a22=(a22+a23);
  if (res[2]!=0) res[2][0]=a22;
  a5=(a5/a8);
  a8=(a16*a5);
  a8=(a17*a8);
  a13=(a13*a8);
  a13=(a16*a13);
  a8=(a7*a5);
  a13=(a13+a8);
  a7=(a7*a5);
  a13=(a13+a7);
  a13=(a13/a9);
  a5=(a5+a5);
  a24=(a24*a5);
  a13=(a13-a24);
  a24=(a6*a13);
  a5=(a4+a4);
  a1=(a1*a5);
  a24=(a24-a1);
  if (res[2]!=0) res[2][1]=a24;
  a12=(a12+a12);
  a1=-5.0000000000000000e-01;
  a7=cos(a0);
  a7=(a1*a7);
  a7=(a10*a7);
  a12=(a12*a7);
  a15=(a15*a12);
  a17=(a17*a15);
  a16=(a16*a17);
  a16=(a16/a9);
  a6=(a6*a16);
  if (res[2]!=0) res[2][2]=a6;
  if (res[2]!=0) res[2][3]=a24;
  a11=(a11*a18);
  a13=(a19*a13);
  a11=(a11+a13);
  a4=(a4*a5);
  a11=(a11+a4);
  if (res[2]!=0) res[2][4]=a11;
  a19=(a19*a16);
  if (res[2]!=0) res[2][5]=a19;
  if (res[2]!=0) res[2][6]=a6;
  if (res[2]!=0) res[2][7]=a19;
  a7=(a7+a7);
  a14=(a14*a7);
  a10=(a10*a14);
  a3=(a3*a10);
  a0=sin(a0);
  a1=(a1*a0);
  a21=(a21*a1);
  a3=(a3-a21);
  a20=(a20*a3);
  a20=(-a20);
  if (res[2]!=0) res[2][8]=a20;
  return 0;
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_e_fun_jac_hess(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, int mem){
  return casadi_f0(arg, res, iw, w, mem);
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_e_fun_jac_hess_alloc_mem(void) {
  return 0;
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_e_fun_jac_hess_init_mem(int mem) {
  return 0;
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_e_fun_jac_hess_free_mem(int mem) {
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_e_fun_jac_hess_checkout(void) {
  return 0;
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_e_fun_jac_hess_release(int mem) {
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_e_fun_jac_hess_incref(void) {
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_e_fun_jac_hess_decref(void) {
}

CASADI_SYMBOL_EXPORT casadi_int campusrover_model_cost_ext_cost_e_fun_jac_hess_n_in(void) { return 3;}

CASADI_SYMBOL_EXPORT casadi_int campusrover_model_cost_ext_cost_e_fun_jac_hess_n_out(void) { return 3;}

CASADI_SYMBOL_EXPORT casadi_real campusrover_model_cost_ext_cost_e_fun_jac_hess_default_in(casadi_int i){
  switch (i) {
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const char* campusrover_model_cost_ext_cost_e_fun_jac_hess_name_in(casadi_int i){
  switch (i) {
    case 0: return "i0";
    case 1: return "i1";
    case 2: return "i2";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const char* campusrover_model_cost_ext_cost_e_fun_jac_hess_name_out(casadi_int i){
  switch (i) {
    case 0: return "o0";
    case 1: return "o1";
    case 2: return "o2";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* campusrover_model_cost_ext_cost_e_fun_jac_hess_sparsity_in(casadi_int i) {
  switch (i) {
    case 0: return casadi_s0;
    case 1: return casadi_s1;
    case 2: return casadi_s2;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* campusrover_model_cost_ext_cost_e_fun_jac_hess_sparsity_out(casadi_int i) {
  switch (i) {
    case 0: return casadi_s3;
    case 1: return casadi_s0;
    case 2: return casadi_s4;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_e_fun_jac_hess_work(casadi_int *sz_arg, casadi_int* sz_res, casadi_int *sz_iw, casadi_int *sz_w) {
  if (sz_arg) *sz_arg = 3;
  if (sz_res) *sz_res = 3;
  if (sz_iw) *sz_iw = 0;
  if (sz_w) *sz_w = 0;
  return 0;
}


#ifdef __cplusplus
} /* extern "C" */
#endif
