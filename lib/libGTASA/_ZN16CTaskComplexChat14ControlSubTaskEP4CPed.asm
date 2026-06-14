; =========================================================
; Game Engine Function: _ZN16CTaskComplexChat14ControlSubTaskEP4CPed
; Address            : 0x5359FC - 0x535A92
; =========================================================

5359FC:  PUSH            {R4-R7,LR}
5359FE:  ADD             R7, SP, #0xC
535A00:  PUSH.W          {R8}
535A04:  MOV             R4, R0
535A06:  MOV             R8, R1
535A08:  LDR             R0, [R4,#0x10]
535A0A:  CBZ             R0, loc_535A88
535A0C:  LDRB            R1, [R4,#0x1A]
535A0E:  CBZ             R1, loc_535A24
535A10:  LDR             R0, [R4,#8]
535A12:  MOVS            R2, #1
535A14:  MOVS            R3, #0
535A16:  MOVS            R6, #0
535A18:  LDR             R1, [R0]
535A1A:  LDR             R5, [R1,#0x1C]
535A1C:  MOV             R1, R8
535A1E:  BLX             R5
535A20:  CBNZ            R0, loc_535A8A
535A22:  LDR             R0, [R4,#0x10]
535A24:  LDR.W           R0, [R0,#0x440]; this
535A28:  MOVW            R1, #0x4C2; int
535A2C:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
535A30:  MOV             R6, R0
535A32:  CBZ             R6, loc_535A50
535A34:  LDR             R0, [R4,#0x14]
535A36:  LDR             R1, [R6,#0x14]
535A38:  CMP             R1, R0
535A3A:  ITT LT
535A3C:  MOVLT           R0, #1
535A3E:  STRBLT          R0, [R4,#0x1A]
535A40:  LDRB            R0, [R6,#0x1A]
535A42:  CBNZ            R0, loc_535A50
535A44:  LDRB            R0, [R6,#0xC]
535A46:  LDRB            R1, [R4,#0xC]
535A48:  CMP             R1, R0
535A4A:  ITT EQ
535A4C:  MOVEQ           R0, #1
535A4E:  STRBEQ          R0, [R4,#0x1A]
535A50:  LDRB            R0, [R4,#0xC]
535A52:  CBZ             R0, loc_535A84
535A54:  MOV             R0, R8; this
535A56:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
535A5A:  CBNZ            R0, loc_535A84
535A5C:  CBZ             R6, loc_535A6E
535A5E:  LDRB            R0, [R6,#0x1A]
535A60:  CBNZ            R0, loc_535A6E
535A62:  LDRB            R0, [R6,#0xC]
535A64:  CMP             R0, #0
535A66:  ITTT EQ
535A68:  MOVEQ           R0, #1
535A6A:  STRBEQ          R0, [R4,#0x1A]
535A6C:  STRBEQ          R0, [R6,#0x1A]
535A6E:  LDR             R0, [R4,#0x1C]
535A70:  CMP             R0, #0x32 ; '2'
535A72:  ADD.W           R1, R0, #1
535A76:  STR             R1, [R4,#0x1C]
535A78:  BLT             loc_535A84
535A7A:  MOVS            R0, #1
535A7C:  CMP             R6, #0
535A7E:  STRB            R0, [R4,#0x1A]
535A80:  IT NE
535A82:  STRBNE          R0, [R6,#0x1A]
535A84:  LDR             R6, [R4,#8]
535A86:  B               loc_535A8A
535A88:  MOVS            R6, #0
535A8A:  MOV             R0, R6
535A8C:  POP.W           {R8}
535A90:  POP             {R4-R7,PC}
