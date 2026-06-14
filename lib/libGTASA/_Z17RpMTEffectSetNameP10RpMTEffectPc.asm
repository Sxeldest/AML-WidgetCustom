; =========================================================
; Game Engine Function: _Z17RpMTEffectSetNameP10RpMTEffectPc
; Address            : 0x1C5E64 - 0x1C5E82
; =========================================================

1C5E64:  PUSH            {R4,R6,R7,LR}
1C5E66:  ADD             R7, SP, #8
1C5E68:  MOV             R4, R0
1C5E6A:  LDR             R0, =(RwEngineInstance_ptr - 0x1C5E72)
1C5E6C:  MOVS            R2, #0x1F
1C5E6E:  ADD             R0, PC; RwEngineInstance_ptr
1C5E70:  LDR             R0, [R0]; RwEngineInstance
1C5E72:  LDR             R0, [R0]
1C5E74:  LDR.W           R3, [R0,#0xFC]
1C5E78:  ADD.W           R0, R4, #8
1C5E7C:  BLX             R3
1C5E7E:  MOV             R0, R4
1C5E80:  POP             {R4,R6,R7,PC}
