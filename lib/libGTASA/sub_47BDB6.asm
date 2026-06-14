; =========================================================
; Game Engine Function: sub_47BDB6
; Address            : 0x47BDB6 - 0x47BE12
; =========================================================

47BDB6:  PUSH            {R4,R5,R7,LR}
47BDB8:  ADD             R7, SP, #8
47BDBA:  MOV             R4, R0
47BDBC:  MOVS            R1, #1; size
47BDBE:  LDR             R5, [R4,#0x18]
47BDC0:  MOV.W           R2, #0x1000; n
47BDC4:  LDRD.W          R3, R0, [R5,#0x1C]; stream
47BDC8:  BLX             fread
47BDCC:  CBNZ            R0, loc_47BE02
47BDCE:  LDRB.W          R0, [R5,#0x24]
47BDD2:  CBZ             R0, loc_47BDE2
47BDD4:  LDR             R0, [R4]
47BDD6:  MOVS            R1, #0x2A ; '*'
47BDD8:  STR             R1, [R0,#0x14]
47BDDA:  LDR             R0, [R4]
47BDDC:  LDR             R1, [R0]
47BDDE:  MOV             R0, R4
47BDE0:  BLX             R1
47BDE2:  LDR             R0, [R4]
47BDE4:  MOVS            R1, #0x78 ; 'x'
47BDE6:  STR             R1, [R0,#0x14]
47BDE8:  MOV.W           R1, #0xFFFFFFFF
47BDEC:  LDR             R0, [R4]
47BDEE:  LDR             R2, [R0,#4]
47BDF0:  MOV             R0, R4
47BDF2:  BLX             R2
47BDF4:  LDR             R0, [R5,#0x20]
47BDF6:  MOVS            R1, #0xFF
47BDF8:  STRB            R1, [R0]
47BDFA:  MOVS            R1, #0xD9
47BDFC:  LDR             R0, [R5,#0x20]
47BDFE:  STRB            R1, [R0,#1]
47BE00:  MOVS            R0, #2
47BE02:  MOVS            R1, #0
47BE04:  STRB.W          R1, [R5,#0x24]
47BE08:  LDR             R1, [R5,#0x20]
47BE0A:  STRD.W          R1, R0, [R5]
47BE0E:  MOVS            R0, #1
47BE10:  POP             {R4,R5,R7,PC}
