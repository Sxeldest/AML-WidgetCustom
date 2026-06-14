; =========================================================
; Game Engine Function: sub_FD228
; Address            : 0xFD228 - 0xFD246
; =========================================================

FD228:  CBZ             R0, loc_FD23C
FD22A:  LDR             R1, =(off_234AA8 - 0xFD230)
FD22C:  ADD             R1, PC; off_234AA8
FD22E:  LDR             R1, [R1]; byte_2633CC
FD230:  LDRB            R1, [R1]
FD232:  CBZ             R1, loc_FD23C
FD234:  LDR             R1, =(off_247500 - 0xFD23A)
FD236:  ADD             R1, PC; off_247500
FD238:  LDR             R1, [R1]
FD23A:  BX              R1
FD23C:  MOV             R0, #0x3E4CCCCD
FD244:  BX              LR
