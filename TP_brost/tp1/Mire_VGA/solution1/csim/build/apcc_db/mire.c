/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC_pixel l_struct_OC_pixel;

/* Structure contents */
struct l_struct_OC_pixel {
  unsigned char field0;
  unsigned char field1;
  unsigned char field2;
};


/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void mire(l_struct_OC_pixel *llvm_cbe_p);


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void mire(l_struct_OC_pixel *llvm_cbe_p) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge5_count = 0;
  unsigned int llvm_cbe_storemerge5;
  unsigned int llvm_cbe_storemerge5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  l_struct_OC_pixel *llvm_cbe_tmp__1;
  l_struct_OC_pixel *llvm_cbe_tmp__1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge14_count = 0;
  unsigned int llvm_cbe_storemerge14;
  unsigned int llvm_cbe_storemerge14__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_rec_count = 0;
  unsigned long long llvm_cbe__2e_rec;
  unsigned long long llvm_cbe__2e_rec__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e__count = 0;
  unsigned char llvm_cbe__2e_;
  static  unsigned long long aesl_llvm_cbe__2e_3_count = 0;
  unsigned char llvm_cbe__2e_3;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  unsigned char llvm_cbe_tmp__2;
  unsigned char llvm_cbe_tmp__2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned char llvm_cbe_tmp__3;
  unsigned char llvm_cbe_tmp__3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned char llvm_cbe_tmp__4;
  unsigned char llvm_cbe_tmp__4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_rec6_count = 0;
  unsigned long long llvm_cbe__2e_rec6;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  l_struct_OC_pixel *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
   char *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
   char *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
   char *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_lftr_2e_wideiv_count = 0;
  unsigned int llvm_cbe_lftr_2e_wideiv;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond7_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @mire\n");
  llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__1__PHI_TEMPORARY = (l_struct_OC_pixel *)llvm_cbe_p;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge5 = phi i32 [ 0, %%0 ], [ %%16, %%15  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_storemerge5_count);
  llvm_cbe_storemerge5 = (unsigned int )llvm_cbe_storemerge5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge5 = 0x%X",llvm_cbe_storemerge5);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = phi %%struct.pixel* [ %%p, %%0 ], [ %%10, %%15  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_7_count);
  llvm_cbe_tmp__1 = (l_struct_OC_pixel *)llvm_cbe_tmp__1__PHI_TEMPORARY;
  llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe__2e_rec__PHI_TEMPORARY = (unsigned long long )0ull;   /* for PHI node */
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__12:
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add nsw i32 %%storemerge5, 1, !dbg !3 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_storemerge5&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
  if (((llvm_cbe_tmp__10&4294967295U) == (480u&4294967295U))) {
    goto llvm_cbe_tmp__13;
  } else {
    llvm_cbe_storemerge5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__10;   /* for PHI node */
    llvm_cbe_tmp__1__PHI_TEMPORARY = (l_struct_OC_pixel *)llvm_cbe_tmp__5;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__11:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge14 = phi i32 [ 0, %%.preheader ], [ %%14, %%6  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_storemerge14_count);
  llvm_cbe_storemerge14 = (unsigned int )llvm_cbe_storemerge14__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge14 = 0x%X",llvm_cbe_storemerge14);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__9);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.rec = phi i64 [ 0, %%.preheader ], [ %%.rec6, %%6  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe__2e_rec_count);
  llvm_cbe__2e_rec = (unsigned long long )llvm_cbe__2e_rec__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",llvm_cbe__2e_rec);
printf("\n = 0x%I64X",0ull);
printf("\n.rec6 = 0x%I64X",llvm_cbe__2e_rec6);
}
  if ((((signed int )llvm_cbe_storemerge14) < ((signed int )213u))) {
    llvm_cbe_tmp__2__PHI_TEMPORARY = (unsigned char )((unsigned char )0);   /* for PHI node */
    llvm_cbe_tmp__3__PHI_TEMPORARY = (unsigned char )((unsigned char )0);   /* for PHI node */
    llvm_cbe_tmp__4__PHI_TEMPORARY = (unsigned char )((unsigned char )-1);   /* for PHI node */
    goto llvm_cbe_tmp__14;
  } else {
    goto llvm_cbe_tmp__15;
  }

llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = phi i8 [ 0, %%2 ], [ %%., %%4  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_18_count);
  llvm_cbe_tmp__2 = (unsigned char )llvm_cbe_tmp__2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__2);
printf("\n = 0x%X",((unsigned char )0));
printf("\n. = 0x%X",llvm_cbe__2e_);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = phi i8 [ 0, %%2 ], [ %%.3, %%4  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__3 = (unsigned char )llvm_cbe_tmp__3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__3);
printf("\n = 0x%X",((unsigned char )0));
printf("\n.3 = 0x%X",llvm_cbe__2e_3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = phi i8 [ -1, %%2 ], [ 0, %%4  for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__4 = (unsigned char )llvm_cbe_tmp__4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__4);
printf("\n = 0x%X",((unsigned char )-1));
printf("\n = 0x%X",((unsigned char )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.rec6 = add i64 %%.rec, 1, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe__2e_rec6_count);
  llvm_cbe__2e_rec6 = (unsigned long long )((unsigned long long )(llvm_cbe__2e_rec&18446744073709551615ull)) + ((unsigned long long )(1ull&18446744073709551615ull));
if (AESL_DEBUG_TRACE)
printf("\n.rec6 = 0x%I64X\n", ((unsigned long long )(llvm_cbe__2e_rec6&18446744073709551615ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds %%struct.pixel* %%1, i64 %%.rec6, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__5 = (l_struct_OC_pixel *)(&llvm_cbe_tmp__1[(((signed long long )llvm_cbe__2e_rec6))]);
if (AESL_DEBUG_TRACE) {
printf("\n.rec6 = 0x%I64X",((signed long long )llvm_cbe__2e_rec6));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds %%struct.pixel* %%1, i64 %%.rec, i32 0, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__6 = ( char *)(&llvm_cbe_tmp__1[(((signed long long )llvm_cbe__2e_rec))].field0);
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",((signed long long )llvm_cbe__2e_rec));
}
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i8 %%9, i8* %%11, align 1, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_25_count);
  *((unsigned char volatile*)llvm_cbe_tmp__6) = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.pixel* %%1, i64 %%.rec, i32 1, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__7 = ( char *)(&llvm_cbe_tmp__1[(((signed long long )llvm_cbe__2e_rec))].field1);
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",((signed long long )llvm_cbe__2e_rec));
}
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i8 %%8, i8* %%12, align 1, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_27_count);
  *((unsigned char volatile*)llvm_cbe_tmp__7) = llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.pixel* %%1, i64 %%.rec, i32 2, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__8 = ( char *)(&llvm_cbe_tmp__1[(((signed long long )llvm_cbe__2e_rec))].field2);
if (AESL_DEBUG_TRACE) {
printf("\n.rec = 0x%I64X",((signed long long )llvm_cbe__2e_rec));
}
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i8 %%7, i8* %%13, align 1, !dbg !2 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_29_count);
  *((unsigned char volatile*)llvm_cbe_tmp__8) = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%storemerge14, 1, !dbg !4 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_storemerge14&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%lftr.wideiv = trunc i64 %%.rec6 to i32, !dbg !3 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe_lftr_2e_wideiv_count);
  llvm_cbe_lftr_2e_wideiv = (unsigned int )((unsigned int )llvm_cbe__2e_rec6&4294967295U);
if (AESL_DEBUG_TRACE)
printf("\nlftr.wideiv = 0x%X\n", llvm_cbe_lftr_2e_wideiv);
  if (((llvm_cbe_lftr_2e_wideiv&4294967295U) == (640u&4294967295U))) {
    goto llvm_cbe_tmp__12;
  } else {
    llvm_cbe_storemerge14__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
    llvm_cbe__2e_rec__PHI_TEMPORARY = (unsigned long long )llvm_cbe__2e_rec6;   /* for PHI node */
    goto llvm_cbe_tmp__11;
  }

llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  %%. = select i1 %%5, i8 0, i8 -1, !dbg !3 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe__2e__count);
  llvm_cbe__2e_ = (unsigned char )(((((signed int )llvm_cbe_storemerge14) < ((signed int )427u))) ? ((unsigned char )((unsigned char )0)) : ((unsigned char )((unsigned char )-1)));
if (AESL_DEBUG_TRACE)
printf("\n. = 0x%X\n", llvm_cbe__2e_);
if (AESL_DEBUG_TRACE)
printf("\n  %%.3 = sext i1 %%5 to i8, !dbg !3 for 0x%I64xth hint within @mire  --> \n", ++aesl_llvm_cbe__2e_3_count);
  llvm_cbe__2e_3 = (unsigned char )(( char )(0-(((signed int )llvm_cbe_storemerge14) < ((signed int )427u))));
if (AESL_DEBUG_TRACE)
printf("\n.3 = 0x%X\n", llvm_cbe__2e_3);
  llvm_cbe_tmp__2__PHI_TEMPORARY = (unsigned char )llvm_cbe__2e_;   /* for PHI node */
  llvm_cbe_tmp__3__PHI_TEMPORARY = (unsigned char )llvm_cbe__2e_3;   /* for PHI node */
  llvm_cbe_tmp__4__PHI_TEMPORARY = (unsigned char )((unsigned char )0);   /* for PHI node */
  goto llvm_cbe_tmp__14;

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__13:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @mire}\n");
  return;
}

