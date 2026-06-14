; =========================================================
; Game Engine Function: _ZN4CPad14CarGunJustDownEv
; Address            : 0x3FA712 - 0x3FA72E
; =========================================================

3FA712:  LDRH.W          R0, [R0,#0x110]
3FA716:  CMP             R0, #0
3FA718:  ITT NE
3FA71A:  MOVNE           R0, #0
3FA71C:  BXNE            LR
3FA71E:  PUSH            {R7,LR}
3FA720:  MOV             R7, SP
3FA722:  MOVS            R0, #0xB
3FA724:  MOVS            R1, #0
3FA726:  MOVS            R2, #1
3FA728:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA72C:  POP             {R7,PC}
