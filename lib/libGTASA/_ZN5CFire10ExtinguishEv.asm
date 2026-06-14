; =========================================================
; Game Engine Function: _ZN5CFire10ExtinguishEv
; Address            : 0x3F1234 - 0x3F1292
; =========================================================

3F1234:  PUSH            {R4,R5,R7,LR}
3F1236:  ADD             R7, SP, #8
3F1238:  MOV             R4, R0
3F123A:  LDRB            R1, [R4]
3F123C:  TST.W           R1, #1
3F1240:  BEQ             locret_3F1290
3F1242:  MOVS            R5, #0
3F1244:  AND.W           R1, R1, #0xE6
3F1248:  STR             R5, [R4,#0x18]
3F124A:  ORR.W           R1, R1, #0x10
3F124E:  LDR             R0, [R4,#0x24]; this
3F1250:  STRB            R1, [R4]
3F1252:  CBZ             R0, loc_3F125A
3F1254:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
3F1258:  STR             R5, [R4,#0x24]
3F125A:  LDR.W           R0, [R4,#0x10]!
3F125E:  CMP             R0, #0
3F1260:  IT EQ
3F1262:  POPEQ           {R4,R5,R7,PC}
3F1264:  LDRB.W          R1, [R0,#0x3A]
3F1268:  AND.W           R1, R1, #7
3F126C:  CMP             R1, #2
3F126E:  BEQ             loc_3F127A
3F1270:  CMP             R1, #3
3F1272:  BNE             loc_3F1286
3F1274:  ADD.W           R0, R0, #0x738
3F1278:  B               loc_3F127E
3F127A:  ADDW            R0, R0, #0x494
3F127E:  MOVS            R1, #0
3F1280:  STR             R1, [R0]
3F1282:  LDR             R0, [R4]; this
3F1284:  CBZ             R0, loc_3F128C
3F1286:  MOV             R1, R4; CEntity **
3F1288:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F128C:  MOVS            R0, #0
3F128E:  STR             R0, [R4]
3F1290:  POP             {R4,R5,R7,PC}
