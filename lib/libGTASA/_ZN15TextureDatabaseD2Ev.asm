; =========================================================
; Game Engine Function: _ZN15TextureDatabaseD2Ev
; Address            : 0x1E78FC - 0x1E7A4A
; =========================================================

1E78FC:  PUSH            {R4-R7,LR}
1E78FE:  ADD             R7, SP, #0xC
1E7900:  PUSH.W          {R8-R11}
1E7904:  SUB             SP, SP, #4
1E7906:  MOV             R9, R0
1E7908:  LDR             R0, =(_ZTV15TextureDatabase_ptr - 0x1E7912)
1E790A:  LDR.W           R1, [R9,#0x18]
1E790E:  ADD             R0, PC; _ZTV15TextureDatabase_ptr
1E7910:  CMP             R1, #0
1E7912:  LDR             R0, [R0]; `vtable for'TextureDatabase ...
1E7914:  ADD.W           R0, R0, #8
1E7918:  STR.W           R0, [R9]
1E791C:  BEQ             loc_1E794C
1E791E:  MOVS            R4, #0
1E7920:  MOVS            R5, #0
1E7922:  LDR.W           R0, [R9,#0x1C]
1E7926:  LDR             R0, [R0,R4]; p
1E7928:  BLX             free
1E792C:  LDR.W           R0, [R9,#0x1C]
1E7930:  ADD             R0, R4
1E7932:  LDRB            R1, [R0,#0xA]
1E7934:  LSLS            R1, R1, #0x1D
1E7936:  ITT MI
1E7938:  LDRMI.W         R0, [R0,#0x13]; p
1E793C:  BLXMI           free
1E7940:  LDR.W           R0, [R9,#0x18]
1E7944:  ADDS            R5, #1
1E7946:  ADDS            R4, #0x17
1E7948:  CMP             R5, R0
1E794A:  BCC             loc_1E7922
1E794C:  LDR.W           R0, [R9,#0xC]
1E7950:  CBZ             R0, loc_1E796C
1E7952:  MOVS            R4, #0
1E7954:  MOVS            R5, #0
1E7956:  LDR.W           R0, [R9,#0x10]
1E795A:  LDR             R0, [R0,R4]; p
1E795C:  BLX             free
1E7960:  LDR.W           R0, [R9,#0xC]
1E7964:  ADDS            R5, #1
1E7966:  ADDS            R4, #0x14
1E7968:  CMP             R5, R0
1E796A:  BCC             loc_1E7956
1E796C:  LDR.W           R0, [R9,#0x6C]
1E7970:  CBZ             R0, loc_1E798A
1E7972:  MOVS            R4, #0
1E7974:  LDR.W           R0, [R9,#0x70]
1E7978:  LDR.W           R0, [R0,R4,LSL#2]; p
1E797C:  BLX             free
1E7980:  LDR.W           R0, [R9,#0x6C]
1E7984:  ADDS            R4, #1
1E7986:  CMP             R4, R0
1E7988:  BCC             loc_1E7974
1E798A:  LDR.W           R0, [R9,#4]; p
1E798E:  BLX             free
1E7992:  LDR.W           R0, [R9,#0x70]; p
1E7996:  MOV.W           R11, #0
1E799A:  STR.W           R11, [R9,#0x6C]
1E799E:  CBZ             R0, loc_1E79A8
1E79A0:  BLX             free
1E79A4:  STR.W           R11, [R9,#0x70]
1E79A8:  MOV             R6, R9
1E79AA:  STR.W           R11, [R6,#0x68]!
1E79AE:  SUB.W           R0, R6, #0x48 ; 'H'
1E79B2:  STR             R0, [SP,#0x20+var_20]
1E79B4:  LDR.W           R0, [R6,#-8]
1E79B8:  SUB.W           R10, R6, #0xC
1E79BC:  CBZ             R0, loc_1E79EE
1E79BE:  MOVS            R4, #0
1E79C0:  MOVS            R5, #0
1E79C2:  LDR.W           R0, [R6,#-4]
1E79C6:  ADD.W           R8, R0, R4
1E79CA:  LDRB.W          R0, [R8,#0x10]
1E79CE:  CMP             R0, #0
1E79D0:  ITT NE
1E79D2:  LDRNE.W         R0, [R8,#8]; p
1E79D6:  BLXNE           free
1E79DA:  STR.W           R11, [R8,#8]
1E79DE:  ADDS            R4, #0x11
1E79E0:  STR.W           R11, [R8,#0xC]
1E79E4:  ADDS            R5, #1
1E79E6:  LDR.W           R0, [R6,#-8]
1E79EA:  CMP             R5, R0
1E79EC:  BCC             loc_1E79C2
1E79EE:  LDR.W           R0, [R6,#-4]; p
1E79F2:  STR.W           R11, [R6,#-8]
1E79F6:  CBZ             R0, loc_1E7A00
1E79F8:  BLX             free
1E79FC:  STR.W           R11, [R6,#-4]
1E7A00:  STR.W           R11, [R10]
1E7A04:  MOV             R6, R10
1E7A06:  LDR             R0, [SP,#0x20+var_20]
1E7A08:  CMP             R10, R0
1E7A0A:  BNE             loc_1E79B4
1E7A0C:  LDR.W           R0, [R9,#0x1C]; p
1E7A10:  MOVS            R4, #0
1E7A12:  STR.W           R4, [R9,#0x18]
1E7A16:  CBZ             R0, loc_1E7A20
1E7A18:  BLX             free
1E7A1C:  STR.W           R4, [R9,#0x1C]
1E7A20:  LDR.W           R0, [R9,#0x10]; p
1E7A24:  STR.W           R4, [R9,#0xC]
1E7A28:  CMP             R0, #0
1E7A2A:  STR.W           R4, [R9,#0x14]
1E7A2E:  BEQ             loc_1E7A3A
1E7A30:  BLX             free
1E7A34:  MOVS            R0, #0
1E7A36:  STR.W           R0, [R9,#0x10]
1E7A3A:  MOVS            R0, #0
1E7A3C:  STR.W           R0, [R9,#8]
1E7A40:  MOV             R0, R9
1E7A42:  ADD             SP, SP, #4
1E7A44:  POP.W           {R8-R11}
1E7A48:  POP             {R4-R7,PC}
