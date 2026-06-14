; =========================================================
; Game Engine Function: sub_10C0B8
; Address            : 0x10C0B8 - 0x10C268
; =========================================================

10C0B8:  PUSH            {R4-R7,LR}
10C0BA:  ADD             R7, SP, #0xC
10C0BC:  PUSH.W          {R8-R11}
10C0C0:  SUB             SP, SP, #4
10C0C2:  LDR             R5, [R1,#4]
10C0C4:  MOV             R9, R1
10C0C6:  LDRH            R4, [R2]
10C0C8:  MOV             R11, R0
10C0CA:  CBZ             R5, loc_10C108
10C0CC:  MOV.W           R0, #0x55555555
10C0D0:  MOV.W           R1, #0x33333333
10C0D4:  AND.W           R0, R0, R5,LSR#1
10C0D8:  STR.W           R11, [SP,#0x20+var_20]
10C0DC:  SUBS            R0, R5, R0
10C0DE:  AND.W           R1, R1, R0,LSR#2
10C0E2:  BIC.W           R0, R0, #0xCCCCCCCC
10C0E6:  ADD             R0, R1
10C0E8:  MOV.W           R1, #0x1010101
10C0EC:  ADD.W           R0, R0, R0,LSR#4
10C0F0:  BIC.W           R0, R0, #0xF0F0F0F0
10C0F4:  MULS            R0, R1
10C0F6:  MOV.W           R11, R0,LSR#24
10C0FA:  CMP.W           R11, #1
10C0FE:  BHI             loc_10C10A
10C100:  SUBS            R0, R5, #1
10C102:  AND.W           R10, R0, R4
10C106:  B               loc_10C11A
10C108:  B               loc_10C160
10C10A:  CMP             R5, R4
10C10C:  MOV             R10, R4
10C10E:  BHI             loc_10C11A
10C110:  MOV             R0, R4
10C112:  MOV             R1, R5
10C114:  BLX             sub_221798
10C118:  MOV             R10, R1
10C11A:  LDR.W           R0, [R9]
10C11E:  LDR.W           R6, [R0,R10,LSL#2]
10C122:  CBZ             R6, loc_10C15C
10C124:  SUB.W           R8, R5, #1
10C128:  LDR             R6, [R6]
10C12A:  CBZ             R6, loc_10C15C
10C12C:  LDR             R0, [R6,#4]
10C12E:  CMP             R0, R4
10C130:  BEQ             loc_10C14E
10C132:  CMP.W           R11, #1
10C136:  BHI             loc_10C13E
10C138:  AND.W           R0, R0, R8
10C13C:  B               loc_10C14A
10C13E:  CMP             R0, R5
10C140:  BCC             loc_10C14A
10C142:  MOV             R1, R5
10C144:  BLX             sub_221798
10C148:  MOV             R0, R1
10C14A:  CMP             R0, R10
10C14C:  BNE             loc_10C15C
10C14E:  LDRH            R0, [R6,#8]
10C150:  CMP             R0, R4
10C152:  BNE             loc_10C128
10C154:  MOVS            R0, #0
10C156:  LDR.W           R11, [SP,#0x20+var_20]
10C15A:  B               loc_10C258
10C15C:  LDR.W           R11, [SP,#0x20+var_20]
10C160:  MOVS            R0, #0x14; unsigned int
10C162:  LDR.W           R8, [R7,#arg_0]
10C166:  BLX             j__Znwj; operator new(uint)
10C16A:  MOV             R6, R0
10C16C:  STR             R4, [R0,#4]
10C16E:  LDR.W           R0, [R9,#0xC]
10C172:  LDR.W           R1, [R8]
10C176:  ADD.W           R0, R0, #1
10C17A:  VLDR            S0, [R9,#0x10]
10C17E:  VMOV            S2, R0
10C182:  LDRH            R0, [R1]
10C184:  MOV.W           R1, #0
10C188:  STRH            R0, [R6,#8]
10C18A:  VCVT.F32.U32    S2, S2
10C18E:  STR             R1, [R6]
10C190:  STRD.W          R1, R1, [R6,#0xC]
10C194:  CBZ             R5, loc_10C1B0
10C196:  VMOV            S4, R5
10C19A:  VCVT.F32.U32    S4, S4
10C19E:  VMUL.F32        S4, S0, S4
10C1A2:  VCMP.F32        S4, S2
10C1A6:  VMRS            APSR_nzcv, FPSCR
10C1AA:  BMI             loc_10C1B0
10C1AC:  MOV             R4, R10
10C1AE:  B               loc_10C208
10C1B0:  MOV.W           R8, R5,LSL#1
10C1B4:  CMP             R5, #3
10C1B6:  BCC             loc_10C1C2
10C1B8:  SUBS            R0, R5, #1
10C1BA:  ANDS            R5, R0
10C1BC:  IT NE
10C1BE:  MOVNE           R5, #1
10C1C0:  B               loc_10C1C4
10C1C2:  MOVS            R5, #1
10C1C4:  VDIV.F32        S0, S2, S0
10C1C8:  VMOV            R0, S0; x
10C1CC:  BLX             ceilf
10C1D0:  VMOV            S0, R0
10C1D4:  ORR.W           R1, R5, R8
10C1D8:  VCVT.U32.F32    S0, S0
10C1DC:  VMOV            R0, S0
10C1E0:  CMP             R1, R0
10C1E2:  IT CC
10C1E4:  MOVCC           R1, R0; this
10C1E6:  MOV             R0, R9; int
10C1E8:  BL              sub_10C272
10C1EC:  LDR.W           R5, [R9,#4]
10C1F0:  SUBS            R0, R5, #1
10C1F2:  TST             R5, R0
10C1F4:  BNE             loc_10C1FA
10C1F6:  ANDS            R4, R0
10C1F8:  B               loc_10C208
10C1FA:  CMP             R5, R4
10C1FC:  BHI             loc_10C208
10C1FE:  MOV             R0, R4
10C200:  MOV             R1, R5
10C202:  BLX             sub_221798
10C206:  MOV             R4, R1
10C208:  LDR.W           R0, [R9]
10C20C:  LDR.W           R1, [R0,R4,LSL#2]
10C210:  CBZ             R1, loc_10C21A
10C212:  LDR             R0, [R1]
10C214:  STR             R0, [R6]
10C216:  STR             R6, [R1]
10C218:  B               loc_10C24C
10C21A:  MOV             R1, R9
10C21C:  LDR.W           R2, [R1,#8]!
10C220:  STR             R2, [R6]
10C222:  STR             R6, [R1]
10C224:  STR.W           R1, [R0,R4,LSL#2]
10C228:  LDR             R0, [R6]
10C22A:  CBZ             R0, loc_10C24C
10C22C:  LDR             R0, [R0,#4]
10C22E:  SUBS            R1, R5, #1
10C230:  TST             R5, R1
10C232:  BNE             loc_10C238
10C234:  ANDS            R0, R1
10C236:  B               loc_10C244
10C238:  CMP             R0, R5
10C23A:  BCC             loc_10C244
10C23C:  MOV             R1, R5
10C23E:  BLX             sub_221798
10C242:  MOV             R0, R1
10C244:  LDR.W           R1, [R9]
10C248:  STR.W           R6, [R1,R0,LSL#2]
10C24C:  LDR.W           R0, [R9,#0xC]
10C250:  ADDS            R0, #1
10C252:  STR.W           R0, [R9,#0xC]
10C256:  MOVS            R0, #1
10C258:  STRB.W          R0, [R11,#4]
10C25C:  STR.W           R6, [R11]
10C260:  ADD             SP, SP, #4
10C262:  POP.W           {R8-R11}
10C266:  POP             {R4-R7,PC}
