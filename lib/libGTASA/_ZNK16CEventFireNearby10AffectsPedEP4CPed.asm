; =========================================================
; Game Engine Function: _ZNK16CEventFireNearby10AffectsPedEP4CPed
; Address            : 0x377590 - 0x3775B6
; =========================================================

377590:  PUSH            {R4,R6,R7,LR}
377592:  ADD             R7, SP, #8
377594:  MOV             R4, R1
377596:  MOV.W           R1, #0x25C; int
37759A:  LDR.W           R0, [R4,#0x440]
37759E:  ADDS            R0, #4; this
3775A0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3775A4:  CMP             R0, #0
3775A6:  ITT NE
3775A8:  MOVNE           R0, #0
3775AA:  POPNE           {R4,R6,R7,PC}
3775AC:  MOV             R0, R4; this
3775AE:  POP.W           {R4,R6,R7,LR}
3775B2:  B.W             sub_196874
