; =========================================================
; Game Engine Function: sub_7BC34
; Address            : 0x7BC34 - 0x7BE30
; =========================================================

7BC34:  PUSH            {R4-R7,LR}
7BC36:  ADD             R7, SP, #0xC
7BC38:  PUSH.W          {R8-R10}
7BC3C:  SUB             SP, SP, #0x150
7BC3E:  MOV             R10, R0
7BC40:  LDR             R0, =(__stack_chk_guard_ptr - 0x7BC46)
7BC42:  ADD             R0, PC; __stack_chk_guard_ptr
7BC44:  LDR             R0, [R0]; __stack_chk_guard
7BC46:  LDR             R0, [R0]
7BC48:  STR             R0, [SP,#0x168+var_1C]
7BC4A:  ADD.W           R0, R10, #0x54 ; 'T'
7BC4E:  BL              sub_72440
7BC52:  LDR             R0, =(off_114C14 - 0x7BC58)
7BC54:  ADD             R0, PC; off_114C14
7BC56:  LDR             R0, [R0]; byte_1A4485
7BC58:  LDRB            R0, [R0]
7BC5A:  CMP             R0, #0
7BC5C:  BEQ.W           loc_7BDDE
7BC60:  LDR             R0, =(off_114AA8 - 0x7BC6E)
7BC62:  MOV             R5, #0x1D75D5
7BC6A:  ADD             R0, PC; off_114AA8
7BC6C:  LDR             R4, [R0]; dword_1A4404
7BC6E:  LDR             R0, [R4]
7BC70:  ADD             R0, R5
7BC72:  ADDS            R0, #0x4C ; 'L'
7BC74:  BLX             R0
7BC76:  MOV             R1, R0
7BC78:  LDR             R0, [R4]
7BC7A:  ADD.W           R8, SP, #0x168+var_40
7BC7E:  ADDS            R2, R0, R5
7BC80:  MOV             R0, R8
7BC82:  BLX             R2
7BC84:  VLDR            S0, [SP,#0x168+var_40]
7BC88:  MOVW            R2, #0x2B74
7BC8C:  VLDR            S2, [SP,#0x168+var_3C]
7BC90:  MOVT            R2, #0x79 ; 'y'
7BC94:  VCVT.F32.S32    S0, S0
7BC98:  VLDR            S6, =640.0
7BC9C:  VCVT.F32.S32    S2, S2
7BCA0:  VLDR            S4, =448.0
7BCA4:  LDR             R0, =(unk_524E0 - 0x7BCAE)
7BCA6:  MOVS            R1, #0xF
7BCA8:  LDR             R5, [R4]
7BCAA:  ADD             R0, PC; unk_524E0
7BCAC:  VLD1.64         {D16-D17}, [R0]!
7BCB0:  VDIV.F32        S0, S0, S6
7BCB4:  LDR.W           R9, [R5,R2]
7BCB8:  MOV             R2, #0x685FA0
7BCC0:  LDR             R6, [R5,R2]
7BCC2:  MOV             R2, R8
7BCC4:  VDIV.F32        S2, S2, S4
7BCC8:  VMOV.F32        S4, #4.0
7BCCC:  VLDR            S6, =225.0
7BCD0:  VLD1.64         {D18-D19}, [R0],R1
7BCD4:  VMUL.F32        S2, S2, S6
7BCD8:  VST1.64         {D16-D17}, [R2]!
7BCDC:  LDR             R0, [R0]
7BCDE:  VMUL.F32        S0, S0, S4
7BCE2:  VSTR            S2, [SP,#0x168+var_144]
7BCE6:  VSTR            S0, [SP,#0x168+var_148]
7BCEA:  LDR             R3, =(byte_1A45E0 - 0x7BCF4)
7BCEC:  VST1.64         {D18-D19}, [R2],R1
7BCF0:  ADD             R3, PC; byte_1A45E0
7BCF2:  STR             R0, [R2]
7BCF4:  LDRB            R0, [R3]
7BCF6:  DMB.W           ISH
7BCFA:  LSLS            R0, R0, #0x1F
7BCFC:  BEQ             loc_7BDF8
7BCFE:  MOV             R0, #0x96B50C
7BD06:  ADDS            R4, R5, R0
7BD08:  LDR             R5, =(unk_1A45BC - 0x7BD0E)
7BD0A:  ADD             R5, PC; unk_1A45BC
7BD0C:  MOV             R0, R5
7BD0E:  BL              sub_7C0AC
7BD12:  VMOV            S0, R6
7BD16:  LDR             R0, =(off_114AD8 - 0x7BD28)
7BD18:  VMOV            S2, R9
7BD1C:  VLDR            S4, =9.5367e-7
7BD20:  VCVT.F32.U32    S0, S0
7BD24:  ADD             R0, PC; off_114AD8
7BD26:  VCVT.F32.U32    S2, S2
7BD2A:  VLDR            S6, [R4]
7BD2E:  LDR             R0, [R0]; dword_1A4434
7BD30:  MOV.W           R1, #0x13A0; int
7BD34:  VCVT.F64.F32    D16, S6
7BD38:  ADD             R6, SP, #0x168+src
7BD3A:  MOV             R3, R5; format
7BD3C:  LDR             R0, [R0]
7BD3E:  VMUL.F32        S0, S0, S4
7BD42:  LDR.W           R0, [R0,#0x3B0]
7BD46:  VMUL.F32        S2, S2, S4
7BD4A:  LDR             R0, [R0]
7BD4C:  LDRH            R0, [R0,R1]
7BD4E:  VCVT.F64.F32    D17, S0
7BD52:  STR             R0, [SP,#0x168+var_150]
7BD54:  MOV             R0, R6; int
7BD56:  VCVT.F64.F32    D18, S2
7BD5A:  VSTR            D16, [SP,#0x168+var_168]
7BD5E:  VSTR            D18, [SP,#0x168+var_160]
7BD62:  VSTR            D17, [SP,#0x168+var_158]
7BD66:  BL              sub_7BBEC
7BD6A:  MOV             R0, R6; s
7BD6C:  LDR.W           R9, [R10,#0xA0]
7BD70:  BLX             strlen
7BD74:  CMN.W           R0, #0x10
7BD78:  BCS             loc_7BE2A
7BD7A:  MOV             R5, R0
7BD7C:  CMP             R0, #0xB
7BD7E:  BCS             loc_7BD8E
7BD80:  ADD.W           R6, R8, #1
7BD84:  LSLS            R0, R5, #1
7BD86:  STRB.W          R0, [SP,#0x168+var_40]
7BD8A:  CBNZ            R5, loc_7BDA6
7BD8C:  B               loc_7BDB0
7BD8E:  ADD.W           R0, R5, #0x10
7BD92:  BIC.W           R4, R0, #0xF
7BD96:  MOV             R0, R4; unsigned int
7BD98:  BLX             j__Znwj; operator new(uint)
7BD9C:  MOV             R6, R0
7BD9E:  STRD.W          R5, R0, [SP,#0x168+var_3C]
7BDA2:  ADDS            R0, R4, #1
7BDA4:  STR             R0, [SP,#0x168+var_40]
7BDA6:  ADD             R1, SP, #0x168+src; src
7BDA8:  MOV             R0, R6; dest
7BDAA:  MOV             R2, R5; n
7BDAC:  BLX             j_memcpy
7BDB0:  MOVS            R0, #0
7BDB2:  STRB            R0, [R6,R5]
7BDB4:  ADD             R1, SP, #0x168+var_40
7BDB6:  MOV             R0, R9
7BDB8:  BL              sub_7D3F4
7BDBC:  LDRB.W          R0, [SP,#0x168+var_40]
7BDC0:  LSLS            R0, R0, #0x1F
7BDC2:  ITT NE
7BDC4:  LDRNE           R0, [SP,#0x168+var_38]; void *
7BDC6:  BLXNE           j__ZdlPv; operator delete(void *)
7BDCA:  LDR.W           R0, [R10,#0xA0]
7BDCE:  ADD             R1, SP, #0x168+var_148
7BDD0:  BL              sub_7C4A6
7BDD4:  LDR.W           R0, [R10,#0xA0]
7BDD8:  MOVS            R1, #0
7BDDA:  BL              sub_7D40C
7BDDE:  LDR             R0, [SP,#0x168+var_1C]
7BDE0:  LDR             R1, =(__stack_chk_guard_ptr - 0x7BDE6)
7BDE2:  ADD             R1, PC; __stack_chk_guard_ptr
7BDE4:  LDR             R1, [R1]; __stack_chk_guard
7BDE6:  LDR             R1, [R1]
7BDE8:  CMP             R1, R0
7BDEA:  ITTT EQ
7BDEC:  ADDEQ           SP, SP, #0x150
7BDEE:  POPEQ.W         {R8-R10}
7BDF2:  POPEQ           {R4-R7,PC}
7BDF4:  BLX             __stack_chk_fail
7BDF8:  LDR             R0, =(byte_1A45E0 - 0x7BDFE)
7BDFA:  ADD             R0, PC; byte_1A45E0 ; __guard *
7BDFC:  BLX             j___cxa_guard_acquire
7BE00:  CMP             R0, #0
7BE02:  BEQ.W           loc_7BCFE
7BE06:  LDR             R0, =(unk_1A45BC - 0x7BE0C)
7BE08:  ADD             R0, PC; unk_1A45BC
7BE0A:  ADD             R1, SP, #0x168+var_40
7BE0C:  BL              sub_7BFFC
7BE10:  LDR             R0, =(sub_7C096+1 - 0x7BE1A)
7BE12:  LDR             R1, =(unk_1A45BC - 0x7BE1C)
7BE14:  LDR             R2, =(off_110560 - 0x7BE1E)
7BE16:  ADD             R0, PC; sub_7C096 ; lpfunc
7BE18:  ADD             R1, PC; unk_1A45BC ; obj
7BE1A:  ADD             R2, PC; off_110560 ; lpdso_handle
7BE1C:  BLX             __cxa_atexit
7BE20:  LDR             R0, =(byte_1A45E0 - 0x7BE26)
7BE22:  ADD             R0, PC; byte_1A45E0 ; __guard *
7BE24:  BLX             j___cxa_guard_release
7BE28:  B               loc_7BCFE
7BE2A:  ADD             R0, SP, #0x168+var_40
7BE2C:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
