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
static const char *ng0 = "C:/Users/jayarajaperua7173/Dropbox/Study Material/Summer-2016/ADSD/CENG5534_FinalProject_Group1/CPU_Design/Arithmetic_Unit.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2857801645_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 9108U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 9124U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t8 = (t4 + t7);
    t9 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t8, 17);
    t10 = (t1 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (17U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5192);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 17U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5032);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t11, 0);
    goto LAB6;

}

static void work_a_2857801645_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 9108U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 9124U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t8 = (t4 - t7);
    t9 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t8, 17);
    t10 = (t1 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (17U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5256);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 17U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 5048);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t11, 0);
    goto LAB6;

}

static void work_a_2857801645_3212880686_p_2(char *t0)
{
    char t1[16];
    char t7[16];
    char t16[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    int t21;
    int t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (15 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 7);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t7);
    t9 = (t0 + 1192U);
    t13 = *((char **)t9);
    t11 = (15 - 7);
    t14 = (t11 * 1U);
    t15 = (0 + t14);
    t9 = (t13 + t15);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 7;
    t18 = (t17 + 4U);
    *((int *)t18) = 0;
    t18 = (t17 + 8U);
    *((int *)t18) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t16);
    t22 = (t12 * t21);
    t18 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t22, 17);
    t23 = (t1 + 12U);
    t20 = *((unsigned int *)t23);
    t20 = (t20 * 1U);
    t24 = (17U != t20);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 5320);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t18, 17U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t30 = (t0 + 5064);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t20, 0);
    goto LAB6;

}

static void work_a_2857801645_3212880686_p_3(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 9108U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t2);
    t5 = (t4 + 1);
    t6 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t1, t5, 17);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (17U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 5384);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 17U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 5080);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t8, 0);
    goto LAB6;

}

static void work_a_2857801645_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 9298);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 9300);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 9302);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t14 = (16 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5448);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(49, ng0);

LAB15:    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 2152U);
    t13 = *((char **)t12);
    t14 = (16 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t12 = (t13 + t16);
    t17 = (t0 + 5448);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB4;

LAB6:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t14 = (16 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5448);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t14 = (16 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t2 = (t3 + t16);
    t4 = (t0 + 5448);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 5096);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}

static void work_a_2857801645_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 9304);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 9306);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 9308);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t5 = (16 - 16);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5512);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(55, ng0);

LAB15:    t2 = (t0 + 5112);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t12 = (t0 + 2152U);
    t13 = *((char **)t12);
    t14 = (16 - 16);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 5512);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB4;

LAB6:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t5 = (16 - 16);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5512);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t5 = (16 - 16);
    t15 = (t5 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t4 = (t0 + 5512);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t18;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 5112);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_2857801645_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2857801645_3212880686_p_0,(void *)work_a_2857801645_3212880686_p_1,(void *)work_a_2857801645_3212880686_p_2,(void *)work_a_2857801645_3212880686_p_3,(void *)work_a_2857801645_3212880686_p_4,(void *)work_a_2857801645_3212880686_p_5};
	xsi_register_didat("work_a_2857801645_3212880686", "isim/Test_CPU_Design_2_isim_beh.exe.sim/work/a_2857801645_3212880686.didat");
	xsi_register_executes(pe);
}
