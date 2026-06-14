; =========================================================
; Game Engine Function: sub_10514C
; Address            : 0x10514C - 0x105188
; =========================================================

10514C:  VLDR            S2, =-100.0
105150:  VMOV            S0, R1
105154:  VCMP.F32        S0, S2
105158:  VMRS            APSR_nzcv, FPSCR
10515C:  BLT             locret_105186
10515E:  VLDR            S2, =100.0
105162:  VCMP.F32        S0, S2
105166:  VMRS            APSR_nzcv, FPSCR
10516A:  BHI             locret_105186
10516C:  VCMP.F32        S0, S0
105170:  VMRS            APSR_nzcv, FPSCR
105174:  BVS             locret_105186
105176:  LDR             R0, [R0,#0x5C]
105178:  CMP             R0, #0
10517A:  IT EQ
10517C:  BXEQ            LR
10517E:  LDR.W           R0, [R0,#0x444]
105182:  VSTR            S0, [R0,#0x54]
105186:  BX              LR
