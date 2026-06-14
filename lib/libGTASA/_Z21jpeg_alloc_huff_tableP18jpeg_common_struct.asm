; =========================================================
; Game Engine Function: _Z21jpeg_alloc_huff_tableP18jpeg_common_struct
; Address            : 0x47A0CA - 0x47A0E2
; =========================================================

47A0CA:  PUSH            {R4,R6,R7,LR}
47A0CC:  ADD             R7, SP, #8
47A0CE:  LDR             R1, [R0,#4]
47A0D0:  MOV.W           R2, #0x112
47A0D4:  MOVS            R4, #0
47A0D6:  LDR             R3, [R1]
47A0D8:  MOVS            R1, #0
47A0DA:  BLX             R3
47A0DC:  STRB.W          R4, [R0,#0x111]
47A0E0:  POP             {R4,R6,R7,PC}
