; =========================================================
; Game Engine Function: _ZN10FxSystem_c4PlayEv
; Address            : 0x36E0D0 - 0x36E188
; =========================================================

36E0D0:  PUSH            {R4-R7,LR}
36E0D2:  ADD             R7, SP, #0xC
36E0D4:  PUSH.W          {R11}
36E0D8:  VPUSH           {D8}
36E0DC:  MOV             R4, R0
36E0DE:  LDRB.W          R0, [R4,#0x54]
36E0E2:  MOV             R5, R4
36E0E4:  CMP             R0, #2
36E0E6:  BNE             loc_36E0EE
36E0E8:  LDR.W           R0, [R5,#8]!
36E0EC:  B               loc_36E118
36E0EE:  LDR.W           R0, [R5,#8]!
36E0F2:  MOVS            R1, #0
36E0F4:  STR             R1, [R5,#0x50]
36E0F6:  LDRSB.W         R1, [R0,#0x1B]
36E0FA:  CMP             R1, #1
36E0FC:  BLT             loc_36E118
36E0FE:  MOVS            R6, #0
36E100:  LDR             R0, [R4,#0x7C]
36E102:  LDR.W           R0, [R0,R6,LSL#2]
36E106:  LDR             R1, [R0]
36E108:  LDR             R1, [R1,#0x10]
36E10A:  BLX             R1
36E10C:  LDR             R0, [R4,#8]
36E10E:  ADDS            R6, #1
36E110:  LDRSB.W         R1, [R0,#0x1B]
36E114:  CMP             R6, R1
36E116:  BLT             loc_36E100
36E118:  MOVS            R1, #0
36E11A:  STRH.W          R1, [R4,#0x54]
36E11E:  VLDR            S16, [R0,#0x10]
36E122:  BLX             rand
36E126:  MOVW            R1, #0x8BAD
36E12A:  VLDR            S2, =0.0001
36E12E:  MOVT            R1, #0x68DB
36E132:  VLDR            S6, =0.0
36E136:  SMMUL.W         R1, R0, R1
36E13A:  ASRS            R2, R1, #0xC
36E13C:  ADD.W           R1, R2, R1,LSR#31
36E140:  MOVW            R2, #0x2710
36E144:  MLS.W           R0, R1, R2, R0
36E148:  VMOV            S0, R0
36E14C:  VCVT.F32.S32    S0, S0
36E150:  LDR             R0, [R5]
36E152:  VLDR            S4, [R0,#0x14]
36E156:  VMUL.F32        S0, S0, S2
36E15A:  VLDR            S2, [R0,#0x10]
36E15E:  LDRB.W          R0, [R4,#0x66]
36E162:  VSUB.F32        S2, S4, S2
36E166:  AND.W           R0, R0, #0xE7
36E16A:  STRB.W          R0, [R4,#0x66]
36E16E:  VADD.F32        S0, S0, S6
36E172:  VMUL.F32        S0, S0, S2
36E176:  VADD.F32        S0, S16, S0
36E17A:  VSTR            S0, [R4,#0x68]
36E17E:  VPOP            {D8}
36E182:  POP.W           {R11}
36E186:  POP             {R4-R7,PC}
