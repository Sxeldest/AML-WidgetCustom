; =========================================================
; Game Engine Function: _ZN4CPad19GetGroupControlBackEbb
; Address            : 0x3FC9E4 - 0x3FCA22
; =========================================================

3FC9E4:  PUSH            {R4,R6,R7,LR}
3FC9E6:  ADD             R7, SP, #8
3FC9E8:  LDRH.W          R0, [R0,#0x110]
3FC9EC:  CBZ             R0, loc_3FC9F4
3FC9EE:  MOVS            R4, #0
3FC9F0:  MOV             R0, R4
3FC9F2:  POP             {R4,R6,R7,PC}
3FC9F4:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x3FC9FA)
3FC9F6:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
3FC9F8:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
3FC9FA:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
3FC9FC:  CMP             R0, #0
3FC9FE:  BNE             loc_3FC9EE
3FCA00:  CMP             R1, #0
3FCA02:  BEQ             loc_3FC9EE
3FCA04:  CMP             R2, #1
3FCA06:  MOV.W           R1, #0
3FCA0A:  ITE NE
3FCA0C:  MOVNE           R0, #0x6B ; 'k'
3FCA0E:  MOVEQ           R0, #0x6D ; 'm'
3FCA10:  MOVS            R2, #1
3FCA12:  MOVS            R4, #1
3FCA14:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FCA18:  CMP             R0, #0
3FCA1A:  IT EQ
3FCA1C:  MOVEQ           R4, #0
3FCA1E:  MOV             R0, R4
3FCA20:  POP             {R4,R6,R7,PC}
