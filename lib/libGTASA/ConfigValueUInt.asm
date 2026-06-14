; =========================================================
; Game Engine Function: ConfigValueUInt
; Address            : 0x250E18 - 0x250E3C
; =========================================================

250E18:  PUSH            {R4,R6,R7,LR}
250E1A:  ADD             R7, SP, #8
250E1C:  MOV             R4, R2
250E1E:  LDR             R2, =(byte_61CD7E - 0x250E24)
250E20:  ADD             R2, PC; byte_61CD7E
250E22:  BLX             j_GetConfigValue
250E26:  LDRB            R1, [R0]
250E28:  CBZ             R1, loc_250E38
250E2A:  MOVS            R1, #0; char **
250E2C:  MOVS            R2, #0; int
250E2E:  BLX             strtoul
250E32:  STR             R0, [R4]
250E34:  MOVS            R0, #1
250E36:  POP             {R4,R6,R7,PC}
250E38:  MOVS            R0, #0
250E3A:  POP             {R4,R6,R7,PC}
