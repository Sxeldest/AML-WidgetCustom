; =========================================================
; Game Engine Function: _ZN8CGarages31FindSafeHouseIndexForGarageTypeEi
; Address            : 0x3129C0 - 0x3129D4
; =========================================================

3129C0:  SUBS            R0, #0x11
3129C2:  CMP             R0, #0x1C
3129C4:  ITT HI
3129C6:  MOVHI           R0, #0
3129C8:  BXHI            LR
3129CA:  LDR             R1, =(unk_60FE70 - 0x3129D0)
3129CC:  ADD             R1, PC; unk_60FE70
3129CE:  LDR.W           R0, [R1,R0,LSL#2]
3129D2:  BX              LR
