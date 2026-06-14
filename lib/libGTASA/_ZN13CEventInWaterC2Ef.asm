; =========================================================
; Game Engine Function: _ZN13CEventInWaterC2Ef
; Address            : 0x376C18 - 0x376C2E
; =========================================================

376C18:  LDR             R2, =(_ZTV13CEventInWater_ptr - 0x376C22); Alternative name is 'CEventInWater::CEventInWater(float)'
376C1A:  MOVS            R3, #0
376C1C:  STRB            R3, [R0,#8]
376C1E:  ADD             R2, PC; _ZTV13CEventInWater_ptr
376C20:  STR             R3, [R0,#4]
376C22:  STR             R1, [R0,#0xC]
376C24:  LDR             R2, [R2]; `vtable for'CEventInWater ...
376C26:  ADD.W           R1, R2, #8
376C2A:  STR             R1, [R0]
376C2C:  BX              LR
