; =========================================================
; Game Engine Function: sub_F8A2C
; Address            : 0xF8A2C - 0xF8A4A
; =========================================================

F8A2C:  PUSH            {R7,LR}
F8A2E:  MOV             R7, SP
F8A30:  LDR             R0, [R0,#4]
F8A32:  CBZ             R0, loc_F8A38
F8A34:  LDRH            R0, [R0,#0x26]
F8A36:  POP             {R7,PC}
F8A38:  LDR             R1, =(aAxl - 0xF8A42); "AXL" ...
F8A3A:  MOVS            R0, #6; prio
F8A3C:  LDR             R2, =(aCentityCanTRea_1 - 0xF8A44); "CEntity: Can't read model id - m_pEntit"... ...
F8A3E:  ADD             R1, PC; "AXL"
F8A40:  ADD             R2, PC; "CEntity: Can't read model id - m_pEntit"...
F8A42:  BLX             __android_log_print
F8A46:  MOVS            R0, #0
F8A48:  POP             {R7,PC}
