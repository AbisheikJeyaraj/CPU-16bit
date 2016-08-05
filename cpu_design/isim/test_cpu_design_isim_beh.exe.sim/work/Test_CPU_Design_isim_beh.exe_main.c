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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_0311250648_3212880686_init();
    work_a_4230703719_3212880686_init();
    work_a_3219856015_3212880686_init();
    work_a_3430011751_3212880686_init();
    work_a_0972602110_3212880686_init();
    work_a_2612744931_3212880686_init();
    work_a_2721476134_3212880686_init();
    work_a_3041753701_3212880686_init();
    work_a_1208337864_3212880686_init();
    work_a_2857801645_3212880686_init();
    work_a_4104370340_3212880686_init();
    work_a_2270315936_3212880686_init();
    work_a_1228989981_3212880686_init();
    work_a_0264974931_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1632567566_3212880686_init();
    work_a_2532199496_1181938964_init();
    work_a_2620497834_2372691052_init();


    xsi_register_tops("work_a_2620497834_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
