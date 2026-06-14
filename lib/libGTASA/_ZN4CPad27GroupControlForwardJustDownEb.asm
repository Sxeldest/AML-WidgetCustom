; =========================================================
; Game Engine Function: _ZN4CPad27GroupControlForwardJustDownEb
; Address            : 0x3FCA28 - 0x3FCA5E
; =========================================================

3FCA28:  PUSH            {R4,R6,R7,LR}
3FCA2A:  ADD             R7, SP, #8
3FCA2C:  LDRH.W          R0, [R0,#0x110]
3FCA30:  CBZ             R0, loc_3FCA38
3FCA32:  MOVS            R4, #0
3FCA34:  MOV             R0, R4
3FCA36:  POP             {R4,R6,R7,PC}
3FCA38:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x3FCA3E)
3FCA3A:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
3FCA3C:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
3FCA3E:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
3FCA40:  CMP             R0, #0
3FCA42:  BNE             loc_3FCA32
3FCA44:  CMP             R1, #0
3FCA46:  BEQ             loc_3FCA32
3FCA48:  MOVS            R0, #0x6C ; 'l'
3FCA4A:  MOVS            R1, #0
3FCA4C:  MOVS            R2, #1
3FCA4E:  MOVS            R4, #1
3FCA50:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FCA54:  CMP             R0, #0
3FCA56:  IT EQ
3FCA58:  MOVEQ           R4, #0
3FCA5A:  MOV             R0, R4
3FCA5C:  POP             {R4,R6,R7,PC}
