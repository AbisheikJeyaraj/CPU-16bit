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
static const char *ng0 = "C:/Users/jayarajaperua7173/Dropbox/Study Material/Summer-2016/ADSD/CENG5534_FinalProject_Group1/CPU_Design/Program_Counter.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3430011751_3212880686_p_0(char *t0)
{
    char t11[16];
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
    char *t12;
    int t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1648U);
    t4 = *((char **)t2);
    t2 = (t0 + 3032);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t12 = (t8 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    t2 = (t0 + 2952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1648U);
    t12 = *((char **)t4);
    t4 = (t0 + 5296U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t4);
    t14 = (t13 + 1);
    t15 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, t14, 4);
    t16 = (t0 + 1648U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t18 = (t11 + 12U);
    t19 = *((unsigned int *)t18);
    t19 = (t19 * 1U);
    memcpy(t16, t15, t19);
    goto LAB9;

}


extern void work_a_3430011751_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3430011751_3212880686_p_0};
	xsi_register_didat("work_a_3430011751_3212880686", "isim/Test_CPU_Design_2_isim_beh.exe.sim/work/a_3430011751_3212880686.didat");
	xsi_register_executes(pe);
}
