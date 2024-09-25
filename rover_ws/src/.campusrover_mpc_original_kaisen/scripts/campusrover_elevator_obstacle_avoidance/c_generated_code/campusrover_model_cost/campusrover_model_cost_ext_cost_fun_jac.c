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
  #define CASADI_PREFIX(ID) campusrover_model_cost_ext_cost_fun_jac_ ## ID
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
static const casadi_int casadi_s1[6] = {2, 1, 0, 2, 0, 1};
static const casadi_int casadi_s2[16] = {12, 1, 0, 12, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
static const casadi_int casadi_s3[5] = {1, 1, 0, 1, 0};
static const casadi_int casadi_s4[13] = {9, 1, 0, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8};

/* campusrover_model_cost_ext_cost_fun_jac:(i0[7],i1[2],i2[12])->(o0,o1[9]) */
static int casadi_f0(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, int mem) {
  casadi_real a0, a1, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a2, a20, a21, a22, a23, a24, a25, a3, a4, a5, a6, a7, a8, a9;
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
  a11=sin(a0);
  a11=(a10*a11);
  a12=casadi_sq(a11);
  a13=1.0000000000000000e-02;
  a14=8.9999999999999997e-02;
  a15=-10.;
  a16=(a15*a8);
  a16=exp(a16);
  a17=(a14*a16);
  a13=(a13+a17);
  a17=(a12*a13);
  a6=(a6+a17);
  a17=arg[1]? arg[1][0] : 0;
  a18=(a15*a8);
  a18=exp(a18);
  a19=(a7*a18);
  a20=(a17*a19);
  a21=(a20*a17);
  a22=arg[1]? arg[1][1] : 0;
  a23=(a7*a18);
  a24=(a22*a23);
  a25=(a24*a22);
  a21=(a21+a25);
  a6=(a6+a21);
  if (res[0]!=0) res[0][0]=a6;
  a19=(a19*a17);
  a20=(a20+a19);
  if (res[1]!=0) res[1][0]=a20;
  a23=(a23*a22);
  a24=(a24+a23);
  if (res[1]!=0) res[1][1]=a24;
  a2=(a2+a2);
  a22=casadi_sq(a22);
  a22=(a7*a22);
  a17=casadi_sq(a17);
  a17=(a7*a17);
  a22=(a22+a17);
  a18=(a18*a22);
  a18=(a15*a18);
  a14=(a14*a12);
  a16=(a16*a14);
  a15=(a15*a16);
  a18=(a18+a15);
  a18=(a18+a9);
  a7=(a7*a8);
  a18=(a18+a7);
  a8=(a8+a8);
  a18=(a18/a8);
  a2=(a2*a18);
  a3=(a3+a3);
  a1=(a1*a3);
  a2=(a2+a1);
  if (res[1]!=0) res[1][2]=a2;
  a5=(a5+a5);
  a5=(a5*a18);
  a4=(a4*a3);
  a5=(a5-a4);
  if (res[1]!=0) res[1][3]=a5;
  a5=5.0000000000000000e-01;
  a0=cos(a0);
  a11=(a11+a11);
  a11=(a11*a13);
  a10=(a10*a11);
  a0=(a0*a10);
  a5=(a5*a0);
  a5=(-a5);
  if (res[1]!=0) res[1][4]=a5;
  a5=0.;
  if (res[1]!=0) res[1][5]=a5;
  if (res[1]!=0) res[1][6]=a5;
  if (res[1]!=0) res[1][7]=a5;
  if (res[1]!=0) res[1][8]=a5;
  return 0;
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_fun_jac(const casadi_real** arg, casadi_real** res, casadi_int* iw, casadi_real* w, int mem){
  return casadi_f0(arg, res, iw, w, mem);
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_fun_jac_alloc_mem(void) {
  return 0;
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_fun_jac_init_mem(int mem) {
  return 0;
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_fun_jac_free_mem(int mem) {
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_fun_jac_checkout(void) {
  return 0;
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_fun_jac_release(int mem) {
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_fun_jac_incref(void) {
}

CASADI_SYMBOL_EXPORT void campusrover_model_cost_ext_cost_fun_jac_decref(void) {
}

CASADI_SYMBOL_EXPORT casadi_int campusrover_model_cost_ext_cost_fun_jac_n_in(void) { return 3;}

CASADI_SYMBOL_EXPORT casadi_int campusrover_model_cost_ext_cost_fun_jac_n_out(void) { return 2;}

CASADI_SYMBOL_EXPORT casadi_real campusrover_model_cost_ext_cost_fun_jac_default_in(casadi_int i){
  switch (i) {
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const char* campusrover_model_cost_ext_cost_fun_jac_name_in(casadi_int i){
  switch (i) {
    case 0: return "i0";
    case 1: return "i1";
    case 2: return "i2";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const char* campusrover_model_cost_ext_cost_fun_jac_name_out(casadi_int i){
  switch (i) {
    case 0: return "o0";
    case 1: return "o1";
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* campusrover_model_cost_ext_cost_fun_jac_sparsity_in(casadi_int i) {
  switch (i) {
    case 0: return casadi_s0;
    case 1: return casadi_s1;
    case 2: return casadi_s2;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT const casadi_int* campusrover_model_cost_ext_cost_fun_jac_sparsity_out(casadi_int i) {
  switch (i) {
    case 0: return casadi_s3;
    case 1: return casadi_s4;
    default: return 0;
  }
}

CASADI_SYMBOL_EXPORT int campusrover_model_cost_ext_cost_fun_jac_work(casadi_int *sz_arg, casadi_int* sz_res, casadi_int *sz_iw, casadi_int *sz_w) {
  if (sz_arg) *sz_arg = 3;
  if (sz_res) *sz_res = 2;
  if (sz_iw) *sz_iw = 0;
  if (sz_w) *sz_w = 0;
  return 0;
}


#ifdef __cplusplus
} /* extern "C" */
#endif
