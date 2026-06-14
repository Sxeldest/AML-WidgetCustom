; =========================================================
; Game Engine Function: _ZN4CPad13GetNitroFiredEv
; Address            : 0x3FA6EE - 0x3FA712
; =========================================================

3FA6EE:  LDRH.W          R1, [R0,#0x110]
3FA6F2:  CMP             R1, #0
3FA6F4:  ITT EQ
3FA6F6:  LDRBEQ.W        R0, [R0,#0x118]
3FA6FA:  CMPEQ           R0, #0
3FA6FC:  BEQ             loc_3FA702
3FA6FE:  MOVS            R0, #0
3FA700:  BX              LR
3FA702:  PUSH            {R7,LR}
3FA704:  MOV             R7, SP
3FA706:  MOVS            R0, #0x1E
3FA708:  MOVS            R1, #0
3FA70A:  MOVS            R2, #1
3FA70C:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA710:  POP             {R7,PC}
