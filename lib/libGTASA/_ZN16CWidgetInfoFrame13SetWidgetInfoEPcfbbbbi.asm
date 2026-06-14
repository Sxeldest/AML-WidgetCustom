; =========================================================
; Game Engine Function: _ZN16CWidgetInfoFrame13SetWidgetInfoEPcfbbbbi
; Address            : 0x2B95E8 - 0x2B9640
; =========================================================

2B95E8:  PUSH            {R4-R7,LR}
2B95EA:  ADD             R7, SP, #0xC
2B95EC:  PUSH.W          {R11}
2B95F0:  MOV             R6, R0
2B95F2:  ADD.W           R0, R6, #0x98; char *
2B95F6:  MOV             R4, R3
2B95F8:  MOV             R5, R2
2B95FA:  BLX             strcpy
2B95FE:  VLDR            S0, =1000.0
2B9602:  VMOV            S2, R5
2B9606:  LDR             R0, [R7,#arg_4]
2B9608:  VDIV.F32        S0, S2, S0
2B960C:  LDR             R3, [R7,#arg_0]
2B960E:  CMP             R0, #0
2B9610:  IT NE
2B9612:  VMOVNE.F32      S2, S0
2B9616:  LDRD.W          R2, R1, [R7,#arg_8]
2B961A:  VCVT.S32.F32    S0, S2
2B961E:  STRB.W          R4, [R6,#0xA8]
2B9622:  STRB.W          R3, [R6,#0xA9]
2B9626:  STRB.W          R0, [R6,#0xAA]
2B962A:  MOVS            R0, #2
2B962C:  STRB.W          R2, [R6,#0xAB]
2B9630:  STR.W           R1, [R6,#0xAC]
2B9634:  STR             R0, [R6,#0x7C]
2B9636:  VSTR            S0, [R6,#0xA4]
2B963A:  POP.W           {R11}
2B963E:  POP             {R4-R7,PC}
