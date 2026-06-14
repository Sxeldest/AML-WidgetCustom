; =========================================================
; Game Engine Function: _ZN18CScripted2dEffects8GetIndexEPK9C2dEffect
; Address            : 0x59C8B4 - 0x59C8DA
; =========================================================

59C8B4:  LDR             R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x59C8BC)
59C8B6:  MOVS            R3, #0
59C8B8:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
59C8BA:  LDR             R1, [R1]; CScripted2dEffects::ms_effects ...
59C8BC:  SUBS            R1, R1, R0
59C8BE:  MOV             R2, R1
59C8C0:  ADD.W           R1, R2, #0x40 ; '@'
59C8C4:  MOV             R0, R3
59C8C6:  CMP             R1, #0x40 ; '@'
59C8C8:  BEQ             loc_59C8D0
59C8CA:  ADDS            R3, R0, #1
59C8CC:  CMP             R0, #0x3E ; '>'
59C8CE:  BLE             loc_59C8BE
59C8D0:  CMP             R2, #0
59C8D2:  IT NE
59C8D4:  MOVNE.W         R0, #0xFFFFFFFF
59C8D8:  BX              LR
