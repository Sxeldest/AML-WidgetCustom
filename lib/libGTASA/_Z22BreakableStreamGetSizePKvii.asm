; =========================================================
; Game Engine Function: _Z22BreakableStreamGetSizePKvii
; Address            : 0x451060 - 0x451074
; =========================================================

451060:  LDR             R1, =(g_BreakablePlugin_ptr - 0x451066)
451062:  ADD             R1, PC; g_BreakablePlugin_ptr
451064:  LDR             R1, [R1]; g_BreakablePlugin
451066:  LDR             R1, [R1]
451068:  LDR             R1, [R0,R1]
45106A:  MOVS            R0, #0x34 ; '4'
45106C:  CMP             R1, #0
45106E:  IT EQ
451070:  MOVEQ           R0, #4
451072:  BX              LR
