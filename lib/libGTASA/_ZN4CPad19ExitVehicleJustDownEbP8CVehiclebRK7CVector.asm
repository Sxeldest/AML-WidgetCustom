; =========================================================
; Game Engine Function: _ZN4CPad19ExitVehicleJustDownEbP8CVehiclebRK7CVector
; Address            : 0x3FAA2C - 0x3FAADC
; =========================================================

3FAA2C:  PUSH            {R4-R7,LR}
3FAA2E:  ADD             R7, SP, #0xC
3FAA30:  PUSH.W          {R8}
3FAA34:  SUB             SP, SP, #8
3FAA36:  MOV             R4, R1
3FAA38:  LDRH.W          R1, [R0,#0x110]
3FAA3C:  MOV             R8, R3
3FAA3E:  MOV             R5, R2
3FAA40:  CBNZ            R1, loc_3FAA54
3FAA42:  LDRB.W          R1, [R0,#0x12D]
3FAA46:  CBNZ            R1, loc_3FAA54
3FAA48:  LDRB.W          R1, [R0,#0x118]
3FAA4C:  CBNZ            R1, loc_3FAA54
3FAA4E:  LDRB.W          R0, [R0,#0x123]
3FAA52:  CBZ             R0, loc_3FAA60
3FAA54:  MOVS            R6, #0
3FAA56:  MOV             R0, R6
3FAA58:  ADD             SP, SP, #8
3FAA5A:  POP.W           {R8}
3FAA5E:  POP             {R4-R7,PC}
3FAA60:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FAA66)
3FAA62:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FAA64:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FAA66:  LDR             R0, [R0,#(dword_6F37CC - 0x6F3794)]; this
3FAA68:  CBZ             R0, loc_3FAA78
3FAA6A:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
3FAA6E:  MOVS            R6, #0
3FAA70:  CMP             R0, #0
3FAA72:  BNE             loc_3FAA56
3FAA74:  CBNZ            R4, loc_3FAA7C
3FAA76:  B               loc_3FAA56
3FAA78:  CMP             R4, #1
3FAA7A:  BNE             loc_3FAA54
3FAA7C:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FAA8E)
3FAA7E:  CMP             R5, #0
3FAA80:  ITE NE
3FAA82:  LDRNE.W         R1, [R5,#0x5A4]
3FAA86:  MOVEQ.W         R1, #0xFFFFFFFF
3FAA8A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FAA8C:  LDR             R0, [R0]; CWorld::Players ...
3FAA8E:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]
3FAA92:  CMP             R0, #0
3FAA94:  IT NE
3FAA96:  LDRNE.W         R1, [R0,#0x5A4]; int
3FAA9A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x3FAAA0)
3FAA9C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
3FAA9E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
3FAAA0:  LDR             R0, [R0]; this
3FAAA2:  CBZ             R0, loc_3FAAC2
3FAAA4:  LDR             R3, [R7,#arg_0]
3FAAA6:  CBZ             R5, loc_3FAAB2
3FAAA8:  LDRSH.W         R6, [R5,#0x26]
3FAAAC:  LDR.W           R2, [R5,#0x390]
3FAAB0:  B               loc_3FAAB8
3FAAB2:  MOV.W           R6, #0xFFFFFFFF
3FAAB6:  MOVS            R2, #0; int
3FAAB8:  STRD.W          R3, R6, [SP,#0x18+var_18]; CVector *
3FAABC:  MOV             R3, R8; bool
3FAABE:  BLX             j__ZN21CWidgetButtonEnterCar22SetEnterCarVehicleTypeEiibRK7CVectori; CWidgetButtonEnterCar::SetEnterCarVehicleType(int,int,bool,CVector const&,int)
3FAAC2:  MOVS            R0, #0
3FAAC4:  MOVS            R1, #0
3FAAC6:  MOVS            R2, #1
3FAAC8:  MOVS            R6, #0
3FAACA:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
3FAACE:  CMP             R0, #1
3FAAD0:  BNE             loc_3FAA56
3FAAD2:  MOVS            R0, #(stderr+1); this
3FAAD4:  MOVS            R6, #1
3FAAD6:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FAADA:  B               loc_3FAA56
