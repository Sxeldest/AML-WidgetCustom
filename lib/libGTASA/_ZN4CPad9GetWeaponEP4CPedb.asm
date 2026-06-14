; =========================================================
; Game Engine Function: _ZN4CPad9GetWeaponEP4CPedb
; Address            : 0x3FAB58 - 0x3FADD2
; =========================================================

3FAB58:  PUSH            {R4,R5,R7,LR}
3FAB5A:  ADD             R7, SP, #8
3FAB5C:  MOV             R4, R1
3FAB5E:  LDRH.W          R1, [R0,#0x110]
3FAB62:  CMP             R1, #0
3FAB64:  ITT EQ
3FAB66:  LDRBEQ.W        R0, [R0,#0x12F]
3FAB6A:  CMPEQ           R0, #0
3FAB6C:  BEQ             loc_3FAB74
3FAB6E:  MOVS            R5, #0
3FAB70:  MOV             R0, R5
3FAB72:  POP             {R4,R5,R7,PC}
3FAB74:  MOV.W           R0, #0xFFFFFFFF; int
3FAB78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAB7C:  CBZ             R0, loc_3FABB8
3FAB7E:  MOV.W           R0, #0xFFFFFFFF; int
3FAB82:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAB86:  LDR.W           R0, [R0,#0x440]
3FAB8A:  MOVW            R1, #0x2BD; int
3FAB8E:  ADDS            R0, #4; this
3FAB90:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAB94:  CMP             R0, #0
3FAB96:  BNE             loc_3FAB6E
3FAB98:  MOV.W           R0, #0xFFFFFFFF; int
3FAB9C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FABA0:  LDR.W           R0, [R0,#0x440]
3FABA4:  MOV.W           R1, #0x2BC; int
3FABA8:  ADDS            R0, #4; this
3FABAA:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FABAE:  MOVS            R5, #0
3FABB0:  CMP             R4, #0
3FABB2:  BEQ             loc_3FAB70
3FABB4:  CBZ             R0, loc_3FABBC
3FABB6:  B               loc_3FAB70
3FABB8:  CMP             R4, #0
3FABBA:  BEQ             loc_3FAB6E
3FABBC:  LDRSB.W         R0, [R4,#0x71C]
3FABC0:  MOVS            R5, #0
3FABC2:  RSB.W           R0, R0, R0,LSL#3
3FABC6:  ADD.W           R0, R4, R0,LSL#2
3FABCA:  LDR.W           R0, [R0,#0x5A4]
3FABCE:  SUBS            R0, #0x10
3FABD0:  CMP             R0, #0x1D
3FABD2:  BHI             loc_3FABF4
3FABD4:  MOVS            R3, #7
3FABD6:  MOVS            R1, #1
3FABD8:  LSL.W           R2, R1, R0
3FABDC:  MOVT            R3, #0x6A0
3FABE0:  TST             R2, R3
3FABE2:  BNE             loc_3FABF2
3FABE4:  MOVS            R1, #1
3FABE6:  LSL.W           R0, R1, R0
3FABEA:  TST.W           R0, #0x31000000
3FABEE:  BEQ             loc_3FABF4
3FABF0:  MOVS            R1, #2
3FABF2:  MOV             R5, R1
3FABF4:  LDR.W           R0, [R4,#0x440]
3FABF8:  MOVW            R1, #0x133; int
3FABFC:  ADDS            R0, #4; this
3FABFE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAC02:  CMP             R5, #0
3FAC04:  BEQ             loc_3FAC22
3FAC06:  CBNZ            R0, loc_3FAC22
3FAC08:  CMP             R5, #2
3FAC0A:  BEQ             loc_3FAC60
3FAC0C:  CMP             R5, #1
3FAC0E:  BNE             loc_3FAB6E
3FAC10:  MOVS            R0, #1
3FAC12:  MOVS            R1, #0
3FAC14:  MOVS            R2, #1
3FAC16:  MOVS            R5, #0
3FAC18:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAC1C:  CMP             R0, #0
3FAC1E:  BEQ             loc_3FAB70
3FAC20:  B               loc_3FAD6A
3FAC22:  LDR             R0, =(TheCamera_ptr - 0x3FAC28)
3FAC24:  ADD             R0, PC; TheCamera_ptr
3FAC26:  LDR             R0, [R0]; TheCamera ; this
3FAC28:  BLX             j__ZN7CCamera17IsTargetingActiveEv; CCamera::IsTargetingActive(void)
3FAC2C:  CMP             R0, #1
3FAC2E:  BNE             loc_3FAB6E
3FAC30:  BLX             j__ZN14MobileSettings12IsLockOnModeEv; MobileSettings::IsLockOnMode(void)
3FAC34:  CBNZ            R0, loc_3FAC3E
3FAC36:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FAC3A:  CMP             R0, #1
3FAC3C:  BNE             loc_3FAD08
3FAC3E:  LDR.W           R0, [R4,#0x720]
3FAC42:  CBZ             R0, loc_3FAC74
3FAC44:  LDR.W           R0, [R4,#0x440]; this
3FAC48:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
3FAC4C:  CMP             R0, #0
3FAC4E:  BEQ.W           loc_3FAD54
3FAC52:  MOVS            R0, #0x16
3FAC54:  MOVS            R1, #0
3FAC56:  MOVS            R2, #1
3FAC58:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAC5C:  MOV             R4, R0
3FAC5E:  B               loc_3FAD56
3FAC60:  MOVS            R0, #1
3FAC62:  MOVS            R1, #0
3FAC64:  MOVS            R2, #1
3FAC66:  MOVS            R5, #0
3FAC68:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAC6C:  CMP             R0, #0
3FAC6E:  BEQ.W           loc_3FAB70
3FAC72:  B               loc_3FAD6A
3FAC74:  MOV.W           R0, #0xFFFFFFFF; int
3FAC78:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAC7C:  CMP             R0, #0
3FAC7E:  BEQ             loc_3FAC44
3FAC80:  MOV.W           R0, #0xFFFFFFFF; int
3FAC84:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAC88:  LDRSB.W         R1, [R0,#0x71C]
3FAC8C:  RSB.W           R1, R1, R1,LSL#3
3FAC90:  ADD.W           R0, R0, R1,LSL#2
3FAC94:  LDR.W           R0, [R0,#0x5A4]
3FAC98:  SUBS            R0, #0x21 ; '!'
3FAC9A:  CMP             R0, #0xC
3FAC9C:  BHI             loc_3FAC44
3FAC9E:  MOVS            R1, #1
3FACA0:  LSL.W           R0, R1, R0
3FACA4:  MOVW            R1, #0x1C0F
3FACA8:  TST             R0, R1
3FACAA:  BEQ             loc_3FAC44
3FACAC:  MOV.W           R0, #0xFFFFFFFF; int
3FACB0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FACB4:  CMP             R0, #0
3FACB6:  BEQ.W           loc_3FAB6E
3FACBA:  MOV.W           R0, #0xFFFFFFFF; int
3FACBE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FACC2:  LDRSB.W         R1, [R0,#0x71C]
3FACC6:  MOVS            R5, #0
3FACC8:  RSB.W           R1, R1, R1,LSL#3
3FACCC:  ADD.W           R0, R0, R1,LSL#2
3FACD0:  LDR.W           R0, [R0,#0x5A4]
3FACD4:  SUBS            R0, #0x21 ; '!'
3FACD6:  CMP             R0, #0xC
3FACD8:  BHI.W           loc_3FAB70
3FACDC:  MOVS            R1, #1
3FACDE:  LSL.W           R0, R1, R0
3FACE2:  MOVW            R1, #0x1C0F
3FACE6:  TST             R0, R1
3FACE8:  BEQ.W           loc_3FAB70
3FACEC:  MOVS            R0, #0x15
3FACEE:  MOVS            R1, #0
3FACF0:  MOVS            R2, #1
3FACF2:  MOVS            R5, #0
3FACF4:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FACF8:  MOV             R4, R0
3FACFA:  MOVS            R0, #0x16
3FACFC:  MOVS            R1, #0
3FACFE:  MOVS            R2, #1
3FAD00:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAD04:  CBZ             R4, loc_3FAD64
3FAD06:  B               loc_3FAD6A
3FAD08:  BLX             j__ZN14MobileSettings13IsFreeAimModeEv; MobileSettings::IsFreeAimMode(void)
3FAD0C:  CMP             R0, #1
3FAD0E:  BNE.W           loc_3FAB6E
3FAD12:  MOV.W           R0, #0xFFFFFFFF; int
3FAD16:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAD1A:  CBZ             R0, loc_3FAD70
3FAD1C:  MOV.W           R0, #0xFFFFFFFF; int
3FAD20:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAD24:  LDRSB.W         R1, [R0,#0x71C]
3FAD28:  RSB.W           R1, R1, R1,LSL#3
3FAD2C:  ADD.W           R0, R0, R1,LSL#2
3FAD30:  LDR.W           R0, [R0,#0x5A4]
3FAD34:  SUBS            R0, #0x21 ; '!'
3FAD36:  CMP             R0, #0xC
3FAD38:  BHI             loc_3FAD70
3FAD3A:  MOVS            R1, #1
3FAD3C:  LSL.W           R0, R1, R0
3FAD40:  MOVW            R1, #0x1C0F
3FAD44:  TST             R0, R1
3FAD46:  BEQ             loc_3FAD70
3FAD48:  MOVS            R0, #0x15
3FAD4A:  MOVS            R1, #0
3FAD4C:  MOVS            R2, #1
3FAD4E:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAD52:  B               loc_3FAD7A
3FAD54:  MOVS            R4, #0
3FAD56:  MOVS            R0, #1
3FAD58:  MOVS            R1, #0
3FAD5A:  MOVS            R2, #1
3FAD5C:  MOVS            R5, #0
3FAD5E:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAD62:  CBNZ            R4, loc_3FAD6A
3FAD64:  CMP             R0, #0
3FAD66:  BEQ.W           loc_3FAB70
3FAD6A:  MOVS            R5, #0xFF
3FAD6C:  MOV             R0, R5
3FAD6E:  POP             {R4,R5,R7,PC}
3FAD70:  MOVS            R0, #0x15
3FAD72:  MOVS            R1, #0
3FAD74:  MOVS            R2, #1
3FAD76:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAD7A:  MOV             R4, R0
3FAD7C:  MOV.W           R0, #0xFFFFFFFF; int
3FAD80:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAD84:  CBZ             R0, loc_3FADBE
3FAD86:  MOV.W           R0, #0xFFFFFFFF; int
3FAD8A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAD8E:  LDRSB.W         R1, [R0,#0x71C]
3FAD92:  RSB.W           R1, R1, R1,LSL#3
3FAD96:  ADD.W           R0, R0, R1,LSL#2
3FAD9A:  LDR.W           R0, [R0,#0x5A4]
3FAD9E:  SUBS            R0, #0x21 ; '!'
3FADA0:  CMP             R0, #0xC
3FADA2:  BHI             loc_3FADBE
3FADA4:  MOVS            R1, #1
3FADA6:  LSL.W           R0, R1, R0
3FADAA:  MOVW            R1, #0x1C0F
3FADAE:  TST             R0, R1
3FADB0:  BEQ             loc_3FADBE
3FADB2:  MOVS            R0, #0x16
3FADB4:  MOVS            R1, #0
3FADB6:  MOVS            R2, #1
3FADB8:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FADBC:  B               loc_3FADC8
3FADBE:  MOVS            R0, #0x16
3FADC0:  MOVS            R1, #0
3FADC2:  MOVS            R2, #1
3FADC4:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FADC8:  ORRS            R0, R4
3FADCA:  CMP             R0, #1
3FADCC:  BNE.W           loc_3FAB6E
3FADD0:  B               loc_3FAD6A
