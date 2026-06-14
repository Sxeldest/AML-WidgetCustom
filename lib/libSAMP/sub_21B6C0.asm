; =========================================================
; Game Engine Function: sub_21B6C0
; Address            : 0x21B6C0 - 0x21B6CE
; =========================================================

21B6C0:  PUSH            {R7,LR}
21B6C2:  MOV             R7, SP
21B6C4:  LDR             R1, [R1,#0xC]
21B6C6:  LDR             R2, [R1]
21B6C8:  LDR             R2, [R2,#0x18]
21B6CA:  BLX             R2
21B6CC:  POP             {R7,PC}
