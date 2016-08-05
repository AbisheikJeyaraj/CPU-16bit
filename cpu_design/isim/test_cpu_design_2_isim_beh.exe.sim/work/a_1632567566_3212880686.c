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
static const char *ng0 = "C:/Users/jayarajaperua7173/Dropbox/Study Material/Summer-2016/ADSD/CENG5534_FinalProject_Group1/CPU_Design/Data_Memory.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1632567566_3212880686_p_0(char *t0)
{
    char t14[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1312U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t4 = (t0 + 1032U);
    t13 = *((char **)t4);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t0 + 6908U);
    t4 = xsi_base_array_concat(t4, t14, t15, (char)99, t12, (char)97, t13, t16, (char)101);
    t17 = (1U + 16U);
    t18 = (17U != t17);
    if (t18 == 1)
        goto LAB11;

LAB12:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 6924U);
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t20, t19);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    t24 = (17U * t23);
    t25 = (0U + t24);
    t26 = (t0 + 3712);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t4, 17U);
    xsi_driver_first_trans_delta(t26, t25, 17U, 0LL);
    goto LAB9;

LAB11:    xsi_size_not_matching(17U, t17, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t2 = (t0 + 6924U);
    t21 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t8, t2);
    t22 = (t21 - 0);
    t17 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t21);
    t23 = (17U * t17);
    t24 = (0 + t23);
    t11 = (t5 + t24);
    t13 = (t0 + 3776);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 17U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB9;

}


extern void work_a_1632567566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632567566_3212880686_p_0};
	xsi_register_didat("work_a_1632567566_3212880686", "isim/Test_CPU_Design_2_isim_beh.exe.sim/work/a_1632567566_3212880686.didat");
	xsi_register_executes(pe);
}
