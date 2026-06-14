; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19ChooseVehicleColourERhS0_S0_S0_i
; Address            : 0x388BFC - 0x388D18
; =========================================================

388BFC:  PUSH            {R4-R7,LR}
388BFE:  ADD             R7, SP, #0xC
388C00:  PUSH.W          {R8-R11}
388C04:  SUB             SP, SP, #4
388C06:  MOV             R6, R0
388C08:  MOV             R4, R1
388C0A:  LDRB.W          R1, [R6,#0x368]
388C0E:  MOV             R8, R3
388C10:  LDR.W           R9, [R7,#arg_0]
388C14:  MOV             R5, R2
388C16:  CBZ             R1, loc_388C34
388C18:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x388C1E)
388C1A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
388C1C:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
388C1E:  LDRB.W          R0, [R0,#(word_79681B+1 - 0x7967F4)]
388C22:  CBNZ            R0, loc_388C34
388C24:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x388C2A)
388C26:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
388C28:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
388C2A:  LDRB.W          R0, [R0,#(word_79681B - 0x7967F4)]
388C2E:  CBZ             R0, loc_388C4A
388C30:  MOVS            R0, #0x7E ; '~'
388C32:  B               loc_388C36
388C34:  MOVS            R0, #0
388C36:  STRB            R0, [R4]
388C38:  STRB            R0, [R5]
388C3A:  STRB.W          R0, [R8]
388C3E:  STRB.W          R0, [R9]
388C42:  ADD             SP, SP, #4
388C44:  POP.W           {R8-R11}
388C48:  POP             {R4-R7,PC}
388C4A:  LDR.W           R11, [R7,#arg_4]
388C4E:  LDRB.W          R0, [R6,#0x369]
388C52:  ADD             R0, R11
388C54:  BLX             __aeabi_idivmod
388C58:  ADD.W           R10, R6, #0x348
388C5C:  STRB.W          R1, [R6,#0x369]
388C60:  UXTB            R0, R1
388C62:  LDRB.W          R0, [R10,R0]
388C66:  STRB            R0, [R4]
388C68:  LDRB.W          R0, [R6,#0x369]
388C6C:  ADD             R0, R10
388C6E:  LDRB            R0, [R0,#8]
388C70:  STRB            R0, [R5]
388C72:  LDRB.W          R0, [R6,#0x369]
388C76:  ADD             R0, R10
388C78:  LDRB            R0, [R0,#0x10]
388C7A:  STRB.W          R0, [R8]
388C7E:  LDRB.W          R0, [R6,#0x369]
388C82:  ADD             R0, R10
388C84:  LDRB            R0, [R0,#0x18]
388C86:  STRB.W          R0, [R9]
388C8A:  LDRB.W          R0, [R6,#0x368]
388C8E:  CMP             R0, #2
388C90:  BCC             loc_388C42
388C92:  MOV.W           R0, #0xFFFFFFFF; int
388C96:  MOVS            R1, #0; bool
388C98:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
388C9C:  CMP             R0, #0
388C9E:  BEQ             loc_388C42
388CA0:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x388CAA)
388CA2:  LDRSH.W         R2, [R0,#0x26]
388CA6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
388CA8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
388CAA:  LDR.W           R1, [R1,R2,LSL#2]
388CAE:  CMP             R1, R6
388CB0:  BNE             loc_388C42
388CB2:  LDRB            R1, [R4]
388CB4:  LDRB.W          R2, [R0,#0x438]
388CB8:  CMP             R2, R1
388CBA:  BNE             loc_388C42
388CBC:  LDRB            R1, [R5]
388CBE:  LDRB.W          R2, [R0,#0x439]
388CC2:  CMP             R2, R1
388CC4:  BNE             loc_388C42
388CC6:  LDRB.W          R1, [R8]
388CCA:  LDRB.W          R2, [R0,#0x43A]
388CCE:  CMP             R2, R1
388CD0:  BNE             loc_388C42
388CD2:  LDRB.W          R1, [R9]
388CD6:  LDRB.W          R0, [R0,#0x43B]
388CDA:  CMP             R0, R1
388CDC:  BNE             loc_388C42
388CDE:  LDRB.W          R0, [R6,#0x369]
388CE2:  LDRB.W          R1, [R6,#0x368]
388CE6:  ADD             R0, R11
388CE8:  BLX             __aeabi_idivmod
388CEC:  STRB.W          R1, [R6,#0x369]
388CF0:  UXTB            R0, R1
388CF2:  LDRB.W          R0, [R10,R0]
388CF6:  STRB            R0, [R4]
388CF8:  LDRB.W          R0, [R6,#0x369]
388CFC:  ADD             R0, R10
388CFE:  LDRB            R0, [R0,#8]
388D00:  STRB            R0, [R5]
388D02:  LDRB.W          R0, [R6,#0x369]
388D06:  ADD             R0, R10
388D08:  LDRB            R0, [R0,#0x10]
388D0A:  STRB.W          R0, [R8]
388D0E:  LDRB.W          R0, [R6,#0x369]
388D12:  ADD             R0, R10
388D14:  LDRB            R0, [R0,#0x18]
388D16:  B               loc_388C3E
