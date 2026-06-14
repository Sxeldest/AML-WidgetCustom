; =========================================================
; Game Engine Function: _ZN18CScripted2dEffects14GetEffectPairsEPK9C2dEffect
; Address            : 0x59C880 - 0x59C8AC
; =========================================================

59C880:  LDR             R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x59C886)
59C882:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
59C884:  LDR             R1, [R1]; CScripted2dEffects::ms_effects ...
59C886:  SUBS            R0, R0, R1
59C888:  ADD.W           R1, R0, #0x40 ; '@'
59C88C:  MOVS            R0, #0
59C88E:  SUBS            R1, #0x40 ; '@'
59C890:  BEQ             loc_59C89E
59C892:  ADDS            R2, R0, #1
59C894:  CMP             R0, #0x3E ; '>'
59C896:  MOV             R0, R2
59C898:  BLE             loc_59C88E
59C89A:  MOV.W           R0, #0xFFFFFFFF
59C89E:  LDR             R1, =(_ZN18CScripted2dEffects14ms_effectPairsE_ptr - 0x59C8A6)
59C8A0:  MOVS            R2, #0x94
59C8A2:  ADD             R1, PC; _ZN18CScripted2dEffects14ms_effectPairsE_ptr
59C8A4:  LDR             R1, [R1]; CScripted2dEffects::ms_effectPairs ...
59C8A6:  MLA.W           R0, R0, R2, R1
59C8AA:  BX              LR
