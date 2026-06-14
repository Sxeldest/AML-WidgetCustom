; =========================================================
; Game Engine Function: _ZN11CTheScripts29RemoveScriptTextureDictionaryEv
; Address            : 0x328284 - 0x3282CC
; =========================================================

328284:  PUSH            {R4,R5,R7,LR}
328286:  ADD             R7, SP, #8
328288:  LDR             R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x328290)
32828A:  MOVS            R4, #0
32828C:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
32828E:  LDR             R5, [R0]; CTheScripts::ScriptSprites ...
328290:  ADDS            R0, R5, R4; this
328292:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
328296:  ADDS            R4, #4
328298:  CMP.W           R4, #0x200
32829C:  BNE             loc_328290
32829E:  LDR             R0, =(aScript_0 - 0x3282A4); "script"
3282A0:  ADD             R0, PC; "script"
3282A2:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
3282A6:  ADDS            R1, R0, #1
3282A8:  IT EQ
3282AA:  POPEQ           {R4,R5,R7,PC}
3282AC:  LDR             R1, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x3282B6)
3282AE:  RSB.W           R2, R0, R0,LSL#3
3282B2:  ADD             R1, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
3282B4:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool ...
3282B6:  LDR             R1, [R1]; CTxdStore::ms_pTxdPool
3282B8:  LDR             R1, [R1]
3282BA:  LDR.W           R1, [R1,R2,LSL#3]; int
3282BE:  CMP             R1, #0
3282C0:  ITT NE
3282C2:  POPNE.W         {R4,R5,R7,LR}
3282C6:  BNE.W           sub_1A0A60
3282CA:  POP             {R4,R5,R7,PC}
