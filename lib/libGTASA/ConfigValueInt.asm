; =========================================================
; Game Engine Function: ConfigValueInt
; Address            : 0x250DF0 - 0x250E14
; =========================================================

250DF0:  PUSH            {R4,R6,R7,LR}
250DF2:  ADD             R7, SP, #8
250DF4:  MOV             R4, R2
250DF6:  LDR             R2, =(byte_61CD7E - 0x250DFC)
250DF8:  ADD             R2, PC; byte_61CD7E
250DFA:  BLX             j_GetConfigValue
250DFE:  LDRB            R1, [R0]
250E00:  CBZ             R1, loc_250E10
250E02:  MOVS            R1, #0; char **
250E04:  MOVS            R2, #0; int
250E06:  BLX             strtol
250E0A:  STR             R0, [R4]
250E0C:  MOVS            R0, #1
250E0E:  POP             {R4,R6,R7,PC}
250E10:  MOVS            R0, #0
250E12:  POP             {R4,R6,R7,PC}
