; =========================================================
; Game Engine Function: _ZN4CPad23ConversationYesJustDownEv
; Address            : 0x3FC8F0 - 0x3FC92E
; =========================================================

3FC8F0:  PUSH            {R4,R5,R7,LR}
3FC8F2:  ADD             R7, SP, #8
3FC8F4:  LDRH.W          R0, [R0,#0x110]
3FC8F8:  CBZ             R0, loc_3FC900
3FC8FA:  MOVS            R4, #0
3FC8FC:  MOV             R0, R4
3FC8FE:  POP             {R4,R5,R7,PC}
3FC900:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FC906)
3FC902:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FC904:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FC906:  LDR.W           R5, [R0,#(dword_6F3A08 - 0x6F3794)]
3FC90A:  CBZ             R5, loc_3FC920
3FC90C:  MOVS            R0, #0x9D
3FC90E:  MOVS            R1, #0
3FC910:  MOVS            R2, #1
3FC912:  MOVS            R4, #1
3FC914:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC918:  LDRB.W          R0, [R5,#0x90]
3FC91C:  CMP             R0, #0
3FC91E:  BNE             loc_3FC8FC
3FC920:  MOVS            R0, #0x6E ; 'n'
3FC922:  MOVS            R1, #0
3FC924:  MOVS            R2, #1
3FC926:  POP.W           {R4,R5,R7,LR}
3FC92A:  B.W             sub_18D4F0
