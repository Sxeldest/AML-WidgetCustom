; =========================================================
; Game Engine Function: sub_F58C4
; Address            : 0xF58C4 - 0xF5AE6
; =========================================================

F58C4:  PUSH            {R4-R7,LR}
F58C6:  ADD             R7, SP, #0xC
F58C8:  PUSH.W          {R7-R11}
F58CC:  MOV             R8, R1
F58CE:  MOV             R10, R0
F58D0:  CBZ             R2, loc_F58EC
F58D2:  LDRB.W          R1, [R8]
F58D6:  LDR.W           R0, [R8,#4]
F58DA:  LSLS            R2, R1, #0x1F
F58DC:  IT EQ
F58DE:  LSREQ           R0, R1, #1
F58E0:  SUBS            R0, #4
F58E2:  CLZ.W           R0, R0
F58E6:  MOV.W           R9, R0,LSR#5
F58EA:  B               loc_F58F0
F58EC:  MOV.W           R9, #0
F58F0:  LDRD.W          R5, R4, [R7,#arg_0]
F58F4:  CMP             R3, #1
F58F6:  BEQ             loc_F593C
F58F8:  CMP             R3, #0
F58FA:  BNE.W           def_F592E; jumptable 000F592E default case
F58FE:  CMP.W           R9, #0
F5902:  BEQ             loc_F5928
F5904:  LDRB.W          R0, [R8]
F5908:  LDR.W           R6, [R8,#8]
F590C:  LSLS            R0, R0, #0x1F
F590E:  IT EQ
F5910:  ADDEQ.W         R6, R8, #4
F5914:  MOV             R0, R8
F5916:  ADD.W           R11, R6, #0xC
F591A:  BL              sub_E7570
F591E:  MOV             R2, R0
F5920:  MOV             R0, R6
F5922:  MOV             R1, R11
F5924:  BL              sub_F6A5C
F5928:  CMP             R4, #4; switch 5 cases
F592A:  BHI.W           def_F592E; jumptable 000F592E default case
F592E:  TBB.W           [PC,R4]; switch jump
F5932:  DCB 3; jump table for switch statement
F5933:  DCB 0x27
F5934:  DCB 0x35
F5935:  DCB 0x41
F5936:  DCB 0x1A
F5937:  ALIGN 2
F5938:  LDR             R0, =0x2000403; jumptable 000F592E case 0
F593A:  B               loc_F59D2
F593C:  CMP             R4, #4; switch 5 cases
F593E:  BHI             def_F592E; jumptable 000F592E default case
F5940:  TBB.W           [PC,R4]; switch jump
F5944:  DCB 0x46; jump table for switch statement
F5945:  DCB 3
F5946:  DCB 0x4F
F5947:  DCB 3
F5948:  DCB 0x5D
F5949:  ALIGN 2
F594A:  MOVS            R0, #4; jumptable 000F5940 cases 1,3
F594C:  STRB.W          R0, [R10,#3]
F5950:  MOVS            R0, #3
F5952:  CMP             R5, #2
F5954:  STRB.W          R0, [R10]
F5958:  BEQ             loc_F5A28
F595A:  CMP             R5, #1
F595C:  BEQ             loc_F5A24
F595E:  CMP             R5, #0
F5960:  BNE             def_F592E; jumptable 000F592E default case
F5962:  MOVS            R0, #2
F5964:  B               loc_F5A4A
F5966:  MOVS            R0, #3; jumptable 000F592E case 4
F5968:  STRB.W          R0, [R10,#3]
F596C:  MOVS            R0, #4
F596E:  CMP             R5, #2
F5970:  STRB.W          R0, [R10]
F5974:  BEQ             loc_F5A2E
F5976:  CMP             R5, #1
F5978:  BNE             loc_F59B0
F597A:  MOV.W           R0, #0x200
F597E:  B               loc_F5A68
F5980:  MOVS            R0, #2; jumptable 000F592E case 1
F5982:  STRB.W          R0, [R10,#3]
F5986:  MOVS            R0, #3
F5988:  CMP             R5, #2
F598A:  STRB.W          R0, [R10]
F598E:  BEQ             loc_F5A5C
F5990:  CMP             R5, #1
F5992:  BEQ             loc_F5A62
F5994:  CMP             R5, #0
F5996:  BNE             def_F592E; jumptable 000F592E default case
F5998:  MOVS            R0, #4
F599A:  B               loc_F5A4A
F599C:  MOVS            R0, #3; jumptable 000F592E case 2
F599E:  STRB.W          R0, [R10,#3]
F59A2:  MOVS            R0, #4
F59A4:  CMP             R5, #2
F59A6:  STRB.W          R0, [R10]
F59AA:  BEQ             loc_F5A2E
F59AC:  CMP             R5, #1
F59AE:  BEQ             loc_F5A34
F59B0:  CBNZ            R5, def_F592E; jumptable 000F592E default case
F59B2:  B               loc_F5A46
F59B4:  MOVS            R0, #2; jumptable 000F592E case 3
F59B6:  STRB.W          R0, [R10,#3]
F59BA:  MOVS            R0, #4
F59BC:  CMP             R5, #2
F59BE:  STRB.W          R0, [R10]
F59C2:  BEQ             loc_F5A66
F59C4:  CMP             R5, #1
F59C6:  BEQ             loc_F5A80
F59C8:  CBNZ            R5, def_F592E; jumptable 000F592E default case
F59CA:  MOV.W           R0, #0x300
F59CE:  B               loc_F5A4A
F59D0:  LDR             R0, =0x4000203; jumptable 000F5940 case 0
F59D2:  STR.W           R0, [R10]
F59D6:  CBZ             R5, loc_F5A1E
F59D8:  CMP             R5, #2
F59DA:  BEQ             loc_F5A1E
F59DC:  CMP             R5, #1
F59DE:  BNE             def_F592E; jumptable 000F592E default case
F59E0:  B               loc_F5A6C
F59E2:  MOVS            R0, #3; jumptable 000F5940 case 2
F59E4:  STRB.W          R0, [R10,#3]
F59E8:  MOVS            R0, #2
F59EA:  CMP             R5, #2
F59EC:  STRB.W          R0, [R10]
F59F0:  BEQ             loc_F5AAC
F59F2:  CMP             R5, #1
F59F4:  BEQ             loc_F5AC8
F59F6:  CBNZ            R5, def_F592E; jumptable 000F592E default case
F59F8:  MOV.W           R0, #0x400
F59FC:  B               loc_F5A4A
F59FE:  MOVS            R0, #4; jumptable 000F5940 case 4
F5A00:  STRB.W          R0, [R10,#3]
F5A04:  MOVS            R0, #2
F5A06:  CMP             R5, #2
F5A08:  STRB.W          R0, [R10]
F5A0C:  BEQ             loc_F5A50
F5A0E:  CMP             R5, #1
F5A10:  BEQ             loc_F5A56
F5A12:  CBNZ            R5, def_F592E; jumptable 000F592E default case
F5A14:  MOVS            R0, #3
F5A16:  B               loc_F5A4A
F5A18:  LDR             R0, =0x4000302; jumptable 000F592E default case
F5A1A:  STR.W           R0, [R10]
F5A1E:  POP.W           {R3,R8-R11}
F5A22:  POP             {R4-R7,PC}
F5A24:  MOVS            R0, #2
F5A26:  B               loc_F5ACC
F5A28:  MOVW            R0, #0x201
F5A2C:  B               loc_F5AB0
F5A2E:  MOV.W           R0, #0x102
F5A32:  B               loc_F5A84
F5A34:  CMP.W           R9, #0
F5A38:  BNE             loc_F5A46
F5A3A:  MOV             R0, R8
F5A3C:  MOVS            R1, #0
F5A3E:  MOVS            R2, #1
F5A40:  MOVS            R3, #0x20 ; ' '
F5A42:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6insertEjjw; std::wstring::insert(uint,uint,wchar_t)
F5A46:  MOV.W           R0, #0x200
F5A4A:  STRH.W          R0, [R10,#1]
F5A4E:  B               loc_F5A1E
F5A50:  MOV.W           R0, #0x300
F5A54:  B               loc_F5ACC
F5A56:  MOVW            R0, #0x103
F5A5A:  B               loc_F5AB0
F5A5C:  MOVW            R0, #0x401
F5A60:  B               loc_F5A84
F5A62:  MOVS            R0, #4
F5A64:  B               loc_F5A68
F5A66:  MOVS            R0, #3
F5A68:  STRH.W          R0, [R10,#1]
F5A6C:  CMP.W           R9, #0
F5A70:  BNE             loc_F5A1E
F5A72:  MOV             R0, R8
F5A74:  MOVS            R1, #0
F5A76:  MOVS            R2, #1
F5A78:  MOVS            R3, #0x20 ; ' '
F5A7A:  BLX             j__ZNSt6__ndk112basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEE6insertEjjw; std::wstring::insert(uint,uint,wchar_t)
F5A7E:  B               loc_F5A1E
F5A80:  MOVW            R0, #0x301
F5A84:  CMP.W           R9, #0
F5A88:  STRH.W          R0, [R10,#1]
F5A8C:  BEQ             loc_F5A1E
F5A8E:  LDRB.W          R0, [R8]
F5A92:  LDR.W           R1, [R8,#8]
F5A96:  LSLS            R0, R0, #0x1F
F5A98:  IT EQ
F5A9A:  ADDEQ.W         R1, R8, #4
F5A9E:  MOV             R0, R8
F5AA0:  POP.W           {R3,R8-R11}
F5AA4:  POP.W           {R4-R7,LR}
F5AA8:  B.W             sub_F6A7A
F5AAC:  MOV.W           R0, #0x104
F5AB0:  CMP.W           R9, #0
F5AB4:  STRH.W          R0, [R10,#1]
F5AB8:  BEQ             loc_F5A1E
F5ABA:  MOV             R0, R8
F5ABC:  POP.W           {R3,R8-R11}
F5AC0:  POP.W           {R4-R7,LR}
F5AC4:  B.W             sub_F6A98
F5AC8:  MOV.W           R0, #0x400
F5ACC:  CMP.W           R9, #0
F5AD0:  STRH.W          R0, [R10,#1]
F5AD4:  BNE             loc_F5A1E
F5AD6:  MOV             R0, R8
F5AD8:  MOVS            R1, #0x20 ; ' '
F5ADA:  POP.W           {R3,R8-R11}
F5ADE:  POP.W           {R4-R7,LR}
F5AE2:  B.W             sub_10C428
