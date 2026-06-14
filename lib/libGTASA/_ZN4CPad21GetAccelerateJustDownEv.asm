; =========================================================
; Game Engine Function: _ZN4CPad21GetAccelerateJustDownEv
; Address            : 0x3FB3B0 - 0x3FB3E0
; =========================================================

3FB3B0:  PUSH            {R4,R6,R7,LR}
3FB3B2:  ADD             R7, SP, #8
3FB3B4:  LDRH.W          R0, [R0,#0x110]
3FB3B8:  CBZ             R0, loc_3FB3C0
3FB3BA:  MOVS            R4, #0
3FB3BC:  MOV             R0, R4
3FB3BE:  POP             {R4,R6,R7,PC}
3FB3C0:  MOVS            R0, #2
3FB3C2:  MOVS            R1, #0
3FB3C4:  MOVS            R2, #1
3FB3C6:  MOVS            R4, #1
3FB3C8:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FB3CC:  CBZ             R0, loc_3FB3D2
3FB3CE:  MOV             R0, R4
3FB3D0:  POP             {R4,R6,R7,PC}
3FB3D2:  MOVS            R0, #0x9E
3FB3D4:  MOVS            R1, #0
3FB3D6:  MOVS            R2, #1
3FB3D8:  POP.W           {R4,R6,R7,LR}
3FB3DC:  B.W             sub_18D4F0
