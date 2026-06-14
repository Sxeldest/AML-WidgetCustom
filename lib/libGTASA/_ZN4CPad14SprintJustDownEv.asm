; =========================================================
; Game Engine Function: _ZN4CPad14SprintJustDownEv
; Address            : 0x3FBE14 - 0x3FBEA2
; =========================================================

3FBE14:  PUSH            {R4,R6,R7,LR}
3FBE16:  ADD             R7, SP, #8
3FBE18:  LDRH.W          R0, [R0,#0x110]
3FBE1C:  CBZ             R0, loc_3FBE24
3FBE1E:  MOVS            R4, #0
3FBE20:  MOV             R0, R4
3FBE22:  POP             {R4,R6,R7,PC}
3FBE24:  MOV.W           R0, #0xFFFFFFFF; int
3FBE28:  MOVS            R1, #0; bool
3FBE2A:  MOVS            R4, #0
3FBE2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FBE30:  CBZ             R0, loc_3FBE36
3FBE32:  MOV             R0, R4
3FBE34:  POP             {R4,R6,R7,PC}
3FBE36:  MOV.W           R0, #0xFFFFFFFF; int
3FBE3A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FBE3E:  CBZ             R0, loc_3FBE62
3FBE40:  MOV.W           R0, #0xFFFFFFFF; int
3FBE44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FBE48:  LDR.W           R0, [R0,#0x440]; this
3FBE4C:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
3FBE50:  MOVS            R4, #0
3FBE52:  CMP             R0, #0
3FBE54:  BNE             loc_3FBE32
3FBE56:  LDR             R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x3FBE5C)
3FBE58:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
3FBE5A:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
3FBE5C:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
3FBE5E:  CBZ             R0, loc_3FBE6E
3FBE60:  B               loc_3FBE32
3FBE62:  LDR             R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x3FBE68)
3FBE64:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
3FBE66:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
3FBE68:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
3FBE6A:  CMP             R0, #0
3FBE6C:  BNE             loc_3FBE1E
3FBE6E:  LDR             R0, =(TheCamera_ptr - 0x3FBE74)
3FBE70:  ADD             R0, PC; TheCamera_ptr
3FBE72:  LDR             R0, [R0]; TheCamera ; this
3FBE74:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FBE78:  CMP             R0, #0
3FBE7A:  BNE             loc_3FBE1E
3FBE7C:  MOVS            R0, #0xA8
3FBE7E:  MOVS            R1, #0
3FBE80:  MOVS            R2, #1
3FBE82:  MOVS            R4, #1
3FBE84:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBE88:  CMP             R0, #0
3FBE8A:  BNE             loc_3FBE32
3FBE8C:  MOVS            R0, #0x1F
3FBE8E:  MOVS            R1, #0
3FBE90:  MOVS            R2, #1
3FBE92:  MOVS            R4, #1
3FBE94:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FBE98:  CMP             R0, #0
3FBE9A:  IT EQ
3FBE9C:  MOVEQ           R4, #0
3FBE9E:  MOV             R0, R4
3FBEA0:  POP             {R4,R6,R7,PC}
