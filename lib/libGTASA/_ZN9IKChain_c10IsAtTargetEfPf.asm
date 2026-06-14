; =========================================================
; Game Engine Function: _ZN9IKChain_c10IsAtTargetEfPf
; Address            : 0x4D2F1C - 0x4D2F9E
; =========================================================

4D2F1C:  PUSH            {R4,R5,R7,LR}
4D2F1E:  ADD             R7, SP, #8
4D2F20:  VPUSH           {D8}
4D2F24:  SUB             SP, SP, #0x10
4D2F26:  MOV             R4, R0
4D2F28:  MOV             R5, R2
4D2F2A:  LDR             R0, [R4,#0x10]
4D2F2C:  VMOV            S16, R1
4D2F30:  VLDR            S6, [R4,#0x48]
4D2F34:  VLDR            S8, [R4,#0x4C]
4D2F38:  LDR             R0, [R0]
4D2F3A:  VLDR            S10, [R4,#0x50]
4D2F3E:  VLDR            S0, [R0,#0x6C]
4D2F42:  VLDR            S2, [R0,#0x70]
4D2F46:  VSUB.F32        S0, S6, S0
4D2F4A:  VLDR            S4, [R0,#0x74]
4D2F4E:  ADD             R0, SP, #0x20+var_1C
4D2F50:  VSTR            S0, [SP,#0x20+var_1C]
4D2F54:  VSUB.F32        S0, S8, S2
4D2F58:  VSTR            S0, [SP,#0x20+var_18]
4D2F5C:  VSUB.F32        S0, S10, S4
4D2F60:  VSTR            S0, [SP,#0x20+var_14]
4D2F64:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
4D2F68:  VMOV            S0, R0
4D2F6C:  CMP             R5, #0
4D2F6E:  VCMPE.F32       S0, S16
4D2F72:  IT NE
4D2F74:  VSTRNE          S0, [R5]
4D2F78:  VMRS            APSR_nzcv, FPSCR
4D2F7C:  BGT             loc_4D2F94
4D2F7E:  VLDR            S0, =0.98
4D2F82:  VLDR            S2, [R4,#0x18]
4D2F86:  VCMPE.F32       S2, S0
4D2F8A:  VMRS            APSR_nzcv, FPSCR
4D2F8E:  BLE             loc_4D2F94
4D2F90:  MOVS            R0, #1
4D2F92:  B               loc_4D2F96
4D2F94:  MOVS            R0, #0
4D2F96:  ADD             SP, SP, #0x10
4D2F98:  VPOP            {D8}
4D2F9C:  POP             {R4,R5,R7,PC}
