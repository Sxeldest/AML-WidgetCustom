; =========================================================
; Game Engine Function: sub_1590E0
; Address            : 0x1590E0 - 0x159136
; =========================================================

1590E0:  PUSH            {R4,R6,R7,LR}
1590E2:  ADD             R7, SP, #8
1590E4:  VPUSH           {D8}
1590E8:  SUB             SP, SP, #0x10
1590EA:  VMOV            S16, R1
1590EE:  VLDR            S0, [R0,#0x14]
1590F2:  MOV             R4, R0
1590F4:  VCMP.F32        S0, S16
1590F8:  VMRS            APSR_nzcv, FPSCR
1590FC:  BEQ             loc_15912A
1590FE:  LDR             R0, [R4,#0x28]
159100:  CBNZ            R0, loc_159112
159102:  LDR             R0, [R4,#0x24]
159104:  MOVS            R1, #9
159106:  MOVS            R2, #0
159108:  LDR             R0, [R0]
15910A:  BL              sub_164CB4
15910E:  STR             R0, [R4,#0x28]
159110:  CBZ             R0, loc_15912A
159112:  MOVS            R1, #0
159114:  VSTR            S16, [SP,#0x20+var_20]
159118:  STRD.W          R1, R1, [SP,#0x20+var_18]
15911C:  MOVS            R1, #0xBF800000
159122:  STR             R1, [SP,#0x20+var_1C]
159124:  MOV             R1, SP
159126:  BL              sub_164CDC
15912A:  VSTR            S16, [R4,#0x14]
15912E:  ADD             SP, SP, #0x10
159130:  VPOP            {D8}
159134:  POP             {R4,R6,R7,PC}
