; =========================================================
; Game Engine Function: _ZN4CPad15GetJetpackHoverEv
; Address            : 0x3FA47C - 0x3FA4FA
; =========================================================

3FA47C:  PUSH            {R4,R6,R7,LR}
3FA47E:  ADD             R7, SP, #8
3FA480:  LDRH.W          R1, [R0,#0x110]
3FA484:  CBZ             R1, loc_3FA48C
3FA486:  MOVS            R4, #0
3FA488:  MOV             R0, R4
3FA48A:  POP             {R4,R6,R7,PC}
3FA48C:  LDRB.W          R0, [R0,#0x145]; this
3FA490:  CMP             R0, #0
3FA492:  BEQ             loc_3FA486
3FA494:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA498:  CBNZ            R0, loc_3FA4A6
3FA49A:  MOVS            R0, #0xAF
3FA49C:  MOVS            R1, #1
3FA49E:  MOVS            R4, #1
3FA4A0:  BLX             j__ZN15CTouchInterface10IsHeldDownENS_9WidgetIDsEi; CTouchInterface::IsHeldDown(CTouchInterface::WidgetIDs,int)
3FA4A4:  CBNZ            R0, loc_3FA4F6
3FA4A6:  MOVS            R0, #2
3FA4A8:  MOVS            R1, #0
3FA4AA:  MOVS            R2, #1
3FA4AC:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA4B0:  CMP             R0, #1
3FA4B2:  BNE             loc_3FA4C2
3FA4B4:  MOVS            R0, #3
3FA4B6:  MOVS            R1, #0
3FA4B8:  MOVS            R2, #1
3FA4BA:  MOVS            R4, #1
3FA4BC:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA4C0:  CBNZ            R0, loc_3FA4F6
3FA4C2:  MOVS            R0, #0x56 ; 'V'
3FA4C4:  MOVS            R1, #0
3FA4C6:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FA4CA:  CMP             R0, #1
3FA4CC:  BNE             loc_3FA4DC
3FA4CE:  MOVS            R0, #0x57 ; 'W'
3FA4D0:  MOVS            R1, #0
3FA4D2:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FA4D6:  CBZ             R0, loc_3FA4DC
3FA4D8:  MOVS            R4, #1
3FA4DA:  B               loc_3FA4F6
3FA4DC:  MOVS            R0, #0x13
3FA4DE:  MOVS            R1, #0
3FA4E0:  MOVS            R4, #0
3FA4E2:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FA4E6:  CMP             R0, #1
3FA4E8:  BNE             loc_3FA4F6
3FA4EA:  MOVS            R0, #0x14
3FA4EC:  MOVS            R1, #0
3FA4EE:  POP.W           {R4,R6,R7,LR}
3FA4F2:  B.W             sub_196BF4
3FA4F6:  MOV             R0, R4
3FA4F8:  POP             {R4,R6,R7,PC}
