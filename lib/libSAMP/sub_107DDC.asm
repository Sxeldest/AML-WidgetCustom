; =========================================================
; Game Engine Function: sub_107DDC
; Address            : 0x107DDC - 0x107E60
; =========================================================

107DDC:  PUSH            {R4,R5,R7,LR}
107DDE:  ADD             R7, SP, #8
107DE0:  SUB             SP, SP, #0x90
107DE2:  MOV             R4, R0
107DE4:  ADD             R0, SP, #0x98+dest; int
107DE6:  MOVS            R1, #0x41 ; 'A'; n
107DE8:  BLX             sub_22178C
107DEC:  MOV             R0, SP; int
107DEE:  MOVS            R1, #0x41 ; 'A'; n
107DF0:  BLX             sub_22178C
107DF4:  MOV             R0, R4; char *
107DF6:  MOVS            R1, #0x3A ; ':'; int
107DF8:  MOVW            R2, #0x321; size_t
107DFC:  BLX             __strchr_chk
107E00:  CBZ             R0, loc_107E5C
107E02:  MOV             R5, R0
107E04:  MOV             R0, R4; s
107E06:  BLX             strlen
107E0A:  CMP             R0, #0x3F ; '?'
107E0C:  BHI             loc_107E5C
107E0E:  MOV             R0, R4; char *
107E10:  MOVS            R1, #0x5C ; '\'; int
107E12:  MOVW            R2, #0x321; size_t
107E16:  BLX             __strchr_chk
107E1A:  CBNZ            R0, loc_107E5C
107E1C:  MOV             R0, R4; char *
107E1E:  MOVS            R1, #0x2F ; '/'; int
107E20:  MOVW            R2, #0x321; size_t
107E24:  BLX             __strchr_chk
107E28:  CBNZ            R0, loc_107E5C
107E2A:  SUBS            R2, R5, R4; n
107E2C:  ADD             R0, SP, #0x98+dest; dest
107E2E:  MOV             R1, R4; src
107E30:  BLX             strncpy
107E34:  ADDS            R1, R5, #1
107E36:  MOV             R0, SP
107E38:  MOVS            R2, #0x41 ; 'A'
107E3A:  BLX             __strcpy_chk
107E3E:  LDR.W           R0, [R4,#0x9A8]
107E42:  ADDS            R0, #1
107E44:  BEQ             loc_107E5C
107E46:  ADD             R0, SP, #0x98+dest
107E48:  MOV             R1, SP
107E4A:  BL              sub_1085C0
107E4E:  LDR             R1, =(off_234B00 - 0x107E58)
107E50:  LDR.W           R2, [R4,#0x9A8]
107E54:  ADD             R1, PC; off_234B00
107E56:  LDR             R1, [R1]; unk_2629D0
107E58:  STR.W           R0, [R1,R2,LSL#2]
107E5C:  ADD             SP, SP, #0x90
107E5E:  POP             {R4,R5,R7,PC}
