; =========================================================
; Game Engine Function: _ZN7CWanted18NumOfHelisRequiredEv
; Address            : 0x4223E8 - 0x422406
; =========================================================

4223E8:  LDRB            R1, [R0,#0x1E]
4223EA:  LSLS            R1, R1, #0x1D
4223EC:  BEQ             loc_4223F2
4223EE:  MOVS            R0, #0
4223F0:  BX              LR
4223F2:  LDR             R0, [R0,#0x2C]
4223F4:  SUBS            R0, #3
4223F6:  CMP             R0, #3
4223F8:  ITTT LS
4223FA:  ADRLS           R1, dword_422408
4223FC:  LDRLS.W         R0, [R1,R0,LSL#2]
422400:  BXLS            LR
422402:  MOVS            R0, #0
422404:  BX              LR
