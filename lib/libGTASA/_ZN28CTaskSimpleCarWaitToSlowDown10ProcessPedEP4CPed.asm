; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDown10ProcessPedEP4CPed
; Address            : 0x502226 - 0x50229C
; =========================================================

502226:  PUSH            {R4,R5,R7,LR}
502228:  ADD             R7, SP, #8
50222A:  MOV             R5, R0
50222C:  MOV             R4, R1
50222E:  LDR             R0, [R5,#8]
502230:  CMP             R0, #0
502232:  ITT NE
502234:  LDRNE           R1, [R5,#0x10]
502236:  CMPNE           R1, #2
502238:  BEQ             loc_502278
50223A:  LDR.W           R0, [R0,#0x464]; this
50223E:  CBZ             R0, loc_50225C
502240:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
502244:  CBNZ            R0, loc_50225C
502246:  LDR             R0, [R5,#8]
502248:  LDR.W           R1, [R0,#0x464]
50224C:  CMP             R1, R4
50224E:  BNE             loc_50225C
502250:  MOVS            R1, #0
502252:  STRB.W          R1, [R0,#0x3D4]
502256:  LDR             R0, [R5,#8]
502258:  STRB.W          R1, [R0,#0x3BE]
50225C:  LDR             R0, [R5,#0x10]
50225E:  CMP             R0, #1
502260:  BEQ             loc_50227C
502262:  CMP             R0, #0
502264:  ITT NE
502266:  MOVNE           R0, #0
502268:  POPNE           {R4,R5,R7,PC}
50226A:  LDR             R0, [R5,#8]
50226C:  LDR             R1, [R0]
50226E:  LDR.W           R2, [R1,#0xE8]
502272:  MOVS            R1, #0
502274:  BLX             R2
502276:  CBZ             R0, loc_50228C
502278:  MOVS            R0, #1
50227A:  POP             {R4,R5,R7,PC}
50227C:  LDR             R0, [R5,#8]
50227E:  LDR             R1, [R0]
502280:  LDR.W           R2, [R1,#0xE8]
502284:  MOVS            R1, #0
502286:  POP.W           {R4,R5,R7,LR}
50228A:  BX              R2
50228C:  LDR             R0, [R5,#8]
50228E:  LDR             R1, [R0]
502290:  LDR.W           R2, [R1,#0xEC]
502294:  MOV             R1, R4
502296:  POP.W           {R4,R5,R7,LR}
50229A:  BX              R2
