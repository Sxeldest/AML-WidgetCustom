; =========================================================
; Game Engine Function: sub_1413C0
; Address            : 0x1413C0 - 0x1413D6
; =========================================================

1413C0:  PUSH            {R4,R6,R7,LR}
1413C2:  ADD             R7, SP, #8
1413C4:  MOV             R4, R0
1413C6:  ADDS            R0, #0x70 ; 'p'; dest
1413C8:  MOVS            R2, #0x2E ; '.'; n
1413CA:  BLX             j_memcpy
1413CE:  MOVS            R0, #1
1413D0:  STRB.W          R0, [R4,#0x24]
1413D4:  POP             {R4,R6,R7,PC}
