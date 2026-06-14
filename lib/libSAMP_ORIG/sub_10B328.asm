; =========================================================
; Game Engine Function: sub_10B328
; Address            : 0x10B328 - 0x10B348
; =========================================================

10B328:  PUSH            {R11,LR}
10B32C:  MOV             R11, SP
10B330:  LDR             R1, [R0]
10B334:  LDR             R2, [R1,#0xC]
10B338:  MOV             R1, #0xFFFFFFFF
10B33C:  BLX             R2
10B340:  MOV             R0, #0
10B344:  POP             {R11,PC}
