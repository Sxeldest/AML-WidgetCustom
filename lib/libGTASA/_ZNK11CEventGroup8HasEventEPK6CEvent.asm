; =========================================================
; Game Engine Function: _ZNK11CEventGroup8HasEventEPK6CEvent
; Address            : 0x36F726 - 0x36F74E
; =========================================================

36F726:  LDR             R2, [R0,#8]
36F728:  CMP             R2, #1
36F72A:  ITT LT
36F72C:  MOVLT           R0, #0
36F72E:  BXLT            LR
36F730:  ADD.W           R12, R0, #0xC
36F734:  MOVS            R3, #0
36F736:  LDR.W           R0, [R12,R3,LSL#2]
36F73A:  CMP             R0, R1
36F73C:  ITT EQ
36F73E:  MOVEQ           R0, #1
36F740:  BXEQ            LR
36F742:  ADDS            R3, #1
36F744:  CMP             R3, R2
36F746:  ITT GE
36F748:  MOVGE           R0, #0
36F74A:  BXGE            LR
36F74C:  B               loc_36F736
