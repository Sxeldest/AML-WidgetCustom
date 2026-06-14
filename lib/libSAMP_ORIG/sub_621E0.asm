; =========================================================
; Game Engine Function: sub_621E0
; Address            : 0x621E0 - 0x623A6
; =========================================================

621E0:  PUSH            {R4-R7,LR}
621E2:  ADD             R7, SP, #0xC
621E4:  PUSH.W          {R8,R9,R11}
621E8:  SUB             SP, SP, #0x10
621EA:  MOV             R9, R0
621EC:  LDR             R0, =(__stack_chk_guard_ptr - 0x621F6)
621EE:  MOV             R4, R3
621F0:  MOV             R5, R2
621F2:  ADD             R0, PC; __stack_chk_guard_ptr
621F4:  MOV             R8, R1
621F6:  LDR             R0, [R0]; __stack_chk_guard
621F8:  LDR             R0, [R0]
621FA:  STR             R0, [SP,#0x28+var_1C]
621FC:  BL              sub_8C514
62200:  LDR             R1, =(byte_1A3A01 - 0x62206)
62202:  ADD             R1, PC; byte_1A3A01
62204:  LDRB            R1, [R1]
62206:  CMP             R1, #0
62208:  BEQ.W           loc_6238C
6220C:  VLDR            S0, [R0,#8]
62210:  VMOV            S6, R5
62214:  VLDR            S2, [R0,#0xC]
62218:  VCVT.S32.F32    S4, S0
6221C:  VCVT.S32.F32    S2, S2
62220:  VCVT.F32.S32    S0, S6
62224:  VMOV            R1, S4
62228:  VMOV            R6, S2
6222C:  SUBS            R1, #0x64 ; 'd'
6222E:  SUB.W           R2, R6, #0xDC
62232:  VMOV            S6, R1
62236:  MOVS            R1, #0
62238:  VCVT.F32.S32    S6, S6
6223C:  VCMP.F32        S6, S0
62240:  VMRS            APSR_nzcv, FPSCR
62244:  BHI             loc_62288
62246:  VCVT.F32.S32    S4, S4
6224A:  MOVS            R3, #0
6224C:  VCMP.F32        S4, S0
62250:  VMRS            APSR_nzcv, FPSCR
62254:  BLT             loc_6228A
62256:  SUB.W           R3, R6, #0x32 ; '2'
6225A:  VMOV            S4, R4
6225E:  VMOV            S6, R3
62262:  MOVS            R3, #0
62264:  VCVT.F32.S32    S4, S4
62268:  VCVT.F32.S32    S6, S6
6226C:  VCMP.F32        S6, S4
62270:  VMRS            APSR_nzcv, FPSCR
62274:  BHI             loc_6228A
62276:  VCVT.F32.S32    S2, S2
6227A:  VCMP.F32        S2, S4
6227E:  VMRS            APSR_nzcv, FPSCR
62282:  IT GE
62284:  MOVGE           R3, #1
62286:  B               loc_6228A
62288:  MOVS            R3, #0
6228A:  LDR             R6, =(byte_1A39F8 - 0x62292)
6228C:  CMP             R2, R4
6228E:  ADD             R6, PC; byte_1A39F8
62290:  LDRB            R6, [R6]
62292:  IT GE
62294:  MOVGE           R1, #1
62296:  CLZ.W           R2, R6
6229A:  LSRS            R2, R2, #5
6229C:  ORRS            R1, R2
6229E:  ORRS            R1, R3
622A0:  CMP             R1, #1
622A2:  BNE             loc_6238C
622A4:  LDR             R1, =(byte_1A39F9 - 0x622AA)
622A6:  ADD             R1, PC; byte_1A39F9
622A8:  LDRB            R1, [R1]
622AA:  CMP             R1, #0
622AC:  BNE             loc_6238C
622AE:  LDR             R1, =(off_114AA8 - 0x622BC)
622B0:  MOV             R2, #0x96B514
622B8:  ADD             R1, PC; off_114AA8
622BA:  LDR             R1, [R1]; dword_1A4404
622BC:  LDR             R1, [R1]
622BE:  LDRB            R1, [R1,R2]
622C0:  CBZ             R1, loc_622EC
622C2:  LDR             R0, =(off_1A3A34 - 0x622C8)
622C4:  ADD             R0, PC; off_1A3A34
622C6:  LDR.W           R12, [R0]
622CA:  LDR             R0, [SP,#0x28+var_1C]
622CC:  LDR             R1, =(__stack_chk_guard_ptr - 0x622D2)
622CE:  ADD             R1, PC; __stack_chk_guard_ptr
622D0:  LDR             R1, [R1]; __stack_chk_guard
622D2:  LDR             R1, [R1]
622D4:  CMP             R1, R0
622D6:  BNE             loc_623A2
622D8:  MOV             R0, R9
622DA:  MOV             R1, R8
622DC:  MOV             R2, R5
622DE:  MOV             R3, R4
622E0:  ADD             SP, SP, #0x10
622E2:  POP.W           {R8,R9,R11}
622E6:  POP.W           {R4-R7,LR}
622EA:  BX              R12
622EC:  CMP.W           R9, #1
622F0:  BEQ             loc_6230A
622F2:  CMP.W           R9, #3
622F6:  BEQ             loc_6231A
622F8:  CMP.W           R9, #2
622FC:  BNE             loc_6232A
622FE:  VMOV            S2, R4
62302:  MOVS            R1, #1
62304:  STRB.W          R1, [R0,#0xE0]
62308:  B               loc_6231E
6230A:  LDR             R1, =(byte_1A3A00 - 0x62318)
6230C:  MOVS            R2, #0
6230E:  STRB.W          R2, [R0,#0xE0]
62312:  MOVS            R0, #1
62314:  ADD             R1, PC; byte_1A3A00
62316:  STRB            R0, [R1]
62318:  B               loc_6232A
6231A:  VMOV            S2, R4
6231E:  VCVT.F32.S32    S2, S2
62322:  VSTR            S0, [R0,#0xD8]
62326:  VSTR            S2, [R0,#0xDC]
6232A:  LDR             R0, =(off_114B10 - 0x62330)
6232C:  ADD             R0, PC; off_114B10
6232E:  LDR             R0, [R0]; dword_1A442C
62330:  LDR             R0, [R0]
62332:  CBZ             R0, loc_6237C
62334:  CMP.W           R9, #1
62338:  BEQ             loc_62354
6233A:  CMP.W           R9, #3
6233E:  BEQ             loc_62362
62340:  CMP.W           R9, #2
62344:  BNE             loc_6237C
62346:  VMOV            S2, R4
6234A:  LDR             R1, [R0]
6234C:  VSTR            S0, [SP,#0x28+var_24]
62350:  MOVS            R2, #0
62352:  B               loc_6236E
62354:  VMOV            S2, R4
62358:  LDR             R1, [R0]
6235A:  VSTR            S0, [SP,#0x28+var_24]
6235E:  MOVS            R2, #2
62360:  B               loc_6236E
62362:  VMOV            S2, R4
62366:  LDR             R1, [R0]
62368:  VSTR            S0, [SP,#0x28+var_24]
6236C:  MOVS            R2, #1
6236E:  VCVT.F32.S32    S2, S2
62372:  VSTR            S2, [SP,#0x28+var_20]
62376:  LDR             R3, [R1]
62378:  ADD             R1, SP, #0x28+var_24
6237A:  BLX             R3
6237C:  LDR             R0, =(off_1A3A34 - 0x62388)
6237E:  MOV             R1, R8
62380:  MOV             R2, R5
62382:  MOV             R3, R4
62384:  ADD             R0, PC; off_1A3A34
62386:  LDR             R6, [R0]
62388:  MOV             R0, R9
6238A:  BLX             R6
6238C:  LDR             R0, [SP,#0x28+var_1C]
6238E:  LDR             R1, =(__stack_chk_guard_ptr - 0x62394)
62390:  ADD             R1, PC; __stack_chk_guard_ptr
62392:  LDR             R1, [R1]; __stack_chk_guard
62394:  LDR             R1, [R1]
62396:  CMP             R1, R0
62398:  ITTT EQ
6239A:  ADDEQ           SP, SP, #0x10
6239C:  POPEQ.W         {R8,R9,R11}
623A0:  POPEQ           {R4-R7,PC}
623A2:  BLX             __stack_chk_fail
