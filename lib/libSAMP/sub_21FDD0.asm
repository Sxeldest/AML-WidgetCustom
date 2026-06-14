; =========================================================
; Game Engine Function: sub_21FDD0
; Address            : 0x21FDD0 - 0x21FDEC
; =========================================================

21FDD0:  PUSH            {R7,LR}
21FDD2:  MOV             R7, SP
21FDD4:  LDRB            R1, [R0]
21FDD6:  CBZ             R1, loc_21FDE8
21FDD8:  LDR             R1, =(aUtf8 - 0x21FDDE); "UTF-8" ...
21FDDA:  ADD             R1, PC; "UTF-8"
21FDDC:  BLX             strstr
21FDE0:  CMP             R0, #0
21FDE2:  IT NE
21FDE4:  MOVNE           R0, #1
21FDE6:  POP             {R7,PC}
21FDE8:  MOVS            R0, #1
21FDEA:  POP             {R7,PC}
