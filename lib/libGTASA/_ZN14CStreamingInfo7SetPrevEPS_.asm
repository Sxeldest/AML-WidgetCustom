; =========================================================
; Game Engine Function: _ZN14CStreamingInfo7SetPrevEPS_
; Address            : 0x2CF4C4 - 0x2CF4EA
; =========================================================

2CF4C4:  CMP             R1, #0
2CF4C6:  ITTT EQ
2CF4C8:  MOVWEQ          R1, #0xFFFF
2CF4CC:  STRHEQ          R1, [R0,#2]
2CF4CE:  BXEQ            LR
2CF4D0:  LDR             R2, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF4D6)
2CF4D2:  ADD             R2, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF4D4:  LDR             R2, [R2]; CStreamingInfo::ms_pArrayBase ...
2CF4D6:  LDR             R2, [R2]; CStreamingInfo::ms_pArrayBase
2CF4D8:  SUBS            R1, R1, R2
2CF4DA:  MOV             R2, #0xCCCCCCCD
2CF4E2:  ASRS            R1, R1, #2
2CF4E4:  MULS            R1, R2
2CF4E6:  STRH            R1, [R0,#2]
2CF4E8:  BX              LR
