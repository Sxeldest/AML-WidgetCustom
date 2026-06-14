; =========================================================
; Game Engine Function: sub_17F4A0
; Address            : 0x17F4A0 - 0x17F4C0
; =========================================================

17F4A0:  MOV             R2, #0xFFFFF970
17F4A8:  LDR             R1, [R1,R2]
17F4AA:  CMP             R1, #0
17F4AC:  ITEE NE
17F4AE:  LDRDNE.W        R2, R1, [R1,#4]
17F4B2:  MOVWEQ          R1, #0xFFFF
17F4B6:  MOVEQ.W         R2, #0xFFFFFFFF
17F4BA:  STR             R2, [R0]
17F4BC:  STR             R1, [R0,#4]
17F4BE:  BX              LR
