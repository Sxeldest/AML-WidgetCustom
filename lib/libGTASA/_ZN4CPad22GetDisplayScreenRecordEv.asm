; =========================================================
; Game Engine Function: _ZN4CPad22GetDisplayScreenRecordEv
; Address            : 0x3FBEB0 - 0x3FBEE6
; =========================================================

3FBEB0:  LDRH.W          R1, [R0,#0x110]
3FBEB4:  CBNZ            R1, loc_3FBED2
3FBEB6:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3FBEBE)
3FBEB8:  LDR             R2, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3FBEC4)
3FBEBA:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
3FBEBC:  LDRB.W          R0, [R0,#0x133]
3FBEC0:  ADD             R2, PC; _ZN6CTimer11m_CodePauseE_ptr
3FBEC2:  LDR             R1, [R1]; CTimer::m_UserPause ...
3FBEC4:  LDR             R2, [R2]; CTimer::m_CodePause ...
3FBEC6:  LDRB            R1, [R1]; CTimer::m_UserPause
3FBEC8:  LDRB            R2, [R2]; CTimer::m_CodePause
3FBECA:  ORRS            R0, R1
3FBECC:  ORRS            R0, R2
3FBECE:  LSLS            R0, R0, #0x18
3FBED0:  BEQ             loc_3FBED6
3FBED2:  MOVS            R0, #0
3FBED4:  BX              LR
3FBED6:  PUSH            {R7,LR}
3FBED8:  MOV             R7, SP
3FBEDA:  MOVS            R0, #0x9F
3FBEDC:  MOVS            R1, #0
3FBEDE:  MOVS            R2, #1
3FBEE0:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBEE4:  POP             {R7,PC}
