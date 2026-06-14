; =========================================================
; Game Engine Function: sub_A71AC
; Address            : 0xA71AC - 0xA72DE
; =========================================================

A71AC:  PUSH            {R4-R7,LR}
A71AE:  ADD             R7, SP, #0xC
A71B0:  PUSH.W          {R8}
A71B4:  SUB             SP, SP, #0x38; float
A71B6:  MOV             R4, R0
A71B8:  LDR             R0, =(off_114D5C - 0xA71C2)
A71BA:  LDR             R2, =(aScrolly - 0xA71C8); "#SCROLLY" ...
A71BC:  CMP             R4, #0
A71BE:  ADD             R0, PC; off_114D5C
A71C0:  MOV.W           R5, #0
A71C4:  ADD             R2, PC; "#SCROLLY"
A71C6:  LDR             R0, [R0]; dword_1ACF68
A71C8:  LDR             R0, [R0]
A71CA:  LDR             R1, =(aScrollx - 0xA71D2); "#SCROLLX" ...
A71CC:  LDR             R3, =(__stack_chk_guard_ptr - 0xA71D4)
A71CE:  ADD             R1, PC; "#SCROLLX"
A71D0:  ADD             R3, PC; __stack_chk_guard_ptr
A71D2:  LDR             R3, [R3]; __stack_chk_guard
A71D4:  LDR             R3, [R3]
A71D6:  STR             R3, [SP,#0x48+var_14]
A71D8:  MOVW            R3, #0x19AC
A71DC:  LDR             R6, [R0,R3]
A71DE:  IT NE
A71E0:  MOVNE           R1, R2
A71E2:  MOVS            R2, #0
A71E4:  MOV             R0, R6
A71E6:  BL              sub_8AEAC
A71EA:  MOV             R8, R0
A71EC:  BL              sub_8AE84
A71F0:  EOR.W           R2, R4, #1
A71F4:  ADD.W           R1, R6, #0x1E0
A71F8:  ADD.W           R0, R6, #0x70 ; 'p'
A71FC:  VLD1.32         {D16-D17}, [R1]
A7200:  ADD.W           R1, R0, R2,LSL#2
A7204:  ADD.W           R2, R0, R4,LSL#2
A7208:  ADD             R0, SP, #0x48+var_28
A720A:  VLDR            S0, [R6,#0xC]
A720E:  VLDR            S12, [R2]
A7212:  VLDR            S2, [R6,#0x10]
A7216:  VCMP.F32        S12, #0.0
A721A:  VLDR            S4, [R6,#0x14]
A721E:  VLDR            S6, [R6,#0x18]
A7222:  VLDR            S8, [R6,#0x40]
A7226:  VLDR            S10, [R1]
A722A:  VMRS            APSR_nzcv, FPSCR
A722E:  VST1.64         {D16-D17}, [R0]
A7232:  IT LS
A7234:  MOVLS           R5, #1
A7236:  LSLS            R1, R5, #3
A7238:  CBZ             R4, loc_A7268
A723A:  VADD.F32        S0, S0, S4
A723E:  LDR.W           R2, [R6,#0x1EC]
A7242:  STR             R2, [SP,#0x48+var_2C]
A7244:  LDR             R3, [SP,#0x48+var_24]
A7246:  STR             R3, [SP,#0x48+var_34]
A7248:  MOVS            R3, #2
A724A:  VSUB.F32        S2, S0, S8
A724E:  VSTR            S0, [SP,#0x48+var_30]
A7252:  LDR             R2, [R6,#8]
A7254:  BIC.W           R3, R3, R2,LSR#9
A7258:  LSLS            R2, R2, #0x1F
A725A:  VSUB.F32        S2, S2, S10
A725E:  VSTR            S2, [SP,#0x48+var_38]
A7262:  IT NE
A7264:  ORRNE           R1, R3
A7266:  B               loc_A7288
A7268:  VADD.F32        S0, S2, S6
A726C:  LDR             R2, [SP,#0x48+var_28]
A726E:  LDR             R3, [SP,#0x48+var_20]
A7270:  ORR.W           R1, R1, #4
A7274:  STR             R2, [SP,#0x48+var_38]
A7276:  STR             R3, [SP,#0x48+var_30]
A7278:  VSUB.F32        S2, S0, S8
A727C:  VSTR            S0, [SP,#0x48+var_2C]
A7280:  VSUB.F32        S2, S2, S10
A7284:  VSTR            S2, [SP,#0x48+var_34]
A7288:  ADD.W           R2, R6, R4,LSL#2
A728C:  ADD.W           R0, R0, R4,LSL#2
A7290:  ADD.W           R3, R2, #0x50 ; 'P'; int
A7294:  VLDR            S2, [R2,#0x34]
A7298:  VLDR            S0, [R2,#0x24]
A729C:  MOV             R2, R4; int
A729E:  VADD.F32        S2, S2, S2
A72A2:  VLDR            S4, [R0]
A72A6:  VLDR            S6, [R0,#8]
A72AA:  ADD             R0, SP, #0x48+var_38; int
A72AC:  STR             R1, [SP,#0x48+var_40]; int
A72AE:  MOV             R1, R8; int
A72B0:  VSUB.F32        S4, S6, S4
A72B4:  VADD.F32        S0, S2, S0
A72B8:  VSTR            S4, [SP,#0x48+var_48]
A72BC:  VSTR            S0, [SP,#0x48+var_44]
A72C0:  BL              sub_A6D44
A72C4:  LDR             R0, [SP,#0x48+var_14]
A72C6:  LDR             R1, =(__stack_chk_guard_ptr - 0xA72CC)
A72C8:  ADD             R1, PC; __stack_chk_guard_ptr
A72CA:  LDR             R1, [R1]; __stack_chk_guard
A72CC:  LDR             R1, [R1]
A72CE:  CMP             R1, R0
A72D0:  ITTT EQ
A72D2:  ADDEQ           SP, SP, #0x38 ; '8'
A72D4:  POPEQ.W         {R8}
A72D8:  POPEQ           {R4-R7,PC}
A72DA:  BLX             __stack_chk_fail
