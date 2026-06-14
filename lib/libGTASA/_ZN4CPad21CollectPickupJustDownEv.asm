; =========================================================
; Game Engine Function: _ZN4CPad21CollectPickupJustDownEv
; Address            : 0x3FBF40 - 0x3FBF7A
; =========================================================

3FBF40:  LDRH.W          R1, [R0,#0x110]
3FBF44:  MOVS            R0, #0
3FBF46:  CMP             R1, #0
3FBF48:  IT NE
3FBF4A:  BXNE            LR
3FBF4C:  PUSH            {R7,LR}
3FBF4E:  MOV             R7, SP
3FBF50:  STRD.W          R0, R0, [SP,#8+var_10]!
3FBF54:  MOV             R1, SP
3FBF56:  MOVS            R0, #0x1D
3FBF58:  MOV.W           R2, #0xFFFFFFFF
3FBF5C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBF60:  CBZ             R0, loc_3FBF66
3FBF62:  MOVS            R0, #1
3FBF64:  B               loc_3FBF72
3FBF66:  MOV             R1, SP
3FBF68:  MOVS            R0, #0x1C
3FBF6A:  MOV.W           R2, #0xFFFFFFFF
3FBF6E:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBF72:  ADD             SP, SP, #8
3FBF74:  POP.W           {R7,LR}
3FBF78:  BX              LR
