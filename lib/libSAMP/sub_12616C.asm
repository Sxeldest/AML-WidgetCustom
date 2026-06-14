; =========================================================
; Game Engine Function: sub_12616C
; Address            : 0x12616C - 0x126240
; =========================================================

12616C:  PUSH            {R4-R7,LR}
12616E:  ADD             R7, SP, #0xC
126170:  PUSH.W          {R8-R11}
126174:  SUB             SP, SP, #4
126176:  MOV             R8, R0
126178:  LDR             R0, =(off_263DB8 - 0x12617E)
12617A:  ADD             R0, PC; off_263DB8
12617C:  LDR             R2, [R0]
12617E:  MOV             R0, R8
126180:  BLX             R2
126182:  LDR.W           R1, [R8]
126186:  CMP             R1, #0xA
126188:  IT NE
12618A:  CMPNE           R1, #4
12618C:  BNE             loc_126238
12618E:  MOV             R10, R8
126190:  STR             R0, [SP,#0x20+var_20]
126192:  LDR.W           R0, [R10,#4]!
126196:  MOVS            R6, #0x6C ; 'l'
126198:  LDR             R5, =(unk_263D28 - 0x1261A2)
12619A:  UBFX.W          R9, R0, #8, #8
12619E:  ADD             R5, PC; unk_263D28
1261A0:  UXTB.W          R11, R0
1261A4:  ADDS            R4, R5, R6
1261A6:  MOV             R0, R10; s1
1261A8:  MOVS            R2, #0x14; n
1261AA:  MOV             R1, R4; s2
1261AC:  BLX             memcmp
1261B0:  CBZ             R0, loc_1261BC
1261B2:  SUBS            R6, #0x24 ; '$'
1261B4:  ADDS.W          R0, R6, #0x24 ; '$'
1261B8:  BNE             loc_1261A4
1261BA:  MOV             R4, R10
1261BC:  CMP.W           R11, #3
1261C0:  BEQ             loc_1261EE
1261C2:  CMP.W           R9, #3
1261C6:  BHI             loc_1261EE
1261C8:  ADD.W           R0, R4, R9,LSL#3
1261CC:  MOV             R1, R9
1261CE:  VLDR            S0, [R0,#4]
1261D2:  VLDR            S2, [R0,#8]
1261D6:  MOV             R0, R11
1261D8:  VCVT.S32.F32    S0, S0
1261DC:  VCVT.S32.F32    S2, S2
1261E0:  VMOV            R2, S0
1261E4:  VMOV            R3, S2
1261E8:  BL              sub_FD040
1261EC:  B               loc_12622E
1261EE:  ADDS            R5, R4, #4
1261F0:  CMP             R4, R10
1261F2:  MOV.W           R6, #4
1261F6:  MOV.W           R4, #0
1261FA:  IT EQ
1261FC:  MOVEQ           R6, #2
1261FE:  VLDR            S0, [R5]
126202:  VLDR            S2, [R5,#4]
126206:  VCVT.S32.F32    S0, S0
12620A:  VCVT.S32.F32    S2, S2
12620E:  VMOV            R2, S0
126212:  VMOV            R3, S2
126216:  CMP             R2, #0
126218:  BGT             loc_12621E
12621A:  CMP             R3, #1
12621C:  BLT             loc_126226
12621E:  MOV             R0, R11
126220:  MOV             R1, R4
126222:  BL              sub_FD040
126226:  ADDS            R4, #1
126228:  ADDS            R5, #8
12622A:  CMP             R6, R4
12622C:  BNE             loc_1261FE
12622E:  MOV             R0, #0x7FFFFFFF
126232:  STR.W           R0, [R8]
126236:  LDR             R0, [SP,#0x20+var_20]
126238:  ADD             SP, SP, #4
12623A:  POP.W           {R8-R11}
12623E:  POP             {R4-R7,PC}
