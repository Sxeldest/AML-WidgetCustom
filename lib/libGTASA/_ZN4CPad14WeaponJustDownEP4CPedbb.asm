; =========================================================
; Game Engine Function: _ZN4CPad14WeaponJustDownEP4CPedbb
; Address            : 0x3FAE64 - 0x3FAF9C
; =========================================================

3FAE64:  PUSH            {R4-R7,LR}
3FAE66:  ADD             R7, SP, #0xC
3FAE68:  PUSH.W          {R11}
3FAE6C:  MOV             R4, R1
3FAE6E:  LDRH.W          R1, [R0,#0x110]
3FAE72:  MOV             R6, R3
3FAE74:  CBNZ            R1, loc_3FAE7C
3FAE76:  LDRB.W          R0, [R0,#0x12F]
3FAE7A:  CBZ             R0, loc_3FAE86
3FAE7C:  MOVS            R5, #0
3FAE7E:  MOV             R0, R5
3FAE80:  POP.W           {R11}
3FAE84:  POP             {R4-R7,PC}
3FAE86:  MOV.W           R0, #0xFFFFFFFF; int
3FAE8A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAE8E:  CBZ             R0, loc_3FAEC4
3FAE90:  MOV.W           R0, #0xFFFFFFFF; int
3FAE94:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAE98:  LDR.W           R0, [R0,#0x440]
3FAE9C:  MOVW            R1, #0x2BD; int
3FAEA0:  ADDS            R0, #4; this
3FAEA2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAEA6:  CMP             R0, #0
3FAEA8:  BNE             loc_3FAE7C
3FAEAA:  MOV.W           R0, #0xFFFFFFFF; int
3FAEAE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAEB2:  LDR.W           R0, [R0,#0x440]
3FAEB6:  MOV.W           R1, #0x2BC; int
3FAEBA:  ADDS            R0, #4; this
3FAEBC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAEC0:  CMP             R0, #0
3FAEC2:  BNE             loc_3FAE7C
3FAEC4:  MOV.W           R0, #0xFFFFFFFF; int
3FAEC8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAECC:  CBZ             R0, loc_3FAEE8
3FAECE:  MOV.W           R0, #0xFFFFFFFF; int
3FAED2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAED6:  LDR.W           R0, [R0,#0x440]; this
3FAEDA:  BLX             j__ZNK16CPedIntelligence17GetUsingParachuteEv; CPedIntelligence::GetUsingParachute(void)
3FAEDE:  MOVS            R5, #0
3FAEE0:  CMP             R0, #0
3FAEE2:  BNE             loc_3FAE7E
3FAEE4:  CBNZ            R6, loc_3FAEEC
3FAEE6:  B               loc_3FAE7E
3FAEE8:  CMP             R6, #1
3FAEEA:  BNE             loc_3FAE7C
3FAEEC:  CBZ             R4, loc_3FAF28
3FAEEE:  LDRSB.W         R0, [R4,#0x71C]
3FAEF2:  MOVS            R5, #0
3FAEF4:  RSB.W           R0, R0, R0,LSL#3
3FAEF8:  ADD.W           R0, R4, R0,LSL#2
3FAEFC:  LDR.W           R0, [R0,#0x5A4]
3FAF00:  SUBS            R0, #0x10
3FAF02:  CMP             R0, #0x1D
3FAF04:  BHI             loc_3FAF2A
3FAF06:  MOVS            R3, #7
3FAF08:  MOVS            R1, #1
3FAF0A:  LSL.W           R2, R1, R0
3FAF0E:  MOVT            R3, #0x6A0
3FAF12:  TST             R2, R3
3FAF14:  BNE             loc_3FAF24
3FAF16:  MOVS            R1, #1
3FAF18:  LSL.W           R0, R1, R0
3FAF1C:  TST.W           R0, #0x31000000
3FAF20:  BEQ             loc_3FAF2A
3FAF22:  MOVS            R1, #2
3FAF24:  MOV             R5, R1
3FAF26:  B               loc_3FAF2A
3FAF28:  MOVS            R5, #0
3FAF2A:  LDR.W           R0, [R4,#0x440]
3FAF2E:  MOVW            R1, #0x133; int
3FAF32:  ADDS            R0, #4; this
3FAF34:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAF38:  CMP             R5, #0
3FAF3A:  BEQ             loc_3FAF54
3FAF3C:  CBNZ            R0, loc_3FAF54
3FAF3E:  CMP             R5, #2
3FAF40:  BEQ             loc_3FAF88
3FAF42:  CMP             R5, #1
3FAF44:  BNE             loc_3FAE7C
3FAF46:  MOVS            R0, #1
3FAF48:  MOVS            R1, #0
3FAF4A:  MOVS            R2, #1
3FAF4C:  MOVS            R5, #0
3FAF4E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAF52:  B               loc_3FAF94
3FAF54:  LDR             R0, =(TheCamera_ptr - 0x3FAF5A)
3FAF56:  ADD             R0, PC; TheCamera_ptr
3FAF58:  LDR             R0, [R0]; TheCamera ; this
3FAF5A:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FAF5E:  MOVS            R5, #0
3FAF60:  CMP             R0, #1
3FAF62:  BNE.W           loc_3FAE7E
3FAF66:  MOVS            R0, #0x15
3FAF68:  MOVS            R1, #0
3FAF6A:  MOVS            R2, #1
3FAF6C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAF70:  MOV             R4, R0
3FAF72:  MOVS            R0, #0x16
3FAF74:  MOVS            R1, #0
3FAF76:  MOVS            R2, #1
3FAF78:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAF7C:  CBNZ            R4, loc_3FAF84
3FAF7E:  CMP             R0, #1
3FAF80:  BNE.W           loc_3FAE7E
3FAF84:  MOVS            R5, #1
3FAF86:  B               loc_3FAE7E
3FAF88:  MOVS            R0, #1
3FAF8A:  MOVS            R1, #0
3FAF8C:  MOVS            R2, #1
3FAF8E:  MOVS            R5, #0
3FAF90:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAF94:  CMP             R0, #0
3FAF96:  IT NE
3FAF98:  MOVNE           R5, #1
3FAF9A:  B               loc_3FAE7E
