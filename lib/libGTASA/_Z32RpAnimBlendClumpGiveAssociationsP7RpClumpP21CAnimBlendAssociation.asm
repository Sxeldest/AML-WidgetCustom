; =========================================================
; Game Engine Function: _Z32RpAnimBlendClumpGiveAssociationsP7RpClumpP21CAnimBlendAssociation
; Address            : 0x390CEC - 0x390D20
; =========================================================

390CEC:  PUSH            {R4-R7,LR}
390CEE:  ADD             R7, SP, #0xC
390CF0:  PUSH.W          {R11}
390CF4:  MOV             R4, R1
390CF6:  LDR             R1, =(ClumpOffset_ptr - 0x390CFC)
390CF8:  ADD             R1, PC; ClumpOffset_ptr
390CFA:  LDR             R1, [R1]; ClumpOffset
390CFC:  LDR             R1, [R1]
390CFE:  LDR             R5, [R0,R1]
390D00:  LDR             R6, [R5]
390D02:  CBZ             R6, loc_390D14
390D04:  MOV             R0, R6
390D06:  LDR             R6, [R6]
390D08:  LDR.W           R1, [R0,#-4]!
390D0C:  LDR             R1, [R1,#4]
390D0E:  BLX             R1
390D10:  CMP             R6, #0
390D12:  BNE             loc_390D04
390D14:  ADDS            R0, R4, #4
390D16:  STR             R0, [R5]
390D18:  STR             R5, [R4,#8]
390D1A:  POP.W           {R11}
390D1E:  POP             {R4-R7,PC}
