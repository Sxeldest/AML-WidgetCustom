; =========================================================
; Game Engine Function: _ZN4CPad24GroupControlBackJustDownEb
; Address            : 0x3FCA64 - 0x3FCA9A
; =========================================================

3FCA64:  PUSH            {R4,R6,R7,LR}
3FCA66:  ADD             R7, SP, #8
3FCA68:  LDRH.W          R0, [R0,#0x110]
3FCA6C:  CBZ             R0, loc_3FCA74
3FCA6E:  MOVS            R4, #0
3FCA70:  MOV             R0, R4
3FCA72:  POP             {R4,R6,R7,PC}
3FCA74:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x3FCA7A)
3FCA76:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
3FCA78:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
3FCA7A:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
3FCA7C:  CMP             R0, #0
3FCA7E:  BNE             loc_3FCA6E
3FCA80:  CMP             R1, #0
3FCA82:  BEQ             loc_3FCA6E
3FCA84:  MOVS            R0, #0x6D ; 'm'
3FCA86:  MOVS            R1, #0
3FCA88:  MOVS            R2, #1
3FCA8A:  MOVS            R4, #1
3FCA8C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FCA90:  CMP             R0, #0
3FCA92:  IT EQ
3FCA94:  MOVEQ           R4, #0
3FCA96:  MOV             R0, R4
3FCA98:  POP             {R4,R6,R7,PC}
