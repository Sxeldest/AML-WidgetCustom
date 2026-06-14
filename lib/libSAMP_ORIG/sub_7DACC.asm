; =========================================================
; Game Engine Function: sub_7DACC
; Address            : 0x7DACC - 0x7DB26
; =========================================================

7DACC:  PUSH            {R4,R5,R7,LR}
7DACE:  ADD             R7, SP, #8
7DAD0:  MOV             R4, R0
7DAD2:  LDRB            R0, [R0]
7DAD4:  CMP             R0, #0
7DAD6:  ITT NE
7DAD8:  MOVNE           R0, #1
7DADA:  STRBNE          R0, [R4,#2]
7DADC:  LDR             R0, [R4,#0x40]
7DADE:  BLX             j_opus_decoder_destroy
7DAE2:  LDR             R0, =(off_114AAC - 0x7DAE8)
7DAE4:  ADD             R0, PC; off_114AAC
7DAE6:  LDR             R1, [R0]; off_1ABF08
7DAE8:  LDR             R0, [R4,#4]
7DAEA:  LDR             R1, [R1]
7DAEC:  BLX             R1
7DAEE:  LDR             R0, [R4,#0x38]
7DAF0:  ADD.W           R1, R4, #0x28 ; '('
7DAF4:  CMP             R1, R0
7DAF6:  BEQ             loc_7DAFE
7DAF8:  CBZ             R0, loc_7DB08
7DAFA:  MOVS            R1, #5
7DAFC:  B               loc_7DB00
7DAFE:  MOVS            R1, #4
7DB00:  LDR             R2, [R0]
7DB02:  LDR.W           R1, [R2,R1,LSL#2]
7DB06:  BLX             R1
7DB08:  LDR             R0, [R4,#0x20]
7DB0A:  ADD.W           R1, R4, #0x10
7DB0E:  CMP             R1, R0
7DB10:  BEQ             loc_7DB18
7DB12:  CBZ             R0, loc_7DB22
7DB14:  MOVS            R1, #5
7DB16:  B               loc_7DB1A
7DB18:  MOVS            R1, #4
7DB1A:  LDR             R2, [R0]
7DB1C:  LDR.W           R1, [R2,R1,LSL#2]
7DB20:  BLX             R1
7DB22:  MOV             R0, R4
7DB24:  POP             {R4,R5,R7,PC}
