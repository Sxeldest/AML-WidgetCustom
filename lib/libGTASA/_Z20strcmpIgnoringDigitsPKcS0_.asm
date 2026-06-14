; =========================================================
; Game Engine Function: _Z20strcmpIgnoringDigitsPKcS0_
; Address            : 0x3891EC - 0x389284
; =========================================================

3891EC:  PUSH            {R4-R7,LR}
3891EE:  ADD             R7, SP, #0xC
3891F0:  PUSH.W          {R8-R11}
3891F4:  SUB             SP, SP, #4
3891F6:  MOV             R9, R1
3891F8:  MOV             R5, R0
3891FA:  LDRB.W          R6, [R9]
3891FE:  LDRB            R4, [R5]
389200:  ORRS.W          R0, R4, R6
389204:  BEQ             loc_389276
389206:  MOV.W           R10, #0xE0
38920A:  MOV             R11, #0xFFFFFFD0
38920E:  UXTB            R0, R4; int
389210:  BLX             islower
389214:  MOV             R8, R0
389216:  UXTB            R0, R6; int
389218:  BLX             islower
38921C:  CMP             R0, #0
38921E:  IT NE
389220:  UXTABNE.W       R6, R10, R6
389224:  CMP.W           R8, #0
389228:  IT NE
38922A:  UXTABNE.W       R4, R10, R4
38922E:  TST.W           R4, #0xFF
389232:  ITT NE
389234:  UXTABNE.W       R0, R11, R4
389238:  CMPNE           R0, #9
38923A:  BHI             loc_389254
38923C:  UXTB            R0, R6
38923E:  UXTB            R1, R4
389240:  CMP             R1, R0
389242:  IT NE
389244:  MOVSNE.W        R0, R6,LSL#24
389248:  BEQ             loc_38925C
38924A:  UXTAB.W         R0, R11, R6
38924E:  CMP             R0, #0xA
389250:  BCC             loc_38925C
389252:  B               loc_38927A
389254:  UXTB            R0, R6
389256:  UXTB            R1, R4
389258:  CMP             R1, R0
38925A:  BNE             loc_38927A
38925C:  LSLS            R0, R6, #0x18
38925E:  IT NE
389260:  ADDNE.W         R9, R9, #1
389264:  LSLS            R0, R4, #0x18
389266:  LDRB.W          R6, [R9]
38926A:  IT NE
38926C:  ADDNE           R5, #1
38926E:  LDRB            R4, [R5]
389270:  ORRS.W          R0, R4, R6
389274:  BNE             loc_38920E
389276:  MOVS            R0, #1
389278:  B               loc_38927C
38927A:  MOVS            R0, #0
38927C:  ADD             SP, SP, #4
38927E:  POP.W           {R8-R11}
389282:  POP             {R4-R7,PC}
