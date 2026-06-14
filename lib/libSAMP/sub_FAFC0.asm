; =========================================================
; Game Engine Function: sub_FAFC0
; Address            : 0xFAFC0 - 0xFAFEC
; =========================================================

FAFC0:  PUSH            {R4,R6,R7,LR}
FAFC2:  ADD             R7, SP, #8
FAFC4:  MOV             R4, R0
FAFC6:  LDR             R0, [R1,#0x10]
FAFC8:  CBZ             R0, loc_FAFD6
FAFCA:  CMP             R1, R0
FAFCC:  BEQ             loc_FAFDC
FAFCE:  LDR             R1, [R0]
FAFD0:  LDR             R1, [R1,#8]
FAFD2:  BLX             R1
FAFD4:  B               loc_FAFD8
FAFD6:  MOVS            R0, #0
FAFD8:  STR             R0, [R4,#0x10]
FAFDA:  B               loc_FAFE8
FAFDC:  STR             R4, [R4,#0x10]
FAFDE:  LDR             R0, [R1,#0x10]
FAFE0:  LDR             R1, [R0]
FAFE2:  LDR             R2, [R1,#0xC]
FAFE4:  MOV             R1, R4
FAFE6:  BLX             R2
FAFE8:  MOV             R0, R4
FAFEA:  POP             {R4,R6,R7,PC}
