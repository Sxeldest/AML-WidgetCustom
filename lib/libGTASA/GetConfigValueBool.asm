; =========================================================
; Game Engine Function: GetConfigValueBool
; Address            : 0x250E68 - 0x250EB4
; =========================================================

250E68:  PUSH            {R4,R5,R7,LR}
250E6A:  ADD             R7, SP, #8
250E6C:  MOV             R4, R2
250E6E:  LDR             R2, =(byte_61CD7E - 0x250E74)
250E70:  ADD             R2, PC; byte_61CD7E
250E72:  BLX             j_GetConfigValue
250E76:  MOV             R5, R0
250E78:  LDRB            R0, [R5]
250E7A:  CBZ             R0, loc_250EA4
250E7C:  LDR             R1, =(aTrue_0 - 0x250E84); "true"
250E7E:  MOV             R0, R5; char *
250E80:  ADD             R1, PC; "true"
250E82:  BLX             strcasecmp
250E86:  CBZ             R0, loc_250EAE
250E88:  ADR             R1, dword_250EBC; char *
250E8A:  MOV             R0, R5; char *
250E8C:  BLX             strcasecmp
250E90:  CBZ             R0, loc_250EAE
250E92:  ADR             R1, dword_250EC0; char *
250E94:  MOV             R0, R5; char *
250E96:  BLX             strcasecmp
250E9A:  CBZ             R0, loc_250EAE
250E9C:  MOV             R0, R5; char *
250E9E:  BLX             atoi
250EA2:  MOV             R4, R0
250EA4:  CMP             R4, #0
250EA6:  IT NE
250EA8:  MOVNE           R4, #1
250EAA:  MOV             R0, R4
250EAC:  POP             {R4,R5,R7,PC}
250EAE:  MOVS            R4, #1
250EB0:  MOV             R0, R4
250EB2:  POP             {R4,R5,R7,PC}
