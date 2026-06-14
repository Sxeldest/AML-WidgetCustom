; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDown13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52BCA8 - 0x52BD0C
; =========================================================

52BCA8:  PUSH            {R4-R7,LR}
52BCAA:  ADD             R7, SP, #0xC
52BCAC:  PUSH.W          {R8}
52BCB0:  MOV             R4, R2
52BCB2:  MOV             R8, R3
52BCB4:  MOV             R5, R1
52BCB6:  MOV             R6, R0
52BCB8:  CMP             R4, #1
52BCBA:  BEQ             loc_52BCC6
52BCBC:  CMP             R4, #2
52BCBE:  BNE             loc_52BCEA
52BCC0:  LDR             R0, [R6,#8]
52BCC2:  MOVS            R2, #2
52BCC4:  B               loc_52BCD6
52BCC6:  LDR             R0, [R6,#8]
52BCC8:  LDR             R1, [R0]
52BCCA:  LDR             R1, [R1,#0x14]
52BCCC:  BLX             R1
52BCCE:  CMP             R0, #0xCF
52BCD0:  BEQ             loc_52BD04
52BCD2:  LDR             R0, [R6,#8]
52BCD4:  MOVS            R2, #1
52BCD6:  LDR             R1, [R0]
52BCD8:  LDR.W           R12, [R1,#0x1C]
52BCDC:  MOV             R1, R5
52BCDE:  MOV             R3, R8
52BCE0:  POP.W           {R8}
52BCE4:  POP.W           {R4-R7,LR}
52BCE8:  BX              R12
52BCEA:  LDR             R0, [R6,#8]
52BCEC:  LDR             R1, [R0]
52BCEE:  LDR             R1, [R1,#0x14]
52BCF0:  BLX             R1
52BCF2:  CMP             R0, #0xCF
52BCF4:  BEQ             loc_52BD04
52BCF6:  LDR             R0, [R6,#8]
52BCF8:  MOV             R2, R4
52BCFA:  MOV             R3, R8
52BCFC:  LDR             R1, [R0]
52BCFE:  LDR             R6, [R1,#0x1C]
52BD00:  MOV             R1, R5
52BD02:  BLX             R6
52BD04:  MOVS            R0, #0
52BD06:  POP.W           {R8}
52BD0A:  POP             {R4-R7,PC}
