; =========================================================
; Game Engine Function: _Z21jinit_color_converterP20jpeg_compress_struct
; Address            : 0x476910 - 0x476A92
; =========================================================

476910:  PUSH            {R4,R5,R7,LR}
476912:  ADD             R7, SP, #8
476914:  MOV             R4, R0
476916:  MOVS            R1, #1
476918:  LDR             R0, [R4,#4]
47691A:  MOVS            R2, #0xC
47691C:  LDR             R3, [R0]
47691E:  MOV             R0, R4
476920:  BLX             R3
476922:  MOV             R5, R0
476924:  LDR             R0, =(nullsub_19+1 - 0x47692E)
476926:  STR.W           R5, [R4,#0x150]
47692A:  ADD             R0, PC; nullsub_19
47692C:  STR             R0, [R5]
47692E:  LDR             R0, [R4,#0x28]
476930:  SUBS            R0, #1; switch 5 cases
476932:  CMP             R0, #4
476934:  BHI.W           def_476938; jumptable 00476938 default case
476938:  TBB.W           [PC,R0]; switch jump
47693C:  DCB 0x2C; jump table for switch statement
47693D:  DCB 3
47693E:  DCB 0x30
47693F:  DCB 3
476940:  DCB 3
476941:  ALIGN 2
476942:  LDR             R0, [R4,#0x24]; jumptable 00476938 cases 2,4,5
476944:  CMP             R0, #4
476946:  BEQ             loc_476956
476948:  LDR             R0, [R4]
47694A:  MOVS            R1, #9
47694C:  STR             R1, [R0,#0x14]
47694E:  LDR             R0, [R4]
476950:  LDR             R1, [R0]
476952:  MOV             R0, R4
476954:  BLX             R1
476956:  LDR             R1, [R4,#0x40]
476958:  SUBS            R0, R1, #1; switch 5 cases
47695A:  CMP             R0, #4
47695C:  BHI.W           def_476960; jumptable 00476960 default case
476960:  TBB.W           [PC,R0]; switch jump
476964:  DCB 3; jump table for switch statement
476965:  DCB 0x20
476966:  DCB 0x2B
476967:  DCB 0x3F
476968:  DCB 0x50
476969:  ALIGN 2
47696A:  LDR             R0, [R4,#0x3C]; jumptable 00476960 case 1
47696C:  CMP             R0, #1
47696E:  BEQ             loc_47697E
476970:  LDR             R0, [R4]
476972:  MOVS            R1, #0xA
476974:  STR             R1, [R0,#0x14]
476976:  LDR             R0, [R4]
476978:  LDR             R1, [R0]
47697A:  MOV             R0, R4
47697C:  BLX             R1
47697E:  LDR             R0, [R4,#0x28]
476980:  CMP             R0, #3
476982:  BEQ             loc_476A7C
476984:  CMP             R0, #2
476986:  BEQ             loc_476A84
476988:  CMP             R0, #1
47698A:  BNE             loc_476A2C
47698C:  LDR             R0, =(sub_476ACA+1 - 0x476992)
47698E:  ADD             R0, PC; sub_476ACA
476990:  STR             R0, [R5,#4]
476992:  POP             {R4,R5,R7,PC}
476994:  LDR             R0, [R4,#0x24]; jumptable 00476938 case 1
476996:  CMP             R0, #1
476998:  BNE             loc_476948
47699A:  B               loc_476956
47699C:  LDR             R0, [R4,#0x24]; jumptable 00476938 case 3
47699E:  CMP             R0, #3
4769A0:  BNE             loc_476948
4769A2:  B               loc_476956
4769A4:  LDR             R0, [R4,#0x3C]; jumptable 00476960 case 2
4769A6:  CMP             R0, #3
4769A8:  BEQ             loc_476A2C
4769AA:  LDR             R0, [R4]
4769AC:  MOVS            R1, #0xA
4769AE:  STR             R1, [R0,#0x14]
4769B0:  LDR             R0, [R4]
4769B2:  LDR             R1, [R0]
4769B4:  MOV             R0, R4
4769B6:  BLX             R1
4769B8:  B               loc_476A2C
4769BA:  LDR             R0, [R4,#0x3C]; jumptable 00476960 case 3
4769BC:  CMP             R0, #3
4769BE:  BEQ             loc_4769CE
4769C0:  LDR             R0, [R4]
4769C2:  MOVS            R1, #0xA
4769C4:  STR             R1, [R0,#0x14]
4769C6:  LDR             R0, [R4]
4769C8:  LDR             R1, [R0]
4769CA:  MOV             R0, R4
4769CC:  BLX             R1
4769CE:  LDR             R0, [R4,#0x28]
4769D0:  CMP             R0, #3
4769D2:  BEQ             loc_476A6C
4769D4:  CMP             R0, #2
4769D6:  BNE             loc_476A2C
4769D8:  LDR             R0, =(sub_476D94+1 - 0x4769E0)
4769DA:  LDR             R1, =(sub_476B20+1 - 0x4769E2)
4769DC:  ADD             R0, PC; sub_476D94
4769DE:  ADD             R1, PC; sub_476B20
4769E0:  B               loc_476A8C
4769E2:  LDR             R0, [R4,#0x3C]; jumptable 00476960 case 4
4769E4:  CMP             R0, #4
4769E6:  BEQ             loc_4769F6
4769E8:  LDR             R0, [R4]
4769EA:  MOVS            R1, #0xA
4769EC:  STR             R1, [R0,#0x14]
4769EE:  LDR             R0, [R4]
4769F0:  LDR             R1, [R0]
4769F2:  MOV             R0, R4
4769F4:  BLX             R1
4769F6:  LDR             R0, [R4,#0x28]
4769F8:  CMP             R0, #4
4769FA:  BNE             loc_476A2C
4769FC:  LDR             R0, =(sub_476D32+1 - 0x476A02)
4769FE:  ADD             R0, PC; sub_476D32
476A00:  STR             R0, [R5,#4]
476A02:  POP             {R4,R5,R7,PC}
476A04:  LDR             R0, [R4,#0x3C]; jumptable 00476960 case 5
476A06:  CMP             R0, #4
476A08:  BEQ             loc_476A18
476A0A:  LDR             R0, [R4]
476A0C:  MOVS            R1, #0xA
476A0E:  STR             R1, [R0,#0x14]
476A10:  LDR             R0, [R4]
476A12:  LDR             R1, [R0]
476A14:  MOV             R0, R4
476A16:  BLX             R1
476A18:  LDR             R0, [R4,#0x28]
476A1A:  CMP             R0, #5
476A1C:  BEQ             loc_476A74
476A1E:  CMP             R0, #4
476A20:  BNE             loc_476A2C
476A22:  LDR             R0, =(sub_476E70+1 - 0x476A2A)
476A24:  LDR             R1, =(sub_476B20+1 - 0x476A2C)
476A26:  ADD             R0, PC; sub_476E70
476A28:  ADD             R1, PC; sub_476B20
476A2A:  B               loc_476A8C
476A2C:  LDR             R0, [R4]
476A2E:  MOVS            R1, #0x1B
476A30:  STR             R1, [R0,#0x14]
476A32:  LDR             R0, [R4]
476A34:  LDR             R1, [R0]
476A36:  MOV             R0, R4
476A38:  POP.W           {R4,R5,R7,LR}
476A3C:  BX              R1
476A3E:  LDR             R0, [R4,#0x24]; jumptable 00476938 default case
476A40:  CMP             R0, #0
476A42:  BGT.W           loc_476956
476A46:  B               loc_476948
476A48:  LDR             R0, [R4,#0x28]; jumptable 00476960 default case
476A4A:  CMP             R1, R0
476A4C:  BNE             loc_476A56
476A4E:  LDR             R0, [R4,#0x24]
476A50:  LDR             R1, [R4,#0x3C]
476A52:  CMP             R1, R0
476A54:  BEQ             loc_476A64
476A56:  LDR             R0, [R4]
476A58:  MOVS            R1, #0x1B
476A5A:  STR             R1, [R0,#0x14]
476A5C:  LDR             R0, [R4]
476A5E:  LDR             R1, [R0]
476A60:  MOV             R0, R4
476A62:  BLX             R1
476A64:  LDR             R0, =(sub_476D32+1 - 0x476A6A)
476A66:  ADD             R0, PC; sub_476D32
476A68:  STR             R0, [R5,#4]
476A6A:  POP             {R4,R5,R7,PC}
476A6C:  LDR             R0, =(sub_476D32+1 - 0x476A72)
476A6E:  ADD             R0, PC; sub_476D32
476A70:  STR             R0, [R5,#4]
476A72:  POP             {R4,R5,R7,PC}
476A74:  LDR             R0, =(sub_476D32+1 - 0x476A7A)
476A76:  ADD             R0, PC; sub_476D32
476A78:  STR             R0, [R5,#4]
476A7A:  POP             {R4,R5,R7,PC}
476A7C:  LDR             R0, =(sub_476ACA+1 - 0x476A82)
476A7E:  ADD             R0, PC; sub_476ACA
476A80:  STR             R0, [R5,#4]
476A82:  POP             {R4,R5,R7,PC}
476A84:  LDR             R0, =(sub_476CB0+1 - 0x476A8C)
476A86:  LDR             R1, =(sub_476B20+1 - 0x476A8E)
476A88:  ADD             R0, PC; sub_476CB0
476A8A:  ADD             R1, PC; sub_476B20
476A8C:  STR             R1, [R5]
476A8E:  STR             R0, [R5,#4]
476A90:  POP             {R4,R5,R7,PC}
