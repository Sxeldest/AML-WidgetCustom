; =========================================================
; Game Engine Function: _Z17jpeg_write_markerP20jpeg_compress_structiPKhj
; Address            : 0x475FB2 - 0x476016
; =========================================================

475FB2:  PUSH            {R4-R7,LR}
475FB4:  ADD             R7, SP, #0xC
475FB6:  PUSH.W          {R8,R9,R11}
475FBA:  MOV             R9, R0
475FBC:  MOV             R4, R3
475FBE:  LDR.W           R0, [R9,#0xD0]
475FC2:  MOV             R5, R2
475FC4:  MOV             R8, R1
475FC6:  CBNZ            R0, loc_475FD2
475FC8:  LDR.W           R0, [R9,#0x14]
475FCC:  SUBS            R0, #0x65 ; 'e'
475FCE:  CMP             R0, #3
475FD0:  BCC             loc_475FEE
475FD2:  LDR.W           R0, [R9]
475FD6:  MOVS            R1, #0x14
475FD8:  STR             R1, [R0,#0x14]
475FDA:  LDR.W           R0, [R9]
475FDE:  LDR.W           R1, [R9,#0x14]
475FE2:  STR             R1, [R0,#0x18]
475FE4:  LDR.W           R0, [R9]
475FE8:  LDR             R1, [R0]
475FEA:  MOV             R0, R9
475FEC:  BLX             R1
475FEE:  LDR.W           R0, [R9,#0x14C]
475FF2:  MOV             R1, R8
475FF4:  MOV             R2, R4
475FF6:  LDR             R3, [R0,#0x14]
475FF8:  MOV             R0, R9
475FFA:  BLX             R3
475FFC:  CBZ             R4, loc_476010
475FFE:  LDR.W           R0, [R9,#0x14C]
476002:  LDR             R6, [R0,#0x18]
476004:  LDRB.W          R1, [R5],#1
476008:  MOV             R0, R9
47600A:  BLX             R6
47600C:  SUBS            R4, #1
47600E:  BNE             loc_476004
476010:  POP.W           {R8,R9,R11}
476014:  POP             {R4-R7,PC}
