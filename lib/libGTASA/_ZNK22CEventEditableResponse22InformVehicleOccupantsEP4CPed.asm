; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse22InformVehicleOccupantsEP4CPed
; Address            : 0x3709BC - 0x370A7A
; =========================================================

3709BC:  PUSH            {R4-R7,LR}
3709BE:  ADD             R7, SP, #0xC
3709C0:  PUSH.W          {R8-R11}
3709C4:  SUB             SP, SP, #4
3709C6:  MOV             R9, R1
3709C8:  MOV             R5, R0
3709CA:  LDRB.W          R0, [R9,#0x485]
3709CE:  LSLS            R0, R0, #0x1F
3709D0:  BEQ             loc_370A70
3709D2:  LDR             R0, [R5]
3709D4:  MOV             R1, R9
3709D6:  LDR             R2, [R0,#0x38]
3709D8:  MOV             R0, R5
3709DA:  BLX             R2
3709DC:  CMP             R0, #1
3709DE:  BNE             loc_370A70
3709E0:  LDRB            R0, [R5,#9]
3709E2:  CMP             R0, #0
3709E4:  BEQ             loc_370A70
3709E6:  LDR.W           R8, [R9,#0x590]
3709EA:  LDR.W           R4, [R8,#0x464]
3709EE:  CMP             R4, #0
3709F0:  IT NE
3709F2:  CMPNE           R4, R9
3709F4:  BEQ             loc_370A1E
3709F6:  LDR             R0, [R5]
3709F8:  LDR             R1, [R0,#0x14]
3709FA:  MOV             R0, R5
3709FC:  BLX             R1
3709FE:  MOV             R6, R0
370A00:  MOVS            R0, #0xC8
370A02:  STRH            R0, [R6,#0xA]
370A04:  MOVS            R0, #0
370A06:  STRB            R0, [R6,#9]
370A08:  MOV             R1, R6; CEvent *
370A0A:  LDR.W           R0, [R4,#0x440]
370A0E:  MOVS            R2, #0; bool
370A10:  ADDS            R0, #0x68 ; 'h'; this
370A12:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
370A16:  LDR             R0, [R6]
370A18:  LDR             R1, [R0,#4]
370A1A:  MOV             R0, R6
370A1C:  BLX             R1
370A1E:  LDRB.W          R0, [R8,#0x48C]
370A22:  CBZ             R0, loc_370A70
370A24:  ADD.W           R4, R8, #0x468
370A28:  MOV.W           R10, #0
370A2C:  LDR.W           R11, [R4,R10,LSL#2]
370A30:  CMP.W           R11, #0
370A34:  IT NE
370A36:  CMPNE           R11, R9
370A38:  BEQ             loc_370A66
370A3A:  LDR             R0, [R5]
370A3C:  LDR             R1, [R0,#0x14]
370A3E:  MOV             R0, R5
370A40:  BLX             R1
370A42:  MOV             R6, R0
370A44:  MOVS            R0, #0xC8
370A46:  STRH            R0, [R6,#0xA]
370A48:  MOVS            R0, #0
370A4A:  STRB            R0, [R6,#9]
370A4C:  MOV             R1, R6; CEvent *
370A4E:  LDR.W           R0, [R11,#0x440]
370A52:  MOVS            R2, #0; bool
370A54:  ADDS            R0, #0x68 ; 'h'; this
370A56:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
370A5A:  LDR             R0, [R6]
370A5C:  LDR             R1, [R0,#4]
370A5E:  MOV             R0, R6
370A60:  BLX             R1
370A62:  LDRB.W          R0, [R8,#0x48C]
370A66:  ADD.W           R10, R10, #1
370A6A:  UXTB            R1, R0
370A6C:  CMP             R10, R1
370A6E:  BLT             loc_370A2C
370A70:  MOVS            R0, #1
370A72:  ADD             SP, SP, #4
370A74:  POP.W           {R8-R11}
370A78:  POP             {R4-R7,PC}
