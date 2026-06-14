; =========================================================
; Game Engine Function: _ZN11CFileLoader17SaveTexDictionaryEP15RwTexDictionaryPKc
; Address            : 0x469338 - 0x469364
; =========================================================

469338:  PUSH            {R4,R5,R7,LR}
46933A:  ADD             R7, SP, #8
46933C:  MOV             R2, R1
46933E:  MOV             R4, R0
469340:  MOVS            R0, #2
469342:  MOVS            R1, #2
469344:  BLX             j__Z12RwStreamOpen12RwStreamType18RwStreamAccessTypePKv; RwStreamOpen(RwStreamType,RwStreamAccessType,void const*)
469348:  MOV             R5, R0
46934A:  CMP             R5, #0
46934C:  IT EQ
46934E:  POPEQ           {R4,R5,R7,PC}
469350:  MOV             R0, R4
469352:  MOV             R1, R5
469354:  BLX             j__Z26RwTexDictionaryStreamWritePK15RwTexDictionaryP8RwStream; RwTexDictionaryStreamWrite(RwTexDictionary const*,RwStream *)
469358:  MOV             R0, R5
46935A:  MOVS            R1, #0
46935C:  POP.W           {R4,R5,R7,LR}
469360:  B.W             sub_1962BC
