; =========================================================
; Game Engine Function: _ZN4CPad18GetCarGunLeftRightEbb
; Address            : 0x3FA020 - 0x3FA0E2
; =========================================================

3FA020:  PUSH            {R4-R7,LR}
3FA022:  ADD             R7, SP, #0xC
3FA024:  PUSH.W          {R8}
3FA028:  MOV             R4, R0
3FA02A:  MOV             R8, R2
3FA02C:  LDRB.W          R0, [R4,#0x118]
3FA030:  MOV             R6, R1
3FA032:  MOVW            R5, #0xFF80
3FA036:  CBZ             R0, loc_3FA070
3FA038:  MOVS            R0, #0x30 ; '0'
3FA03A:  BLX             j__ZN4CHID15MappingIsAnalogE10HIDMapping; CHID::MappingIsAnalog(HIDMapping)
3FA03E:  CMP             R0, #1
3FA040:  BNE             loc_3FA054
3FA042:  MOVS            R0, #0x30 ; '0'
3FA044:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
3FA048:  CBNZ            R0, loc_3FA06C
3FA04A:  MOVS            R0, #0x30 ; '0'
3FA04C:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
3FA050:  CBNZ            R0, loc_3FA09C
3FA052:  B               loc_3FA070
3FA054:  MOVS            R0, #0x63 ; 'c'
3FA056:  MOVS            R1, #0
3FA058:  MOVS            R2, #1
3FA05A:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA05E:  CBNZ            R0, loc_3FA09C
3FA060:  MOVS            R0, #0x64 ; 'd'
3FA062:  MOVS            R1, #0
3FA064:  MOVS            R2, #1
3FA066:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA06A:  CBZ             R0, loc_3FA070
3FA06C:  MOVS            R5, #0x80
3FA06E:  B               loc_3FA09C
3FA070:  LDRH.W          R0, [R4,#0x110]
3FA074:  CBNZ            R0, loc_3FA09A
3FA076:  CMP             R6, #1
3FA078:  BNE             loc_3FA094
3FA07A:  MOV.W           R0, #0xFFFFFFFF; int
3FA07E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA082:  CBZ             R0, loc_3FA094
3FA084:  MOV.W           R0, #0xFFFFFFFF; int
3FA088:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA08C:  LDRB.W          R0, [R0,#0x485]
3FA090:  LSLS            R0, R0, #0x1F; this
3FA092:  BNE             loc_3FA0A4
3FA094:  CMP.W           R8, #0
3FA098:  BEQ             loc_3FA0AC
3FA09A:  MOVS            R5, #0
3FA09C:  SXTH            R0, R5
3FA09E:  POP.W           {R8}
3FA0A2:  POP             {R4-R7,PC}
3FA0A4:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA0A8:  CMP             R0, #1
3FA0AA:  BNE             loc_3FA0B0
3FA0AC:  LDRH            R5, [R4,#4]
3FA0AE:  B               loc_3FA09C
3FA0B0:  MOVS            R0, #0xC
3FA0B2:  MOVS            R1, #0
3FA0B4:  MOVS            R2, #2
3FA0B6:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA0BA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FA0C0)
3FA0BC:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FA0BE:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FA0C0:  LDR             R0, [R0,#(dword_6F37C4 - 0x6F3794)]
3FA0C2:  CMP             R0, #0
3FA0C4:  BEQ             loc_3FA094
3FA0C6:  LDR.W           R0, [R0,#0xA8]
3FA0CA:  CMP             R0, #8
3FA0CC:  BHI             loc_3FA094
3FA0CE:  MOVS            R1, #1
3FA0D0:  LSL.W           R0, R1, R0
3FA0D4:  TST.W           R0, #0xA8
3FA0D8:  BNE             loc_3FA09C
3FA0DA:  TST.W           R0, #0x150
3FA0DE:  BNE             loc_3FA06C
3FA0E0:  B               loc_3FA094
