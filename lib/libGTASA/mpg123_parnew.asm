; =========================================================
; Game Engine Function: mpg123_parnew
; Address            : 0x22EEEC - 0x22EFC6
; =========================================================

22EEEC:  PUSH            {R4-R7,LR}
22EEEE:  ADD             R7, SP, #0xC
22EEF0:  PUSH.W          {R8,R9,R11}
22EEF4:  MOV             R4, R0
22EEF6:  LDR             R0, =(byte_6D6158 - 0x22EF00)
22EEF8:  MOV             R8, R2
22EEFA:  MOV             R6, R1
22EEFC:  ADD             R0, PC; byte_6D6158
22EEFE:  LDRB            R0, [R0]
22EF00:  CMP             R0, #1
22EF02:  BNE             loc_22EF4A
22EF04:  MOVW            R0, #0xB558; byte_count
22EF08:  BLX             malloc
22EF0C:  MOV             R5, R0
22EF0E:  CBZ             R5, loc_22EF4E
22EF10:  MOV             R0, R5
22EF12:  MOV             R1, R4
22EF14:  BLX             j_INT123_frame_init_par
22EF18:  MOV             R0, R5; int
22EF1A:  MOV             R1, R6; char *
22EF1C:  BLX             j_INT123_frame_cpu_opt
22EF20:  MOVW            R0, #0xB2A0
22EF24:  MOVW            R9, #0xB2C0
22EF28:  ADDS            R6, R5, R0
22EF2A:  LDR.W           R0, [R5,R9]
22EF2E:  CBZ             R0, loc_22EF5C
22EF30:  LDR             R0, [R6]; p
22EF32:  CBZ             R0, loc_22EF60
22EF34:  MOVW            R1, #0xB2AC
22EF38:  ADDS            R4, R5, R1
22EF3A:  LDR             R2, [R5,R1]
22EF3C:  CMP.W           R2, #0x48000
22EF40:  BNE             loc_22EF68
22EF42:  MOV.W           R0, #0x48000
22EF46:  STR             R0, [R4]
22EF48:  B               loc_22EF84
22EF4A:  MOVS            R0, #8
22EF4C:  B               loc_22EF50
22EF4E:  MOVS            R0, #0
22EF50:  CMP             R0, #0
22EF52:  MOV.W           R5, #0
22EF56:  IT EQ
22EF58:  MOVEQ           R0, #7
22EF5A:  B               loc_22EFB4
22EF5C:  MOVS            R0, #0
22EF5E:  STR             R0, [R6]
22EF60:  MOVW            R0, #0xB2AC
22EF64:  ADDS            R4, R5, R0
22EF66:  B               loc_22EF70
22EF68:  BLX             free
22EF6C:  MOVS            R0, #0
22EF6E:  STR             R0, [R6]
22EF70:  MOV.W           R0, #0x48000
22EF74:  STR             R0, [R4]
22EF76:  MOV.W           R0, #0x48000; byte_count
22EF7A:  BLX             malloc
22EF7E:  CMP             R0, #0
22EF80:  STR             R0, [R6]
22EF82:  BEQ             loc_22EF9C
22EF84:  ADD.W           R0, R5, R9
22EF88:  MOVS            R1, #1
22EF8A:  STR             R1, [R0]
22EF8C:  MOVW            R0, #0xB46C
22EF90:  STR             R1, [R5,R0]
22EF92:  MOVS            R0, #0
22EF94:  MOVW            R1, #0xB2A8
22EF98:  STR             R0, [R5,R1]
22EF9A:  B               loc_22EFB4
22EF9C:  MOVW            R0, #0xB468
22EFA0:  MOVS            R1, #7
22EFA2:  STR             R1, [R5,R0]
22EFA4:  MOV             R0, R5
22EFA6:  BLX             j_INT123_frame_exit
22EFAA:  MOV             R0, R5; p
22EFAC:  BLX             free
22EFB0:  MOVS            R0, #0xB
22EFB2:  MOVS            R5, #0
22EFB4:  CMP.W           R8, #0
22EFB8:  IT NE
22EFBA:  STRNE.W         R0, [R8]
22EFBE:  MOV             R0, R5
22EFC0:  POP.W           {R8,R9,R11}
22EFC4:  POP             {R4-R7,PC}
