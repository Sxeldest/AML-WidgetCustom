; =========================================================
; Game Engine Function: _ZN4CPad20CraneReleaseJustDownEv
; Address            : 0x3FA742 - 0x3FA75E
; =========================================================

3FA742:  LDRH.W          R0, [R0,#0x110]
3FA746:  CMP             R0, #0
3FA748:  ITT NE
3FA74A:  MOVNE           R0, #0
3FA74C:  BXNE            LR
3FA74E:  PUSH            {R7,LR}
3FA750:  MOV             R7, SP
3FA752:  MOVS            R0, #0xE
3FA754:  MOVS            R1, #0
3FA756:  MOVS            R2, #2
3FA758:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA75C:  POP             {R7,PC}
