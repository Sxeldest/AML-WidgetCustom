; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EC838 - 0x4EC866
; =========================================================

4EC838:  CMP             R2, #2
4EC83A:  BNE             loc_4EC848
4EC83C:  LDR             R0, [R0,#8]
4EC83E:  LDR             R2, [R0]
4EC840:  LDR.W           R12, [R2,#0x1C]
4EC844:  MOVS            R2, #2
4EC846:  BX              R12
4EC848:  PUSH            {R7,LR}
4EC84A:  MOV             R7, SP
4EC84C:  LDR.W           R12, [R0,#8]
4EC850:  MOVS            R2, #0
4EC852:  STR             R2, [R0,#0xC]
4EC854:  MOVS            R2, #0
4EC856:  LDR.W           R0, [R12]
4EC85A:  LDR.W           LR, [R0,#0x1C]
4EC85E:  MOV             R0, R12
4EC860:  BLX             LR
4EC862:  MOVS            R0, #0
4EC864:  POP             {R7,PC}
