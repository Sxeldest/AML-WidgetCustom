; =========================================================
; Game Engine Function: _ZNK14CDamageManager13GetDoorStatusEi
; Address            : 0x56E768 - 0x56E780
; =========================================================

56E768:  SUBS            R1, #8
56E76A:  CMP             R1, #3
56E76C:  ITT HI
56E76E:  MOVHI           R0, #4
56E770:  BXHI            LR
56E772:  LDR             R2, =(unk_61ECA4 - 0x56E778)
56E774:  ADD             R2, PC; unk_61ECA4
56E776:  LDR.W           R1, [R2,R1,LSL#2]
56E77A:  ADD             R0, R1
56E77C:  LDRB            R0, [R0,#9]
56E77E:  BX              LR
