; =========================================================
; Game Engine Function: sub_79948
; Address            : 0x79948 - 0x79B7A
; =========================================================

79948:  PUSH            {R4-R7,LR}
7994A:  ADD             R7, SP, #0xC
7994C:  PUSH.W          {R8-R11}
79950:  SUB             SP, SP, #0x54
79952:  LDR             R0, =(__stack_chk_guard_ptr - 0x79958)
79954:  ADD             R0, PC; __stack_chk_guard_ptr
79956:  LDR             R0, [R0]; __stack_chk_guard
79958:  LDR             R0, [R0]
7995A:  STR             R0, [SP,#0x70+var_20]
7995C:  BL              sub_6C844
79960:  MOV             R4, R0
79962:  LDR             R0, [R0,#8]
79964:  CBNZ            R0, loc_79990
79966:  MOV.W           R0, #0x2F0; unsigned int
7996A:  BLX             j__Znwj; operator new(uint)
7996E:  MOV             R5, R0
79970:  LDR             R0, =(off_114AB0 - 0x79978)
79972:  LDR             R1, =(_ZTV10CPlayerPed - 0x7997A); `vtable for'CPlayerPed ...
79974:  ADD             R0, PC; off_114AB0
79976:  ADD             R1, PC; `vtable for'CPlayerPed
79978:  LDR             R0, [R0]; dword_1A4408
7997A:  ADDS            R1, #8
7997C:  STR             R1, [R5]
7997E:  MOV             R1, #0x103B89
79986:  LDR             R0, [R0]
79988:  ADD             R1, R0
7998A:  MOV             R0, R5
7998C:  BLX             R1
7998E:  STR             R5, [R4,#8]
79990:  LDR             R1, =(dword_1A4548 - 0x79998)
79992:  LDR             R6, =(dword_116D38 - 0x7999A)
79994:  ADD             R1, PC; dword_1A4548
79996:  ADD             R6, PC; dword_116D38
79998:  LDR             R0, [R1]
7999A:  LDR.W           R8, [R6]
7999E:  LDR             R4, =(byte_1A458C - 0x799A6)
799A0:  CMP             R0, #1
799A2:  ADD             R4, PC; byte_1A458C
799A4:  BNE             loc_79A7C
799A6:  STR             R1, [SP,#0x70+var_3C]
799A8:  MOV.W           R3, #0x13A0
799AC:  STR             R6, [SP,#0x70+var_34]
799AE:  LDR             R0, =(off_114AD8 - 0x799B4)
799B0:  ADD             R0, PC; off_114AD8
799B2:  LDR             R0, [R0]; dword_1A4434
799B4:  LDR.W           LR, [R0]
799B8:  LDR.W           R1, [LR,#0x3B0]
799BC:  LDR             R1, [R1]
799BE:  LDR             R2, =(off_114B58 - 0x799C8)
799C0:  LDRB            R6, [R4]
799C2:  LDRH            R1, [R1,R3]
799C4:  ADD             R2, PC; off_114B58
799C6:  MOV.W           R3, #0x23C
799CA:  LDR             R2, [R2]; unk_1176A0
799CC:  STR             R4, [SP,#0x70+var_38]
799CE:  MLA.W           R2, R1, R3, R2
799D2:  MOV.W           R1, #0x34 ; '4'
799D6:  MUL.W           R3, R8, R1
799DA:  MLA.W           R1, R8, R1, R2
799DE:  LDR             R0, [R2,R3]
799E0:  STR             R0, [SP,#0x70+var_40]
799E2:  LDR             R0, [R1,#4]
799E4:  STR             R0, [SP,#0x70+var_44]
799E6:  CBZ             R6, loc_79A10
799E8:  MOVS            R0, #1
799EA:  LDR             R4, =(dword_116D3C - 0x799F4)
799EC:  STR             R0, [SP,#0x70+var_48]
799EE:  LDR             R5, =(dword_1A4580 - 0x799FC)
799F0:  ADD             R4, PC; dword_116D3C
799F2:  LDR             R6, =(dword_1A4574 - 0x79A00)
799F4:  ADD.W           R1, R4, #8
799F8:  ADD             R5, PC; dword_1A4580
799FA:  ADDS            R0, R4, #4
799FC:  ADD             R6, PC; dword_1A4574
799FE:  ADD.W           R9, R5, #8
79A02:  ADD.W           R10, R5, #4
79A06:  ADD.W           R11, R6, #8
79A0A:  ADD.W           R12, R6, #4
79A0E:  B               loc_79A38
79A10:  ADD.W           R2, R1, #0x24 ; '$'
79A14:  MOVS            R0, #0
79A16:  ADD.W           R6, R1, #8
79A1A:  ADD.W           R12, R1, #0xC
79A1E:  ADD.W           R11, R1, #0x10
79A22:  ADD.W           R5, R1, #0x14
79A26:  ADD.W           R10, R1, #0x18
79A2A:  ADD.W           R9, R1, #0x1C
79A2E:  ADD.W           R4, R1, #0x20 ; ' '
79A32:  ADDS            R1, #0x28 ; '('
79A34:  STR             R0, [SP,#0x70+var_48]
79A36:  MOV             R0, R2
79A38:  LDR.W           R2, [R11]
79A3C:  LDR             R1, [R1]
79A3E:  LDR             R6, [R6]
79A40:  LDR.W           R3, [R12]
79A44:  LDR             R0, [R0]
79A46:  STRD.W          R0, R1, [SP,#0x70+var_50]
79A4A:  STRD.W          R3, R2, [SP,#0x70+var_68]
79A4E:  MOV             R2, R8
79A50:  LDR             R0, [SP,#0x70+var_44]
79A52:  LDR             R5, [R5]
79A54:  LDR             R1, [SP,#0x70+var_48]
79A56:  LDR             R3, [SP,#0x70+var_40]
79A58:  STRD.W          R0, R6, [SP,#0x70+var_70]
79A5C:  ADD             R0, SP, #0x70+var_60
79A5E:  LDR             R4, [R4]
79A60:  LDR.W           R10, [R10]
79A64:  LDR.W           R12, [R9]
79A68:  STM.W           R0, {R5,R10,R12}
79A6C:  MOV             R0, LR
79A6E:  STR             R4, [SP,#0x70+var_54]
79A70:  BL              sub_79824
79A74:  LDR             R0, [SP,#0x70+var_3C]
79A76:  LDRD.W          R4, R6, [SP,#0x70+var_38]
79A7A:  LDR             R0, [R0]
79A7C:  CMP             R0, #2
79A7E:  BNE             loc_79B38
79A80:  MOV             R11, R4
79A82:  UXTH.W          R4, R8
79A86:  CMP.W           R4, #0x3E8
79A8A:  BHI             loc_79B42
79A8C:  LDR             R0, =(off_114AD8 - 0x79A92)
79A8E:  ADD             R0, PC; off_114AD8
79A90:  LDR             R5, [R0]; dword_1A4434
79A92:  LDR             R1, [R5]
79A94:  LDR.W           R0, [R1,#0x3B0]
79A98:  LDR             R0, [R0,#0x10]
79A9A:  ADD.W           R0, R0, R4,LSL#2
79A9E:  LDR.W           R0, [R0,#0x3EC]
79AA2:  CMP             R0, #0
79AA4:  BEQ             loc_79B42
79AA6:  MOVS            R2, #0
79AA8:  STR             R2, [SP,#0x70+var_28]
79AAA:  STRD.W          R2, R2, [SP,#0x70+var_30]
79AAE:  MOV             R2, R11
79AB0:  LDRB.W          R2, [R11]
79AB4:  CBZ             R2, loc_79AD0
79AB6:  LDR             R0, =(unk_1A4568 - 0x79ABE)
79AB8:  LDR             R2, =(unk_1A4558 - 0x79AC0)
79ABA:  ADD             R0, PC; unk_1A4568
79ABC:  ADD             R2, PC; unk_1A4558
79ABE:  VLDR            D16, [R0]
79AC2:  LDM.W           R2, {R8-R10}
79AC6:  LDR             R0, [R0,#(dword_1A4570 - 0x1A4568)]
79AC8:  STR             R0, [SP,#0x70+var_28]
79ACA:  VSTR            D16, [SP,#0x70+var_30]
79ACE:  B               loc_79B1A
79AD0:  ADD             R1, SP, #0x70+var_30
79AD2:  STR             R6, [SP,#0x70+var_34]
79AD4:  ADDS            R2, R1, #4
79AD6:  ADD.W           R3, R1, #8
79ADA:  LDR             R1, [R0,#4]
79ADC:  CMP             R1, #0
79ADE:  ITT NE
79AE0:  LDRNE           R1, [R1,#0x14]
79AE2:  CMPNE           R1, #0
79AE4:  BNE             loc_79AF4
79AE6:  MOV.W           R8, #0
79AEA:  MOV.W           R9, #0
79AEE:  MOV.W           R10, #0
79AF2:  B               loc_79B00
79AF4:  LDR.W           R8, [R1,#0x30]
79AF8:  LDR.W           R9, [R1,#0x34]
79AFC:  LDR.W           R10, [R1,#0x38]
79B00:  LDR             R1, =(off_114AB0 - 0x79B0E)
79B02:  MOV             R6, #0x1021F1
79B0A:  ADD             R1, PC; off_114AB0
79B0C:  LDR             R1, [R1]; dword_1A4408
79B0E:  LDR             R1, [R1]
79B10:  ADD             R6, R1
79B12:  ADD             R1, SP, #0x70+var_30
79B14:  BLX             R6
79B16:  LDR             R1, [R5]
79B18:  LDR             R6, [SP,#0x70+var_34]
79B1A:  ADD             R3, SP, #0x70+var_30
79B1C:  ADD.W           R12, SP, #0x70+var_64
79B20:  STMEA.W         SP, {R8-R10}
79B24:  LDM             R3, {R0,R2,R3}
79B26:  STM.W           R12, {R0,R2,R3}
79B2A:  MOV             R0, R1
79B2C:  MOVS            R1, #0
79B2E:  MOV             R2, R4
79B30:  MOVS            R3, #1
79B32:  BL              sub_79BCC
79B36:  MOV             R4, R11
79B38:  MOVS            R0, #0
79B3A:  STRB            R0, [R4]
79B3C:  MOV.W           R0, #0xFFFFFFFF
79B40:  STR             R0, [R6]
79B42:  LDR             R0, =(off_114B10 - 0x79B4A)
79B44:  MOVS            R6, #0
79B46:  ADD             R0, PC; off_114B10
79B48:  LDR             R0, [R0]; dword_1A442C
79B4A:  LDR             R0, [R0]
79B4C:  LDRD.W          R1, R2, [R0,#0x94]
79B50:  LDR.W           R0, [R0,#0x9C]
79B54:  LDR             R3, =(byte_1A44AD - 0x79B5C)
79B56:  STRB            R6, [R2,#8]
79B58:  ADD             R3, PC; byte_1A44AD
79B5A:  STRB            R6, [R1,#8]
79B5C:  STRB            R6, [R0,#8]
79B5E:  STRB            R6, [R3]
79B60:  LDR             R0, [SP,#0x70+var_20]
79B62:  LDR             R1, =(__stack_chk_guard_ptr - 0x79B68)
79B64:  ADD             R1, PC; __stack_chk_guard_ptr
79B66:  LDR             R1, [R1]; __stack_chk_guard
79B68:  LDR             R1, [R1]
79B6A:  CMP             R1, R0
79B6C:  ITTT EQ
79B6E:  ADDEQ           SP, SP, #0x54 ; 'T'
79B70:  POPEQ.W         {R8-R11}
79B74:  POPEQ           {R4-R7,PC}
79B76:  BLX             __stack_chk_fail
