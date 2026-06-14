; =========================================================
; Game Engine Function: _ZN14CDamageManager24GetCarNodeIndexFromPanelE7ePanels
; Address            : 0x56EBD4 - 0x56EBE4
; =========================================================

56EBD4:  CMP             R0, #6
56EBD6:  ITEE HI
56EBD8:  MOVHI.W         R0, #0xFFFFFFFF
56EBDC:  ADRLS           R1, dword_56EBE4
56EBDE:  LDRLS.W         R0, [R1,R0,LSL#2]
56EBE2:  BX              LR
