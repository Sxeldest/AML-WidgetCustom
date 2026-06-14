; =========================================================
; Game Engine Function: ConfigValueFloat
; Address            : 0x250E40 - 0x250E62
; =========================================================

250E40:  PUSH            {R4,R6,R7,LR}
250E42:  ADD             R7, SP, #8
250E44:  MOV             R4, R2
250E46:  LDR             R2, =(byte_61CD7E - 0x250E4C)
250E48:  ADD             R2, PC; byte_61CD7E
250E4A:  BLX             j_GetConfigValue
250E4E:  LDRB            R1, [R0]
250E50:  CBZ             R1, loc_250E5E
250E52:  MOVS            R1, #0; char **
250E54:  BLX             strtof
250E58:  STR             R0, [R4]
250E5A:  MOVS            R0, #1
250E5C:  POP             {R4,R6,R7,PC}
250E5E:  MOVS            R0, #0
250E60:  POP             {R4,R6,R7,PC}
