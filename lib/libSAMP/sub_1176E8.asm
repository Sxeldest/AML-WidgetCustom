; =========================================================
; Game Engine Function: sub_1176E8
; Address            : 0x1176E8 - 0x117746
; =========================================================

1176E8:  PUSH            {R4,R5,R7,LR}
1176EA:  ADD             R7, SP, #8
1176EC:  VPUSH           {D8}
1176F0:  MOV             R4, R0
1176F2:  LDR             R0, [R1,#0x1C]
1176F4:  CBZ             R0, loc_11773A
1176F6:  LDR             R0, [R0]
1176F8:  CBZ             R0, loc_11773A
1176FA:  MOV             R5, R1
1176FC:  LDR             R1, [R1]
1176FE:  VLDR            S0, [R0,#0xC]
117702:  MOV             R0, R5
117704:  LDR             R1, [R1,#0x18]
117706:  VCVT.F32.S32    S16, S0
11770A:  BLX             R1
11770C:  VMOV            S0, R0
117710:  LDR             R2, [R5,#0x1C]
117712:  LDR             R1, [R5]
117714:  VMUL.F32        S0, S0, S16
117718:  LDR             R0, [R2]
11771A:  LDR             R1, [R1,#0x18]
11771C:  VLDR            S2, [R0,#0x10]
117720:  MOV             R0, R5
117722:  VCVT.F32.S32    S16, S2
117726:  VSTR            S0, [R4]
11772A:  BLX             R1
11772C:  VMOV            S0, R0
117730:  VMUL.F32        S0, S0, S16
117734:  VSTR            S0, [R4,#4]
117738:  B               loc_117740
11773A:  MOVS            R0, #0
11773C:  STRD.W          R0, R0, [R4]
117740:  VPOP            {D8}
117744:  POP             {R4,R5,R7,PC}
