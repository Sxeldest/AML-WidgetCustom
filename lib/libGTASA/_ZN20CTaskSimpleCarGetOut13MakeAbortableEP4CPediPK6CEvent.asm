; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5031E8 - 0x503202
; =========================================================

5031E8:  CMP             R2, #2
5031EA:  ITT NE
5031EC:  MOVNE           R0, #0
5031EE:  BXNE            LR
5031F0:  LDR             R0, [R0,#0xC]
5031F2:  CMP             R0, #0
5031F4:  ITTT NE
5031F6:  MOVNE           R1, #0
5031F8:  MOVTNE          R1, #0xC47A
5031FC:  STRNE           R1, [R0,#0x1C]
5031FE:  MOVS            R0, #1
503200:  BX              LR
