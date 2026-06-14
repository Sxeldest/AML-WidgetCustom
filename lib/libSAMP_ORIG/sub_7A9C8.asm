; =========================================================
; Game Engine Function: sub_7A9C8
; Address            : 0x7A9C8 - 0x7AB76
; =========================================================

7A9C8:  PUSH            {R4-R7,LR}
7A9CA:  ADD             R7, SP, #0xC
7A9CC:  PUSH.W          {R8}
7A9D0:  VPUSH           {D8-D9}
7A9D4:  SUB.W           SP, SP, #0x3F8
7A9D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x7A9DE)
7A9DA:  ADD             R0, PC; __stack_chk_guard_ptr
7A9DC:  LDR             R0, [R0]; __stack_chk_guard
7A9DE:  LDR             R0, [R0]
7A9E0:  STR             R0, [SP,#0x418+var_24]
7A9E2:  BL              sub_7ABA8
7A9E6:  CBNZ            R0, loc_7A9F0
7A9E8:  LDR             R0, =(byte_1A4598 - 0x7A9EE)
7A9EA:  ADD             R0, PC; byte_1A4598
7A9EC:  LDRB            R0, [R0]
7A9EE:  CBZ             R0, loc_7AA00
7A9F0:  LDR             R0, =(dword_1A4590 - 0x7A9F6)
7A9F2:  ADD             R0, PC; dword_1A4590
7A9F4:  LDR             R0, [R0]
7A9F6:  CMP             R0, #0
7A9F8:  ITT NE
7A9FA:  LDRNE           R0, [R0]
7A9FC:  CMPNE           R0, #0
7A9FE:  BNE             loc_7AA20
7AA00:  LDR             R0, [SP,#0x418+var_24]
7AA02:  LDR             R1, =(__stack_chk_guard_ptr - 0x7AA08)
7AA04:  ADD             R1, PC; __stack_chk_guard_ptr
7AA06:  LDR             R1, [R1]; __stack_chk_guard
7AA08:  LDR             R1, [R1]
7AA0A:  CMP             R1, R0
7AA0C:  ITTTT EQ
7AA0E:  ADDEQ.W         SP, SP, #0x3F8
7AA12:  VPOPEQ          {D8-D9}
7AA16:  POPEQ.W         {R8}
7AA1A:  POPEQ           {R4-R7,PC}
7AA1C:  BLX             __stack_chk_fail
7AA20:  BL              sub_8BC04
7AA24:  CMP             R0, #0
7AA26:  BEQ             loc_7AA00
7AA28:  LDR             R0, =(off_114AD8 - 0x7AA2E)
7AA2A:  ADD             R0, PC; off_114AD8
7AA2C:  LDR             R0, [R0]; dword_1A4434
7AA2E:  LDR             R0, [R0]
7AA30:  CMP             R0, #0
7AA32:  ITTT NE
7AA34:  LDRNE.W         R0, [R0,#0x3B0]
7AA38:  LDRNE           R0, [R0]
7AA3A:  CMPNE           R0, #0
7AA3C:  BEQ             loc_7AA00
7AA3E:  MOVW            R1, #0x13BC
7AA42:  LDR             R0, [R0,R1]
7AA44:  CMP             R0, #0
7AA46:  ITT NE
7AA48:  LDRNE           R5, [R0,#0x1C]
7AA4A:  CMPNE           R5, #0
7AA4C:  BEQ             loc_7AA00
7AA4E:  BL              sub_8C514
7AA52:  ADD             R4, SP, #0x418+var_3D0
7AA54:  VMOV.I32        Q4, #0
7AA58:  MOVS            R0, #0x15
7AA5A:  MOV             R1, R4
7AA5C:  VST1.64         {D8-D9}, [R4]
7AA60:  BL              sub_95E08
7AA64:  MOVS            R0, #0x16
7AA66:  MOV             R1, R4
7AA68:  VST1.64         {D8-D9}, [R4]
7AA6C:  BL              sub_95E08
7AA70:  MOVS            R0, #0x17
7AA72:  MOV             R1, R4
7AA74:  VST1.64         {D8-D9}, [R4]
7AA78:  BL              sub_95E08
7AA7C:  ADD             R0, SP, #0x418+var_3D0
7AA7E:  BL              sub_88010
7AA82:  BL              sub_8C524
7AA86:  LDR             R0, [R0,#0x44]
7AA88:  STR             R0, [SP,#0x418+var_38C]
7AA8A:  BL              sub_8C524
7AA8E:  LDR             R1, =(aPassengerbutto - 0x7AA9C); "PassengerButton" ...
7AA90:  MOVS            R4, #0
7AA92:  STR             R4, [R0,#0x44]
7AA94:  MOVW            R2, #0x18F
7AA98:  ADD             R1, PC; "PassengerButton"
7AA9A:  MOV             R0, R1
7AA9C:  MOVS            R1, #0
7AA9E:  BL              sub_8FD20
7AAA2:  MOVS            R1, #0
7AAA4:  LDR             R0, [R5,#0x5C]
7AAA6:  MOVT            R1, #0x42DC
7AAAA:  STRD.W          R1, R1, [SP,#0x418+var_3D8]
7AAAE:  CMP             R0, #0
7AAB0:  ITT NE
7AAB2:  LDRBNE.W        R0, [R0,#0x485]
7AAB6:  MOVSNE.W        R0, R0,LSL#31
7AABA:  BNE             loc_7AAFC
7AABC:  LDR             R0, =(dword_1A4590 - 0x7AACC)
7AABE:  VMOV.F32        Q8, #1.0
7AAC2:  MOV.W           R1, #0x3F800000
7AAC6:  ADD             R2, SP, #0x418+var_408
7AAC8:  ADD             R0, PC; dword_1A4590
7AACA:  MOV.W           R3, #0xFFFFFFFF
7AACE:  LDR             R0, [R0]
7AAD0:  LDR             R0, [R0]
7AAD2:  STRD.W          R1, R1, [SP,#0x418+var_3E8]
7AAD6:  ADD             R1, SP, #0x418+var_3F8
7AAD8:  VST1.64         {D16-D17}, [R2]
7AADC:  STRD.W          R3, R1, [SP,#0x418+var_418]
7AAE0:  ADD             R3, SP, #0x418+var_3E8
7AAE2:  VST1.64         {D8-D9}, [R1]
7AAE6:  ADD             R1, SP, #0x418+var_3D8
7AAE8:  STR             R2, [SP,#0x418+var_410]
7AAEA:  ADD             R2, SP, #0x418+var_3E0
7AAEC:  STRD.W          R4, R4, [SP,#0x418+var_3E0]
7AAF0:  BL              sub_A72F4
7AAF4:  CMP             R0, #0
7AAF6:  IT NE
7AAF8:  BLNE            sub_7AC70
7AAFC:  MOVS            R0, #0
7AAFE:  MOVS            R1, #0
7AB00:  MOVT            R0, #0xBF80
7AB04:  STRD.W          R0, R0, [SP,#0x418+var_3F8]
7AB08:  ADD             R0, SP, #0x418+var_3F8
7AB0A:  BL              sub_97660
7AB0E:  LDR             R0, =(off_114C50 - 0x7AB16)
7AB10:  LDR             R1, =(off_114C4C - 0x7AB1A)
7AB12:  ADD             R0, PC; off_114C50
7AB14:  LDR             R2, =(off_114B10 - 0x7AB1E)
7AB16:  ADD             R1, PC; off_114C4C
7AB18:  LDR             R0, [R0]; dword_1A4520
7AB1A:  ADD             R2, PC; off_114B10
7AB1C:  LDR             R1, [R1]; dword_1A451C
7AB1E:  VLDR            S0, [R0]
7AB22:  VLDR            S2, [R1]
7AB26:  MOVS            R1, #0
7AB28:  LDR             R0, [R2]; dword_1A442C
7AB2A:  VCVT.F32.S32    S0, S0
7AB2E:  VCVT.F32.S32    S2, S2
7AB32:  LDR             R0, [R0]
7AB34:  VLDR            S4, [R0,#0x58]
7AB38:  VLDR            S6, [R0,#0x5C]
7AB3C:  ADD             R0, SP, #0x418+var_3F8
7AB3E:  VMUL.F32        S2, S4, S2
7AB42:  VLDR            S4, =0.00092593
7AB46:  VMUL.F32        S0, S6, S0
7AB4A:  VLDR            S6, =0.00052083
7AB4E:  VMUL.F32        S2, S2, S6
7AB52:  VMUL.F32        S0, S0, S4
7AB56:  VSTR            S2, [SP,#0x418+var_3F8]
7AB5A:  VSTR            S0, [SP,#0x418+var_3F4]
7AB5E:  BL              sub_975D8
7AB62:  BL              sub_94DC0
7AB66:  MOVS            R0, #3
7AB68:  BL              sub_96230
7AB6C:  LDR             R4, [SP,#0x418+var_38C]
7AB6E:  BL              sub_8C524
7AB72:  STR             R4, [R0,#0x44]
7AB74:  B               loc_7AA00
