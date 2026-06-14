; =========================================================
; Game Engine Function: _ZN4CPad14GetMeleeAttackEv
; Address            : 0x3FAFA0 - 0x3FAFBC
; =========================================================

3FAFA0:  LDRH.W          R0, [R0,#0x110]
3FAFA4:  CMP             R0, #0
3FAFA6:  ITT NE
3FAFA8:  MOVNE           R0, #0
3FAFAA:  BXNE            LR
3FAFAC:  PUSH            {R7,LR}
3FAFAE:  MOV             R7, SP
3FAFB0:  MOVS            R0, #1
3FAFB2:  MOVS            R1, #0
3FAFB4:  MOVS            R2, #1
3FAFB6:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAFBA:  POP             {R7,PC}
