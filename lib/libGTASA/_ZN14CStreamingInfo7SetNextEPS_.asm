; =========================================================
; Game Engine Function: _ZN14CStreamingInfo7SetNextEPS_
; Address            : 0x2CF498 - 0x2CF4BE
; =========================================================

2CF498:  CMP             R1, #0
2CF49A:  ITTT EQ
2CF49C:  MOVWEQ          R1, #0xFFFF
2CF4A0:  STRHEQ          R1, [R0]
2CF4A2:  BXEQ            LR
2CF4A4:  LDR             R2, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF4AA)
2CF4A6:  ADD             R2, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF4A8:  LDR             R2, [R2]; CStreamingInfo::ms_pArrayBase ...
2CF4AA:  LDR             R2, [R2]; CStreamingInfo::ms_pArrayBase
2CF4AC:  SUBS            R1, R1, R2
2CF4AE:  MOV             R2, #0xCCCCCCCD
2CF4B6:  ASRS            R1, R1, #2
2CF4B8:  MULS            R1, R2
2CF4BA:  STRH            R1, [R0]
2CF4BC:  BX              LR
