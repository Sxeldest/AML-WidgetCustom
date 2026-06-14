; =========================================================
; Game Engine Function: png_image_write_to_file
; Address            : 0x205594 - 0x205654
; =========================================================

205594:  PUSH            {R4-R7,LR}
205596:  ADD             R7, SP, #0xC
205598:  PUSH.W          {R8-R11}
20559C:  SUB             SP, SP, #0xC
20559E:  MOV             R4, R0
2055A0:  MOV             R6, R3
2055A2:  MOV             R5, R2
2055A4:  MOV             R9, R1
2055A6:  CMP             R4, #0
2055A8:  BEQ             loc_205636
2055AA:  LDR             R0, [R4,#4]
2055AC:  CMP             R0, #1
2055AE:  BNE             loc_205606
2055B0:  CMP.W           R9, #0
2055B4:  IT NE
2055B6:  CMPNE           R6, #0
2055B8:  BEQ             loc_20560A
2055BA:  ADR             R1, aWb; "wb"
2055BC:  MOV             R0, R9; filename
2055BE:  LDRD.W          R11, R10, [R7,#arg_0]
2055C2:  BLX             fopen
2055C6:  MOV             R8, R0
2055C8:  CMP.W           R8, #0
2055CC:  BEQ             loc_20560E
2055CE:  MOV             R0, R4
2055D0:  MOV             R1, R8
2055D2:  MOV             R2, R5
2055D4:  MOV             R3, R6
2055D6:  STRD.W          R11, R10, [SP,#0x28+var_28]
2055DA:  BLX             j_png_image_write_to_stdio
2055DE:  CBZ             R0, loc_20562A
2055E0:  MOV             R0, R8; stream
2055E2:  BLX             fflush
2055E6:  CBNZ            R0, loc_2055F0
2055E8:  MOV             R0, R8; stream
2055EA:  BLX             ferror
2055EE:  CBZ             R0, loc_205640
2055F0:  BLX             __errno
2055F4:  LDR             R5, [R0]
2055F6:  MOV             R0, R8; stream
2055F8:  BLX             fclose
2055FC:  MOV             R0, R9; filename
2055FE:  BLX             remove
205602:  MOV             R0, R5
205604:  B               loc_205614
205606:  ADR             R1, aPngImageWriteT_6; "png_image_write_to_file: incorrect PNG_"...
205608:  B               loc_20561A
20560A:  ADR             R1, aPngImageWriteT_7; "png_image_write_to_file: invalid argume"...
20560C:  B               loc_20561A
20560E:  BLX             __errno
205612:  LDR             R0, [R0]; int
205614:  BLX             strerror
205618:  MOV             R1, R0
20561A:  MOV             R0, R4
20561C:  ADD             SP, SP, #0xC
20561E:  POP.W           {R8-R11}
205622:  POP.W           {R4-R7,LR}
205626:  B.W             j_j_png_image_error
20562A:  MOV             R0, R8; stream
20562C:  BLX             fclose
205630:  MOV             R0, R9; filename
205632:  BLX             remove
205636:  MOVS            R0, #0
205638:  ADD             SP, SP, #0xC
20563A:  POP.W           {R8-R11}
20563E:  POP             {R4-R7,PC}
205640:  MOV             R0, R8; stream
205642:  BLX             fclose
205646:  CBZ             R0, loc_205650
205648:  BLX             __errno
20564C:  LDR             R5, [R0]
20564E:  B               loc_2055FC
205650:  MOVS            R0, #1
205652:  B               loc_205638
