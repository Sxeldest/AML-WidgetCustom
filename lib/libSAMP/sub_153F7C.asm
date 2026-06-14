; =========================================================
; Game Engine Function: sub_153F7C
; Address            : 0x153F7C - 0x15406E
; =========================================================

153F7C:  PUSH            {R4,R5,R7,LR}
153F7E:  ADD             R7, SP, #8
153F80:  VMOV.I32        Q8, #0
153F84:  ADDS            R4, R0, #4
153F86:  LDR             R5, =(off_234E54 - 0x153FA2)
153F88:  VMOV.F32        S4, #-1.0
153F8C:  STR             R1, [R0,#0x68]
153F8E:  ADD.W           R1, R0, #0xC
153F92:  STRD.W          R4, R4, [R0,#4]
153F96:  MOV.W           R4, #0x3F800000
153F9A:  VST1.32         {D16-D17}, [R1]!
153F9E:  ADD             R5, PC; off_234E54
153FA0:  STR             R4, [R0,#0x20]
153FA2:  MOVS            R4, #0
153FA4:  STR             R4, [R1]
153FA6:  ADD.W           R1, R0, #0x24 ; '$'
153FAA:  LDR.W           R12, [R5]; `vtable for'AudioChannelPoint3D ...
153FAE:  MOVS            R5, #0x14
153FB0:  VST1.32         {D16-D17}, [R1]!
153FB4:  VST1.32         {D16-D17}, [R1],R5
153FB8:  STRH            R4, [R1]
153FBA:  ADD.W           R1, R12, #8
153FBE:  STRD.W          R4, R4, [R0,#0x60]
153FC2:  STR             R1, [R0]
153FC4:  VLDR            D16, [R2]
153FC8:  LDR             R1, [R2,#8]
153FCA:  STR             R1, [R0,#0x74]
153FCC:  VSTR            D16, [R0,#0x6C]
153FD0:  VLDR            D16, [R3]
153FD4:  LDR             R1, [R3,#8]
153FD6:  LDR             R2, [R7,#arg_0]
153FD8:  STR.W           R1, [R0,#0x80]
153FDC:  VSTR            D16, [R0,#0x78]
153FE0:  VLDR            S0, [R0,#0x78]
153FE4:  VLDR            D16, [R2]
153FE8:  VCMP.F32        S0, S4
153FEC:  VLDR            S2, [R0,#0x7C]
153FF0:  LDR             R1, [R2,#8]
153FF2:  VMRS            APSR_nzcv, FPSCR
153FF6:  STR.W           R1, [R0,#0x8C]
153FFA:  VSTR            D16, [R0,#0x84]
153FFE:  BMI             loc_15403A
154000:  VMOV.F32        S6, #1.0
154004:  VCMP.F32        S0, S6
154008:  VMRS            APSR_nzcv, FPSCR
15400C:  BGT             loc_15403A
15400E:  VCMP.F32        S2, S4
154012:  VMRS            APSR_nzcv, FPSCR
154016:  BMI             loc_15403A
154018:  VCMP.F32        S2, S6
15401C:  VMRS            APSR_nzcv, FPSCR
154020:  BGT             loc_15403A
154022:  VLDR            S8, [R0,#0x80]
154026:  VCMP.F32        S8, S4
15402A:  VMRS            APSR_nzcv, FPSCR
15402E:  BMI             loc_15403A
154030:  VCMP.F32        S8, S6
154034:  VMRS            APSR_nzcv, FPSCR
154038:  BLE             loc_154066
15403A:  VMUL.F32        S4, S2, S2
15403E:  VLDR            S6, [R0,#0x80]
154042:  VMLA.F32        S4, S0, S0
154046:  VMLA.F32        S4, S6, S6
15404A:  VSQRT.F32       S4, S4
15404E:  VDIV.F32        S6, S6, S4
154052:  VDIV.F32        S2, S2, S4
154056:  VDIV.F32        S0, S0, S4
15405A:  VSTR            S0, [R0,#0x78]
15405E:  VSTR            S2, [R0,#0x7C]
154062:  VSTR            S6, [R0,#0x80]
154066:  MOVS            R1, #1
154068:  STRB.W          R1, [R0,#0x49]
15406C:  POP             {R4,R5,R7,PC}
