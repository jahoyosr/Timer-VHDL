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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/hoyosrod/Compteur/compteur8bits.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_2255506239096238868_3965413181(char *, char *, char *, char *, int );


static void work_a_0082332615_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;

LAB0:    t1 = (t0 + 3264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);

LAB6:    t2 = (t0 + 3584);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3584);
    *((int *)t6) = 0;
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5533);
    t6 = (t0 + 2288U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t2, 8U);

LAB12:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t2 = (t0 + 3664);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t8 = *((unsigned char *)t6);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB17;

LAB19:
LAB18:
LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1832U);
    t7 = *((char **)t2);
    t2 = (t0 + 2288U);
    t10 = *((char **)t2);
    t2 = (t10 + 0);
    memcpy(t2, t7, 8U);
    goto LAB15;

LAB17:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t8 = *((unsigned char *)t6);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t2 = (t0 + 5488U);
    t6 = ieee_p_3620187407_sub_2255506239096238868_3965413181(IEEE_P_3620187407, t11, t4, t2, 1);
    t7 = (t0 + 2288U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    t12 = (t11 + 12U);
    t15 = *((unsigned int *)t12);
    t16 = (1U * t15);
    memcpy(t7, t6, t16);

LAB21:    goto LAB18;

LAB20:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2288U);
    t7 = *((char **)t2);
    t2 = (t0 + 5488U);
    t10 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t11, t7, t2, 1);
    t12 = (t0 + 2288U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t14 = (t11 + 12U);
    t15 = *((unsigned int *)t14);
    t16 = (1U * t15);
    memcpy(t12, t10, t16);
    goto LAB21;

}


extern void work_a_0082332615_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0082332615_3212880686_p_0};
	xsi_register_didat("work_a_0082332615_3212880686", "isim/TestTOP_isim_beh.exe.sim/work/a_0082332615_3212880686.didat");
	xsi_register_executes(pe);
}
