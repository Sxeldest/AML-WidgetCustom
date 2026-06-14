; =========================================================
; Game Engine Function: sub_47BC78
; Address            : 0x47BC78 - 0x47BC96
; =========================================================

47BC78:  PUSH            {R4,R5,R7,LR}
47BC7A:  ADD             R7, SP, #8
47BC7C:  LDR             R1, [R0,#4]
47BC7E:  MOV.W           R2, #0x1000
47BC82:  LDR             R4, [R0,#0x18]
47BC84:  MOV.W           R5, #0x1000
47BC88:  LDR             R3, [R1]
47BC8A:  MOVS            R1, #1
47BC8C:  BLX             R3
47BC8E:  STR             R0, [R4,#0x18]
47BC90:  STRD.W          R0, R5, [R4]
47BC94:  POP             {R4,R5,R7,PC}
