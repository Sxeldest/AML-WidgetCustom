; =========================================================
; Game Engine Function: sub_478208
; Address            : 0x478208 - 0x4782F2
; =========================================================

478208:  PUSH            {R4-R7,LR}
47820A:  ADD             R7, SP, #0xC
47820C:  PUSH.W          {R8-R11}
478210:  SUB             SP, SP, #0x24
478212:  MOV             R4, R0
478214:  ADD             R5, SP, #0x40+var_30
478216:  LDR.W           R2, [R4,#0x15C]
47821A:  LDR             R0, [R4,#0x18]
47821C:  ADD.W           R8, R2, #0x14
478220:  VLD1.32         {D16-D17}, [R8]
478224:  LDRD.W          R12, R3, [R2,#0xC]
478228:  CMP             R3, #1
47822A:  LDRD.W          R6, R0, [R0]
47822E:  VST1.64         {D16-D17}, [R5]
478232:  BLT             loc_4782B2
478234:  RSB.W           R1, R3, #0x11
478238:  STRD.W          R8, R2, [SP,#0x40+var_38]
47823C:  MOVS            R2, #0x7F
47823E:  ADD.W           R10, R3, #0xF
478242:  LSL.W           R1, R2, R1
478246:  ORR.W           R9, R1, R12
47824A:  MOVS            R5, #0
47824C:  STR.W           R12, [SP,#0x40+var_3C]
478250:  STR             R3, [SP,#0x40+var_40]
478252:  MOV.W           R1, R9,LSR#16
478256:  SUBS            R0, #1
478258:  STRB.W          R1, [R6],#1
47825C:  UBFX.W          R11, R9, #0x10, #8
478260:  BNE             loc_478274
478262:  LDR.W           R8, [R4,#0x18]
478266:  MOV             R0, R4
478268:  LDR.W           R1, [R8,#0xC]
47826C:  BLX             R1
47826E:  CBZ             R0, loc_4782BC
478270:  LDRD.W          R6, R0, [R8]
478274:  CMP.W           R11, #0xFF
478278:  ITT EQ
47827A:  STRBEQ.W        R5, [R6],#1
47827E:  SUBSEQ.W        R0, R0, #1
478282:  BNE             loc_478294
478284:  LDR             R5, [R4,#0x18]
478286:  MOV             R0, R4
478288:  LDR             R1, [R5,#0xC]
47828A:  BLX             R1
47828C:  CBZ             R0, loc_4782BC
47828E:  LDRD.W          R6, R0, [R5]
478292:  MOVS            R5, #0
478294:  SUB.W           R10, R10, #8
478298:  MOV.W           R9, R9,LSL#8
47829C:  CMP.W           R10, #0xF
4782A0:  BGT             loc_478252
4782A2:  MOV.W           R12, #0
4782A6:  MOV.W           LR, #0
4782AA:  LDRD.W          R8, R2, [SP,#0x40+var_38]
4782AE:  ADD             R5, SP, #0x40+var_30
4782B0:  B               loc_4782D6
4782B2:  MOV.W           R12, #0
4782B6:  MOV.W           LR, #0
4782BA:  B               loc_4782D6
4782BC:  LDR             R0, [R4]
4782BE:  MOVS            R1, #0x18
4782C0:  STR             R1, [R0,#0x14]
4782C2:  LDR             R0, [R4]
4782C4:  LDR             R1, [R0]
4782C6:  MOV             R0, R4
4782C8:  BLX             R1
4782CA:  LDRD.W          R8, R2, [SP,#0x40+var_38]
4782CE:  ADD             R5, SP, #0x40+var_30
4782D0:  LDRD.W          LR, R12, [SP,#0x40+var_40]
4782D4:  MOVS            R0, #0
4782D6:  LDR             R1, [R4,#0x18]
4782D8:  STR             R6, [R1]
4782DA:  LDR             R1, [R4,#0x18]
4782DC:  STR             R0, [R1,#4]
4782DE:  STRD.W          R12, LR, [R2,#0xC]
4782E2:  VLD1.64         {D16-D17}, [R5]
4782E6:  VST1.32         {D16-D17}, [R8]
4782EA:  ADD             SP, SP, #0x24 ; '$'
4782EC:  POP.W           {R8-R11}
4782F0:  POP             {R4-R7,PC}
