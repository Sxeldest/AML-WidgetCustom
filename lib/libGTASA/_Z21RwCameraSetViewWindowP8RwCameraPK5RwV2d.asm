; =========================================================
; Game Engine Function: _Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d
; Address            : 0x1D5E84 - 0x1D5EE0
; =========================================================

1D5E84:  PUSH            {R4,R6,R7,LR}
1D5E86:  ADD             R7, SP, #8
1D5E88:  VLDR            S0, [R1]
1D5E8C:  MOV             R4, R0
1D5E8E:  VCMP.F32        S0, #0.0
1D5E92:  VMRS            APSR_nzcv, FPSCR
1D5E96:  BNE             loc_1D5EAE
1D5E98:  VLDR            S0, [R1,#4]
1D5E9C:  VCMP.F32        S0, #0.0
1D5EA0:  VMRS            APSR_nzcv, FPSCR
1D5EA4:  ITT EQ
1D5EA6:  MOVEQ.W         R0, #0x3F800000
1D5EAA:  STRDEQ.W        R0, R0, [R1]
1D5EAE:  VMOV.F32        S0, #1.0
1D5EB2:  LDRD.W          R2, R1, [R1]
1D5EB6:  VMOV            S4, R1
1D5EBA:  LDR             R0, [R4,#4]
1D5EBC:  STRD.W          R2, R1, [R4,#0x68]
1D5EC0:  VMOV            S2, R2
1D5EC4:  CMP             R0, #0
1D5EC6:  VDIV.F32        S2, S0, S2
1D5ECA:  VDIV.F32        S0, S0, S4
1D5ECE:  VSTR            S2, [R4,#0x70]
1D5ED2:  VSTR            S0, [R4,#0x74]
1D5ED6:  IT NE
1D5ED8:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
1D5EDC:  MOV             R0, R4
1D5EDE:  POP             {R4,R6,R7,PC}
