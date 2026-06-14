; =========================================================
; Game Engine Function: _ZN4CPad12DiveJustDownEv
; Address            : 0x3FBCC0 - 0x3FBD02
; =========================================================

3FBCC0:  PUSH            {R4,R6,R7,LR}
3FBCC2:  ADD             R7, SP, #8
3FBCC4:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FBCCA)
3FBCC6:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FBCC8:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FBCCA:  LDR.W           R0, [R0,#(dword_6F3818 - 0x6F3794)]
3FBCCE:  CBZ             R0, loc_3FBCE2
3FBCD0:  MOVS            R0, #0x21 ; '!'
3FBCD2:  MOVS            R1, #0
3FBCD4:  MOVS            R2, #1
3FBCD6:  MOVS            R4, #1
3FBCD8:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBCDC:  CBZ             R0, loc_3FBCFC
3FBCDE:  MOV             R0, R4
3FBCE0:  POP             {R4,R6,R7,PC}
3FBCE2:  MOVS            R0, #0xA7
3FBCE4:  MOVS            R1, #1
3FBCE6:  MOVS            R2, #1
3FBCE8:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3FBCEC:  CMP             R0, #1
3FBCEE:  BNE             loc_3FBCFC
3FBCF0:  MOVS            R0, #0xA7
3FBCF2:  BLX             j__ZN15CTouchInterface15ClearTapHistoryENS_9WidgetIDsE; CTouchInterface::ClearTapHistory(CTouchInterface::WidgetIDs)
3FBCF6:  MOVS            R4, #1
3FBCF8:  MOV             R0, R4
3FBCFA:  POP             {R4,R6,R7,PC}
3FBCFC:  MOVS            R4, #0
3FBCFE:  MOV             R0, R4
3FBD00:  POP             {R4,R6,R7,PC}
