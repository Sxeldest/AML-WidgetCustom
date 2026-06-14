; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c10UpdatePedsEv
; Address            : 0x449A00 - 0x449A5C
; =========================================================

449A00:  PUSH            {R4-R7,LR}
449A02:  ADD             R7, SP, #0xC
449A04:  PUSH.W          {R11}
449A08:  MOV             R4, R0
449A0A:  LDR             R0, [R4,#0x30]
449A0C:  CBZ             R0, loc_449A56
449A0E:  LDR             R0, =(g_interiorMan_ptr - 0x449A18)
449A10:  MOVW            R1, #(byte_99D8E6 - 0x999194)
449A14:  ADD             R0, PC; g_interiorMan_ptr
449A16:  LDR             R0, [R0]; g_interiorMan
449A18:  LDRB            R0, [R0,R1]
449A1A:  CBZ             R0, loc_449A56
449A1C:  MOVS            R5, #0x1E
449A1E:  MOVS            R6, #0
449A20:  LDR.W           R0, [R4,R5,LSL#2]; this
449A24:  CBZ             R0, loc_449A3C
449A26:  BLX             j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
449A2A:  CMP             R0, #1
449A2C:  BNE             loc_449A38
449A2E:  LDR.W           R1, [R4,R5,LSL#2]; CPed *
449A32:  MOV             R0, R4; this
449A34:  BLX             j__ZN15InteriorGroup_c9RemovePedEP4CPed; InteriorGroup_c::RemovePed(CPed *)
449A38:  STR.W           R6, [R4,R5,LSL#2]
449A3C:  ADDS            R5, #1
449A3E:  CMP             R5, #0x2E ; '.'
449A40:  BNE             loc_449A20
449A42:  LDRB            R0, [R4,#0xE]
449A44:  CMP             R0, #2
449A46:  BNE             loc_449A56
449A48:  MOV             R0, R4; this
449A4A:  POP.W           {R11}
449A4E:  POP.W           {R4-R7,LR}
449A52:  B.W             _ZN15InteriorGroup_c16UpdateOfficePedsEv; InteriorGroup_c::UpdateOfficePeds(void)
449A56:  POP.W           {R11}
449A5A:  POP             {R4-R7,PC}
