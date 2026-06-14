; =========================================================
; Game Engine Function: sub_E6FB4
; Address            : 0xE6FB4 - 0xE6FC6
; =========================================================

E6FB4:  PUSH            {R7,LR}
E6FB6:  MOV             R7, SP
E6FB8:  MOV             R2, R0
E6FBA:  LDR             R0, [R0]
E6FBC:  STR             R1, [R2]
E6FBE:  CBZ             R0, locret_E6FC4
E6FC0:  LDR             R1, [R2,#4]
E6FC2:  BLX             R1
E6FC4:  POP             {R7,PC}
