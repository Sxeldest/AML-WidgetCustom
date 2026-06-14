; =========================================================
; Game Engine Function: _Z12emu_glLightijji
; Address            : 0x1BA21C - 0x1BA244
; =========================================================

1BA21C:  PUSH            {R7,LR}
1BA21E:  MOV             R7, SP
1BA220:  SUB             SP, SP, #8
1BA222:  VMOV            S0, R2
1BA226:  MOVW            R2, #0x1205
1BA22A:  SUBS            R2, R1, R2
1BA22C:  VCVT.F32.S32    S0, S0
1BA230:  CMP             R2, #4
1BA232:  VSTR            S0, [SP,#0x10+var_C]
1BA236:  ITT LS
1BA238:  ADDLS.W         R2, SP, #0x10+var_C; float *
1BA23C:  BLXLS           j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1BA240:  ADD             SP, SP, #8
1BA242:  POP             {R7,PC}
