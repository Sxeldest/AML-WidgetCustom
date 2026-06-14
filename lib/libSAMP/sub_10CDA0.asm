; =========================================================
; Game Engine Function: sub_10CDA0
; Address            : 0x10CDA0 - 0x10CDE8
; =========================================================

10CDA0:  PUSH            {R4,R5,R7,LR}
10CDA2:  ADD             R7, SP, #8
10CDA4:  MOV             R4, R0
10CDA6:  LDR             R0, [R0,#0x10]
10CDA8:  MOV             R5, R1
10CDAA:  MOVS            R1, #0
10CDAC:  CMP             R4, R0
10CDAE:  STR             R1, [R4,#0x10]
10CDB0:  BEQ             loc_10CDB8
10CDB2:  CBZ             R0, loc_10CDC2
10CDB4:  MOVS            R1, #5
10CDB6:  B               loc_10CDBA
10CDB8:  MOVS            R1, #4
10CDBA:  LDR             R2, [R0]
10CDBC:  LDR.W           R1, [R2,R1,LSL#2]
10CDC0:  BLX             R1
10CDC2:  LDR             R0, [R5,#0x10]
10CDC4:  CBZ             R0, loc_10CDD2
10CDC6:  CMP             R5, R0
10CDC8:  BEQ             loc_10CDD8
10CDCA:  STR             R0, [R4,#0x10]
10CDCC:  MOVS            R0, #0
10CDCE:  STR             R0, [R5,#0x10]
10CDD0:  B               loc_10CDE4
10CDD2:  MOVS            R0, #0
10CDD4:  STR             R0, [R4,#0x10]
10CDD6:  B               loc_10CDE4
10CDD8:  STR             R4, [R4,#0x10]
10CDDA:  LDR             R0, [R5,#0x10]
10CDDC:  LDR             R1, [R0]
10CDDE:  LDR             R2, [R1,#0xC]
10CDE0:  MOV             R1, R4
10CDE2:  BLX             R2
10CDE4:  MOV             R0, R4
10CDE6:  POP             {R4,R5,R7,PC}
