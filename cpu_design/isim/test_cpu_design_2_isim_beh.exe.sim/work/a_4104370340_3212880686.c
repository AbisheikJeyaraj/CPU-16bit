/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/jayarajaperua7173/Dropbox/Study Material/Summer-2016/ADSD/CENG5534_FinalProject_Group1/CPU_Design/Shifter_Unit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4104370340_3212880686_p_0(char *t0)
{
    char t8[16];
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB15:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t10 = *((char **)t1);
    t1 = (t0 + 5592U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t10, t1, (unsigned char)0);
    t12 = (t9 + 12U);
    t13 = *((unsigned int *)t12);
    t13 = (t13 * 1U);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 5608U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t14);
    t17 = xsi_vhdl_bitvec_sll(t17, t11, t13, t16);
    t18 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t8, t17, t9);
    t19 = (t8 + 12U);
    t20 = *((unsigned int *)t19);
    t20 = (t20 * 1U);
    t21 = (16U != t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    t22 = (t0 + 3232);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 16U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB6;

LAB8:    xsi_size_not_matching(16U, t20, 0);
    goto LAB9;

LAB10:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 5592U);
    t10 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t5, t1, (unsigned char)0);
    t11 = (t9 + 12U);
    t13 = *((unsigned int *)t11);
    t13 = (t13 * 1U);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t12 = (t0 + 5608U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t14, t12);
    t15 = xsi_vhdl_bitvec_srl(t15, t10, t13, t16);
    t17 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t8, t15, t9);
    t18 = (t8 + 12U);
    t20 = *((unsigned int *)t18);
    t20 = (t20 * 1U);
    t6 = (16U != t20);
    if (t6 == 1)
        goto LAB12;

LAB13:    t19 = (t0 + 3232);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB12:    xsi_size_not_matching(16U, t20, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB21;

LAB22:
LAB17:    goto LAB3;

LAB16:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t10 = *((char **)t1);
    t1 = (t0 + 5592U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t10, t1, (unsigned char)0);
    t12 = (t9 + 12U);
    t13 = *((unsigned int *)t12);
    t13 = (t13 * 1U);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 5608U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t14);
    t17 = xsi_vhdl_bitvec_rol(t17, t11, t13, t16);
    t18 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t8, t17, t9);
    t19 = (t8 + 12U);
    t20 = *((unsigned int *)t19);
    t20 = (t20 * 1U);
    t21 = (16U != t20);
    if (t21 == 1)
        goto LAB19;

LAB20:    t22 = (t0 + 3232);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t18, 16U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB17;

LAB19:    xsi_size_not_matching(16U, t20, 0);
    goto LAB20;

LAB21:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 5592U);
    t10 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t5, t1, (unsigned char)0);
    t11 = (t9 + 12U);
    t13 = *((unsigned int *)t11);
    t13 = (t13 * 1U);
    t12 = (t0 + 1192U);
    t14 = *((char **)t12);
    t12 = (t0 + 5608U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t14, t12);
    t15 = xsi_vhdl_bitvec_ror(t15, t10, t13, t16);
    t17 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t8, t15, t9);
    t18 = (t8 + 12U);
    t20 = *((unsigned int *)t18);
    t20 = (t20 * 1U);
    t6 = (16U != t20);
    if (t6 == 1)
        goto LAB23;

LAB24:    t19 = (t0 + 3232);
    t22 = (t19 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 16U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB17;

LAB23:    xsi_size_not_matching(16U, t20, 0);
    goto LAB24;

}


extern void work_a_4104370340_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4104370340_3212880686_p_0};
	xsi_register_didat("work_a_4104370340_3212880686", "isim/Test_CPU_Design_2_isim_beh.exe.sim/work/a_4104370340_3212880686.didat");
	xsi_register_executes(pe);
}
