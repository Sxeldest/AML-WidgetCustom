; =========================================================
; Game Engine Function: sub_13DA4C
; Address            : 0x13DA4C - 0x13DAAA
; =========================================================

13DA4C:  PUSH            {R4-R7,LR}
13DA4E:  ADD             R7, SP, #0xC
13DA50:  PUSH.W          {R11}
13DA54:  VPUSH           {D8-D9}
13DA58:  LDRD.W          R5, R6, [R0,#0x44]
13DA5C:  CMP             R5, R6
13DA5E:  BEQ             loc_13DAA0
13DA60:  MOV             R4, R1
13DA62:  LDR             R1, [R0,#8]
13DA64:  VLDR            S0, [R0,#0x58]
13DA68:  VLDR            S4, [R1,#0x30]
13DA6C:  VLDR            S2, [R1,#0x18]
13DA70:  VSUB.F32        S16, S4, S0
13DA74:  VADD.F32        S18, S4, S2
13DA78:  LDR             R0, [R5]
13DA7A:  VLDR            S0, [R0,#0x30]
13DA7E:  VCMP.F32        S0, S16
13DA82:  VMRS            APSR_nzcv, FPSCR
13DA86:  BLT             loc_13DA9A
13DA88:  VCMP.F32        S0, S18
13DA8C:  VMRS            APSR_nzcv, FPSCR
13DA90:  BHI             loc_13DA9A
13DA92:  LDR             R1, [R0]
13DA94:  LDR             R2, [R1,#4]
13DA96:  MOV             R1, R4
13DA98:  BLX             R2
13DA9A:  ADDS            R5, #4
13DA9C:  CMP             R5, R6
13DA9E:  BNE             loc_13DA78
13DAA0:  VPOP            {D8-D9}
13DAA4:  POP.W           {R11}
13DAA8:  POP             {R4-R7,PC}
