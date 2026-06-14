; =========================================================
; Game Engine Function: _ZN4CPad8GetBrakeEv
; Address            : 0x3FA95C - 0x3FA9DC
; =========================================================

3FA95C:  PUSH            {R4,R6,R7,LR}
3FA95E:  ADD             R7, SP, #8
3FA960:  SUB             SP, SP, #8
3FA962:  MOV             R4, R0
3FA964:  LDRH.W          R0, [R4,#0x110]
3FA968:  CMP             R0, #0
3FA96A:  ITT EQ
3FA96C:  LDRBEQ.W        R0, [R4,#0x147]
3FA970:  CMPEQ           R0, #0
3FA972:  BEQ             loc_3FA97A
3FA974:  MOVS            R0, #0
3FA976:  ADD             SP, SP, #8
3FA978:  POP             {R4,R6,R7,PC}
3FA97A:  LDRB.W          R1, [R4,#0x118]
3FA97E:  MOVS            R0, #0
3FA980:  CMP             R1, #0
3FA982:  BNE             loc_3FA976
3FA984:  ADD             R1, SP, #0x10+var_C
3FA986:  STR             R0, [SP,#0x10+var_C]
3FA988:  MOVS            R0, #6
3FA98A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FA98E:  CMP             R0, #1
3FA990:  BNE             loc_3FA9AA
3FA992:  VLDR            S0, =255.0
3FA996:  VLDR            S2, [SP,#0x10+var_C]
3FA99A:  VMUL.F32        S0, S2, S0
3FA99E:  VCVT.S32.F32    S0, S0
3FA9A2:  VMOV            R0, S0
3FA9A6:  ADD             SP, SP, #8
3FA9A8:  POP             {R4,R6,R7,PC}
3FA9AA:  MOVS            R0, #3
3FA9AC:  MOVS            R1, #0
3FA9AE:  MOVS            R2, #1
3FA9B0:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FA9B4:  CMP             R0, #0
3FA9B6:  ITT EQ
3FA9B8:  LDRBEQ.W        R0, [R4,#0x11C]; this
3FA9BC:  CMPEQ           R0, #0
3FA9BE:  BEQ             loc_3FA9CC
3FA9C0:  MOVS            R0, #byte_8; this
3FA9C2:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FA9C6:  MOVS            R0, #0xFF
3FA9C8:  ADD             SP, SP, #8
3FA9CA:  POP             {R4,R6,R7,PC}
3FA9CC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FA9D0:  CMP             R0, #0
3FA9D2:  BNE             loc_3FA974
3FA9D4:  LDRH            R0, [R4,#0x1C]
3FA9D6:  CMP             R0, #0
3FA9D8:  BNE             loc_3FA9C6
3FA9DA:  B               loc_3FA974
