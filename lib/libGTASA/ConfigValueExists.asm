; =========================================================
; Game Engine Function: ConfigValueExists
; Address            : 0x250DD4 - 0x250DEA
; =========================================================

250DD4:  PUSH            {R7,LR}
250DD6:  MOV             R7, SP
250DD8:  LDR             R2, =(byte_61CD7E - 0x250DDE)
250DDA:  ADD             R2, PC; byte_61CD7E
250DDC:  BLX             j_GetConfigValue
250DE0:  LDRB            R0, [R0]
250DE2:  CMP             R0, #0
250DE4:  IT NE
250DE6:  MOVNE           R0, #1
250DE8:  POP             {R7,PC}
