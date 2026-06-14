; =========================================================
; Game Engine Function: sub_14A408
; Address            : 0x14A408 - 0x14A4D0
; =========================================================

14A408:  PUSH            {R4-R7,LR}
14A40A:  ADD             R7, SP, #0xC
14A40C:  PUSH.W          {R8}
14A410:  SUB             SP, SP, #0x28
14A412:  MOV             R5, R0
14A414:  LDR             R0, =(off_23496C - 0x14A41E)
14A416:  MOV             R6, R1
14A418:  LDRH            R1, [R5,#0x14]
14A41A:  ADD             R0, PC; off_23496C
14A41C:  LDR             R0, [R0]; dword_23DEF4
14A41E:  LDR             R0, [R0]
14A420:  LDR.W           R0, [R0,#0x3B0]
14A424:  LDR             R0, [R0]
14A426:  BL              sub_148E64
14A42A:  MOV             R4, R0
14A42C:  LDRH            R0, [R5,#0x14]
14A42E:  BL              sub_107158
14A432:  MOV             R5, R0
14A434:  LDR             R0, =(off_234A24 - 0x14A43A)
14A436:  ADD             R0, PC; off_234A24
14A438:  LDR             R0, [R0]; dword_23DEEC
14A43A:  LDR             R0, [R0]
14A43C:  CMP             R0, #0
14A43E:  BEQ             loc_14A4C8
14A440:  LDR.W           R8, [R0,#0x60]
14A444:  MOV             R0, R6; s
14A446:  BLX             strlen
14A44A:  MOV             R2, R0
14A44C:  ADD             R0, SP, #0x38+var_1C
14A44E:  MOV             R1, R6
14A450:  BL              sub_164D04
14A454:  ADD             R0, SP, #0x38+var_28; int
14A456:  MOV             R1, R4; s
14A458:  BL              sub_DC6DC
14A45C:  UBFX.W          R0, R5, #8, #8
14A460:  UBFX.W          R1, R5, #0x10, #8
14A464:  VLDR            S6, =0.0039216
14A468:  VMOV            S0, R0
14A46C:  LSRS            R0, R5, #0x18
14A46E:  VMOV            S4, R0
14A472:  MOV.W           R0, #0x3F800000
14A476:  VMOV            S2, R1
14A47A:  STR             R0, [SP,#0x38+var_2C]
14A47C:  VCVT.F32.S32    S0, S0
14A480:  VCVT.F32.S32    S2, S2
14A484:  VCVT.F32.S32    S4, S4
14A488:  VMUL.F32        S0, S0, S6
14A48C:  VMUL.F32        S2, S2, S6
14A490:  VMUL.F32        S4, S4, S6
14A494:  VSTR            S0, [SP,#0x38+var_30]
14A498:  VSTR            S2, [SP,#0x38+var_34]
14A49C:  VSTR            S4, [SP,#0x38+var_38]
14A4A0:  ADD             R1, SP, #0x38+var_1C
14A4A2:  ADD             R2, SP, #0x38+var_28
14A4A4:  MOV             R3, SP
14A4A6:  MOV             R0, R8
14A4A8:  BL              sub_12D258
14A4AC:  LDRB.W          R0, [SP,#0x38+var_28]
14A4B0:  LSLS            R0, R0, #0x1F
14A4B2:  ITT NE
14A4B4:  LDRNE           R0, [SP,#0x38+var_20]; void *
14A4B6:  BLXNE           j__ZdlPv; operator delete(void *)
14A4BA:  LDRB.W          R0, [SP,#0x38+var_1C]
14A4BE:  LSLS            R0, R0, #0x1F
14A4C0:  ITT NE
14A4C2:  LDRNE           R0, [SP,#0x38+var_14]; void *
14A4C4:  BLXNE           j__ZdlPv; operator delete(void *)
14A4C8:  ADD             SP, SP, #0x28 ; '('
14A4CA:  POP.W           {R8}
14A4CE:  POP             {R4-R7,PC}
