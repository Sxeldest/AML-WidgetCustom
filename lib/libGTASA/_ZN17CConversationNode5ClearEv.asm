; =========================================================
; Game Engine Function: _ZN17CConversationNode5ClearEv
; Address            : 0x300544 - 0x300556
; =========================================================

300544:  MOVS            R1, #0
300546:  MOV.W           R2, #0xFFFFFFFF
30054A:  STRB            R1, [R0]
30054C:  STRD.W          R2, R1, [R0,#8]
300550:  STRD.W          R1, R1, [R0,#0x10]
300554:  BX              LR
