; =========================================================
; Game Engine Function: _ZN4CPad22ConversationNoJustDownEv
; Address            : 0x3FC934 - 0x3FC972
; =========================================================

3FC934:  PUSH            {R4,R5,R7,LR}
3FC936:  ADD             R7, SP, #8
3FC938:  LDRH.W          R0, [R0,#0x110]
3FC93C:  CBZ             R0, loc_3FC944
3FC93E:  MOVS            R4, #0
3FC940:  MOV             R0, R4
3FC942:  POP             {R4,R5,R7,PC}
3FC944:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FC94A)
3FC946:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FC948:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FC94A:  LDR.W           R5, [R0,#(dword_6F3A08 - 0x6F3794)]
3FC94E:  CBZ             R5, loc_3FC964
3FC950:  MOVS            R0, #0x9D
3FC952:  MOVS            R1, #0
3FC954:  MOVS            R2, #1
3FC956:  MOVS            R4, #1
3FC958:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC95C:  LDRB.W          R0, [R5,#0x91]
3FC960:  CMP             R0, #0
3FC962:  BNE             loc_3FC940
3FC964:  MOVS            R0, #0x6F ; 'o'
3FC966:  MOVS            R1, #0
3FC968:  MOVS            R2, #1
3FC96A:  POP.W           {R4,R5,R7,LR}
3FC96E:  B.W             sub_18D4F0
