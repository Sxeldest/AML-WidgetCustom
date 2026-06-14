; =========================================================
; Game Engine Function: sub_21FD7C
; Address            : 0x21FD7C - 0x21FDC0
; =========================================================

21FD7C:  PUSH            {R4,R6,R7,LR}
21FD7E:  ADD             R7, SP, #8
21FD80:  MOV             R4, R0
21FD82:  LDRB            R0, [R0]
21FD84:  CBZ             R0, loc_21FDBC
21FD86:  LDR             R1, =(unk_84F93 - 0x21FD8E)
21FD88:  MOV             R0, R4; s1
21FD8A:  ADD             R1, PC; unk_84F93 ; s2
21FD8C:  BLX             strcmp
21FD90:  CBZ             R0, loc_21FDBC
21FD92:  LDR             R1, =(aCUtf8 - 0x21FD9A); "C.UTF-8" ...
21FD94:  MOV             R0, R4; s1
21FD96:  ADD             R1, PC; "C.UTF-8"
21FD98:  BLX             strcmp
21FD9C:  CBZ             R0, loc_21FDBC
21FD9E:  LDR             R1, =(aEnUsUtf8 - 0x21FDA6); "en_US.UTF-8" ...
21FDA0:  MOV             R0, R4; s1
21FDA2:  ADD             R1, PC; "en_US.UTF-8"
21FDA4:  BLX             strcmp
21FDA8:  CBZ             R0, loc_21FDBC
21FDAA:  LDR             R1, =(aPosix - 0x21FDB2); "POSIX" ...
21FDAC:  MOV             R0, R4; s1
21FDAE:  ADD             R1, PC; "POSIX"
21FDB0:  BLX             strcmp
21FDB4:  CLZ.W           R0, R0
21FDB8:  LSRS            R0, R0, #5
21FDBA:  POP             {R4,R6,R7,PC}
21FDBC:  MOVS            R0, #1
21FDBE:  POP             {R4,R6,R7,PC}
