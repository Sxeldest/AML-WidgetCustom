; =========================================================
; Game Engine Function: _ZN8CCarCtrl24IsPoliceVehicleInPursuitEi
; Address            : 0x2FBF50 - 0x2FC076
; =========================================================

2FBF50:  PUSH            {R4-R7,LR}
2FBF52:  ADD             R7, SP, #0xC
2FBF54:  PUSH.W          {R8-R11}
2FBF58:  SUB             SP, SP, #4
2FBF5A:  VPUSH           {D8}
2FBF5E:  SUB             SP, SP, #0x10
2FBF60:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2FBF66)
2FBF62:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2FBF64:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
2FBF66:  LDR             R5, [R1]; CPools::ms_pVehiclePool
2FBF68:  LDR             R1, [R5,#8]
2FBF6A:  CMP             R1, #0
2FBF6C:  BEQ.W           loc_2FC062
2FBF70:  VMOV            S0, R0
2FBF74:  MOVW            R9, #0xA2C
2FBF78:  MUL.W           R4, R1, R9
2FBF7C:  ADD             R0, SP, #0x38+var_34
2FBF7E:  VCVT.F32.S32    S16, S0
2FBF82:  MOVW            R11, #0xFA00
2FBF86:  SUBS            R6, R1, #1
2FBF88:  ADD.W           R10, R0, #4
2FBF8C:  MOVT            R11, #0xFFFF
2FBF90:  LDR             R0, [R5,#4]
2FBF92:  LDRSB           R0, [R0,R6]
2FBF94:  CMP             R0, #0
2FBF96:  BLT.W           def_2FBFC4; jumptable 002FBFC4 default case, cases 7-20,22,24,25,27-34,36-39,41,42,45-58,60-63
2FBF9A:  LDR             R0, [R5]
2FBF9C:  ADD.W           R8, R0, R4
2FBFA0:  CMP             R8, R9
2FBFA2:  ITT NE
2FBFA4:  LDRBNE.W        R0, [R8,R11]
2FBFA8:  MOVSNE.W        R0, R0,LSL#31
2FBFAC:  BEQ.W           def_2FBFC4; jumptable 002FBFC4 default case, cases 7-20,22,24,25,27-34,36-39,41,42,45-58,60-63
2FBFB0:  MOV             R0, #0xFFFFF992
2FBFB8:  LDRSB.W         R0, [R8,R0]
2FBFBC:  SUBS            R0, #2; switch 63 cases
2FBFBE:  CMP             R0, #0x3E ; '>'
2FBFC0:  BHI.W           def_2FBFC4; jumptable 002FBFC4 default case, cases 7-20,22,24,25,27-34,36-39,41,42,45-58,60-63
2FBFC4:  TBB.W           [PC,R0]; switch jump
2FBFC8:  DCB 0x20; jump table for switch statement
2FBFC9:  DCB 0x20
2FBFCA:  DCB 0x20
2FBFCB:  DCB 0x20
2FBFCC:  DCB 0x20
2FBFCD:  DCB 0x47
2FBFCE:  DCB 0x47
2FBFCF:  DCB 0x47
2FBFD0:  DCB 0x47
2FBFD1:  DCB 0x47
2FBFD2:  DCB 0x47
2FBFD3:  DCB 0x47
2FBFD4:  DCB 0x47
2FBFD5:  DCB 0x47
2FBFD6:  DCB 0x47
2FBFD7:  DCB 0x47
2FBFD8:  DCB 0x47
2FBFD9:  DCB 0x47
2FBFDA:  DCB 0x47
2FBFDB:  DCB 0x20
2FBFDC:  DCB 0x47
2FBFDD:  DCB 0x20
2FBFDE:  DCB 0x47
2FBFDF:  DCB 0x47
2FBFE0:  DCB 0x20
2FBFE1:  DCB 0x47
2FBFE2:  DCB 0x47
2FBFE3:  DCB 0x47
2FBFE4:  DCB 0x47
2FBFE5:  DCB 0x47
2FBFE6:  DCB 0x47
2FBFE7:  DCB 0x47
2FBFE8:  DCB 0x47
2FBFE9:  DCB 0x20
2FBFEA:  DCB 0x47
2FBFEB:  DCB 0x47
2FBFEC:  DCB 0x47
2FBFED:  DCB 0x47
2FBFEE:  DCB 0x20
2FBFEF:  DCB 0x47
2FBFF0:  DCB 0x47
2FBFF1:  DCB 0x20
2FBFF2:  DCB 0x20
2FBFF3:  DCB 0x47
2FBFF4:  DCB 0x47
2FBFF5:  DCB 0x47
2FBFF6:  DCB 0x47
2FBFF7:  DCB 0x47
2FBFF8:  DCB 0x47
2FBFF9:  DCB 0x47
2FBFFA:  DCB 0x47
2FBFFB:  DCB 0x47
2FBFFC:  DCB 0x47
2FBFFD:  DCB 0x47
2FBFFE:  DCB 0x47
2FBFFF:  DCB 0x47
2FC000:  DCB 0x47
2FC001:  DCB 0x20
2FC002:  DCB 0x47
2FC003:  DCB 0x47
2FC004:  DCB 0x47
2FC005:  DCB 0x47
2FC006:  DCB 0x20
2FC007:  ALIGN 2
2FC008:  ADD             R0, SP, #0x38+var_34; jumptable 002FBFC4 cases 2-6,21,23,26,35,40,43,44,59,64
2FC00A:  MOV.W           R1, #0xFFFFFFFF
2FC00E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2FC012:  SUBW            R0, R8, #0xA28
2FC016:  VLDR            S0, [SP,#0x38+var_34]
2FC01A:  LDR             R1, [R0,#0x10]
2FC01C:  CMP             R1, #0
2FC01E:  IT NE
2FC020:  ADDNE.W         R0, R1, #0x30 ; '0'
2FC024:  VLDR            D16, [R10]
2FC028:  VLDR            S2, [R0]
2FC02C:  VLDR            D17, [R0,#4]
2FC030:  VSUB.F32        S0, S0, S2
2FC034:  VSUB.F32        D16, D16, D17
2FC038:  VMUL.F32        D1, D16, D16
2FC03C:  VMUL.F32        S0, S0, S0
2FC040:  VADD.F32        S0, S0, S2
2FC044:  VADD.F32        S0, S0, S3
2FC048:  VSQRT.F32       S0, S0
2FC04C:  VCMPE.F32       S0, S16
2FC050:  VMRS            APSR_nzcv, FPSCR
2FC054:  BLE             loc_2FC072
2FC056:  SUBS            R6, #1; jumptable 002FBFC4 default case, cases 7-20,22,24,25,27-34,36-39,41,42,45-58,60-63
2FC058:  SUBW            R4, R4, #0xA2C
2FC05C:  ADDS            R0, R6, #1
2FC05E:  BNE.W           loc_2FBF90
2FC062:  MOVS            R0, #0
2FC064:  ADD             SP, SP, #0x10
2FC066:  VPOP            {D8}
2FC06A:  ADD             SP, SP, #4
2FC06C:  POP.W           {R8-R11}
2FC070:  POP             {R4-R7,PC}
2FC072:  MOVS            R0, #1
2FC074:  B               loc_2FC064
