; =========================================================
; Game Engine Function: sub_832B0
; Address            : 0x832B0 - 0x83318
; =========================================================

832B0:  PUSH            {R4,R5,R7,LR}
832B2:  ADD             R7, SP, #8
832B4:  LDR             R0, =(byte_1A49FC - 0x832BA)
832B6:  ADD             R0, PC; byte_1A49FC
832B8:  LDRB            R0, [R0]
832BA:  CBZ             R0, locret_83316
832BC:  LDR             R0, =(byte_1A4A24 - 0x832C2)
832BE:  ADD             R0, PC; byte_1A4A24
832C0:  LDRB            R0, [R0]
832C2:  CBZ             R0, locret_83316
832C4:  LDR             R0, =(off_114CC0 - 0x832CC)
832C6:  LDR             R4, =(dword_1A4A1C - 0x832CE)
832C8:  ADD             R0, PC; off_114CC0
832CA:  ADD             R4, PC; dword_1A4A1C
832CC:  LDR             R5, [R0]; off_1ABF44
832CE:  LDR             R0, [R4]
832D0:  LDR             R3, [R5]
832D2:  MOVS            R1, #0
832D4:  MOVS            R2, #0
832D6:  BLX             R3
832D8:  MOV             R2, R0
832DA:  SUBS            R0, #1
832DC:  CMN.W           R0, #2
832E0:  BCS             locret_83316
832E2:  LDR             R1, =(unk_1A4A26 - 0x832EE)
832E4:  CMP.W           R2, #0x2580
832E8:  LDR             R0, [R4]
832EA:  ADD             R1, PC; unk_1A4A26
832EC:  LDR             R3, [R5]
832EE:  IT CS
832F0:  MOVCS.W         R2, #0x2580
832F4:  BLX             R3
832F6:  MOV             R2, R0
832F8:  SUBS            R0, #1
832FA:  CMN.W           R0, #3
832FE:  IT HI
83300:  POPHI           {R4,R5,R7,PC}
83302:  LDR             R0, =(off_114CCC - 0x8330A)
83304:  LDR             R1, =(dword_1A4A20 - 0x8330C)
83306:  ADD             R0, PC; off_114CCC
83308:  ADD             R1, PC; dword_1A4A20
8330A:  LDR             R3, [R0]; off_1ABF4C
8330C:  LDR             R0, [R1]
8330E:  LDR             R3, [R3]
83310:  LDR             R1, =(unk_1A4A26 - 0x83316)
83312:  ADD             R1, PC; unk_1A4A26
83314:  BLX             R3
83316:  POP             {R4,R5,R7,PC}
