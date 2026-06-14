; =========================================================
; Game Engine Function: _ZN7CEntity6RemoveEv
; Address            : 0x3EDB98 - 0x3EDED4
; =========================================================

3EDB98:  PUSH            {R4-R7,LR}
3EDB9A:  ADD             R7, SP, #0xC
3EDB9C:  PUSH.W          {R8-R11}
3EDBA0:  SUB             SP, SP, #4
3EDBA2:  VPUSH           {D8-D12}
3EDBA6:  SUB             SP, SP, #0x30
3EDBA8:  MOV             R4, R0
3EDBAA:  LDR             R0, [R4]
3EDBAC:  MOV             R1, R4
3EDBAE:  LDR             R2, [R0,#0x28]
3EDBB0:  ADD             R0, SP, #0x78+var_58
3EDBB2:  BLX             R2
3EDBB4:  VLDR            S16, [SP,#0x78+var_54]
3EDBB8:  VLDR            S6, =3000.0
3EDBBC:  VLDR            S2, [SP,#0x78+var_50]
3EDBC0:  VCMPE.F32       S16, S6
3EDBC4:  VLDR            S18, =2999.0
3EDBC8:  VMRS            APSR_nzcv, FPSCR
3EDBCC:  VCMPE.F32       S2, S6
3EDBD0:  VLDR            S0, [SP,#0x78+var_58]
3EDBD4:  VLDR            S4, [SP,#0x78+var_4C]
3EDBD8:  IT GT
3EDBDA:  VMOVGT.F32      S16, S18
3EDBDE:  VMRS            APSR_nzcv, FPSCR
3EDBE2:  IT LT
3EDBE4:  VMOVLT.F32      S18, S2
3EDBE8:  VLDR            S2, =-3000.0
3EDBEC:  LDRB            R0, [R4,#0x1D]
3EDBEE:  VMAX.F32        D10, D2, D1
3EDBF2:  VMAX.F32        D0, D0, D1
3EDBF6:  LSLS            R0, R0, #0x1F
3EDBF8:  BNE.W           loc_3EDE06
3EDBFC:  VLDR            S22, =50.0
3EDC00:  VLDR            S24, =60.0
3EDC04:  VDIV.F32        S0, S0, S22
3EDC08:  VADD.F32        S0, S0, S24
3EDC0C:  VMOV            R0, S0; x
3EDC10:  BLX             floorf
3EDC14:  VDIV.F32        S0, S20, S22
3EDC18:  MOV             R8, R0
3EDC1A:  VADD.F32        S0, S0, S24
3EDC1E:  VMOV            R0, S0; x
3EDC22:  BLX             floorf
3EDC26:  VDIV.F32        S0, S18, S22
3EDC2A:  MOV             R6, R0
3EDC2C:  VADD.F32        S0, S0, S24
3EDC30:  VMOV            R0, S0; x
3EDC34:  BLX             floorf
3EDC38:  VDIV.F32        S0, S16, S22
3EDC3C:  MOV             R5, R0
3EDC3E:  VADD.F32        S0, S0, S24
3EDC42:  VMOV            R0, S0; x
3EDC46:  BLX             floorf
3EDC4A:  VMOV            S0, R0
3EDC4E:  VMOV            S2, R5
3EDC52:  VMOV            S4, R6
3EDC56:  VCVT.S32.F32    S8, S0
3EDC5A:  VCVT.S32.F32    S0, S2
3EDC5E:  VCVT.S32.F32    S4, S4
3EDC62:  VMOV            S6, R8
3EDC66:  VCVT.S32.F32    S2, S6
3EDC6A:  VMOV            R0, S8
3EDC6E:  VMOV            R10, S4
3EDC72:  STR             R0, [SP,#0x78+var_74]
3EDC74:  CMP             R10, R0
3EDC76:  BGT.W           loc_3EDEC6
3EDC7A:  VMOV            R0, S2
3EDC7E:  VMOV            R5, S0
3EDC82:  STR             R0, [SP,#0x78+var_70]
3EDC84:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x3EDC8A)
3EDC86:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
3EDC88:  LDR             R0, [R0]; CWorld::ms_aSectors ...
3EDC8A:  STR             R0, [SP,#0x78+var_5C]
3EDC8C:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x3EDC92)
3EDC8E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
3EDC90:  LDR             R0, [R0]; CWorld::ms_aSectors ...
3EDC92:  STR             R0, [SP,#0x78+var_78]
3EDC94:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3EDC9A)
3EDC96:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3EDC98:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3EDC9A:  STR             R0, [SP,#0x78+var_60]
3EDC9C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3EDCA2)
3EDC9E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3EDCA0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3EDCA2:  STR             R0, [SP,#0x78+var_64]
3EDCA4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3EDCAA)
3EDCA6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3EDCA8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3EDCAA:  STR             R0, [SP,#0x78+var_68]
3EDCAC:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x3EDCB2)
3EDCAE:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
3EDCB0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
3EDCB2:  STR             R0, [SP,#0x78+var_6C]
3EDCB4:  LDR             R0, [SP,#0x78+var_70]
3EDCB6:  CMP             R0, R5
3EDCB8:  BGT.W           loc_3EDDF6
3EDCBC:  CMP.W           R10, #0
3EDCC0:  MOV.W           R0, #0
3EDCC4:  IT GT
3EDCC6:  MOVGT           R0, R10
3EDCC8:  MOVS            R1, #0x77 ; 'w'
3EDCCA:  CMP             R0, #0x77 ; 'w'
3EDCCC:  IT GE
3EDCCE:  MOVGE           R0, R1
3EDCD0:  RSB.W           R0, R0, R0,LSL#4
3EDCD4:  MOV.W           R9, R0,LSL#3
3EDCD8:  MOV.W           R0, R10,LSL#4
3EDCDC:  UXTB.W          R11, R0
3EDCE0:  LDR             R0, [SP,#0x78+var_70]
3EDCE2:  B               loc_3EDD04
3EDCE4:  CMP             R2, R0
3EDCE6:  BEQ             loc_3EDCF6
3EDCE8:  CMP             R3, #0
3EDCEA:  ITT NE
3EDCEC:  LDRNE           R1, [R0,#4]
3EDCEE:  STRNE           R1, [R3,#4]
3EDCF0:  BLX             j__ZN18CPtrNodeSingleLinkdlEPv; CPtrNodeSingleLink::operator delete(void *)
3EDCF4:  B               loc_3EDDEC
3EDCF6:  LDR             R3, [SP,#0x78+var_78]
3EDCF8:  LDR             R2, [R2,#4]
3EDCFA:  STR.W           R2, [R3,R1,LSL#3]
3EDCFE:  BLX             j__ZN18CPtrNodeSingleLinkdlEPv; CPtrNodeSingleLink::operator delete(void *)
3EDD02:  B               loc_3EDDEC
3EDD04:  MOV             R8, R0
3EDD06:  LDRB.W          R0, [R4,#0x3A]
3EDD0A:  AND.W           R0, R0, #7
3EDD0E:  SUBS            R0, #1; switch 5 cases
3EDD10:  CMP             R0, #4
3EDD12:  BHI             def_3EDD14; jumptable 003EDD14 default case
3EDD14:  TBB.W           [PC,R0]; switch jump
3EDD18:  DCB 3; jump table for switch statement
3EDD19:  DCB 0x21
3EDD1A:  DCB 0x2B
3EDD1B:  DCB 0x35
3EDD1C:  DCB 0x41
3EDD1D:  ALIGN 2
3EDD1E:  CMP.W           R8, #0; jumptable 003EDD14 case 1
3EDD22:  MOV.W           R0, #0
3EDD26:  IT GT
3EDD28:  MOVGT           R0, R8
3EDD2A:  MOVS            R1, #0x77 ; 'w'
3EDD2C:  CMP             R0, #0x77 ; 'w'
3EDD2E:  IT GE
3EDD30:  MOVGE           R0, R1
3EDD32:  ADD.W           R1, R0, R9
3EDD36:  LDR             R0, [SP,#0x78+var_5C]
3EDD38:  LDR.W           R2, [R0,R1,LSL#3]
3EDD3C:  CMP             R2, #0
3EDD3E:  BEQ             loc_3EDDEC
3EDD40:  MOVS            R3, #0
3EDD42:  MOV             R6, R2
3EDD44:  MOV             R0, R6; void *
3EDD46:  LDR             R6, [R0]
3EDD48:  CMP             R6, R4
3EDD4A:  BEQ             loc_3EDCE4
3EDD4C:  LDR             R6, [R0,#4]
3EDD4E:  MOV             R3, R0
3EDD50:  CMP             R6, #0
3EDD52:  BNE             loc_3EDD44
3EDD54:  B               loc_3EDDEC
3EDD56:  MOVS            R1, #0; jumptable 003EDD14 default case
3EDD58:  B               loc_3EDDB8
3EDD5A:  AND.W           R0, R8, #0xF; jumptable 003EDD14 case 2
3EDD5E:  LDR             R1, [SP,#0x78+var_60]
3EDD60:  ORR.W           R0, R0, R11
3EDD64:  ADD.W           R0, R0, R0,LSL#1
3EDD68:  ADD.W           R1, R1, R0,LSL#2
3EDD6C:  B               loc_3EDDB8
3EDD6E:  AND.W           R0, R8, #0xF; jumptable 003EDD14 case 3
3EDD72:  LDR             R1, [SP,#0x78+var_64]
3EDD74:  ORR.W           R0, R0, R11
3EDD78:  ADD.W           R0, R0, R0,LSL#1
3EDD7C:  ADD.W           R0, R1, R0,LSL#2
3EDD80:  B               loc_3EDDB6
3EDD82:  AND.W           R0, R8, #0xF; jumptable 003EDD14 case 4
3EDD86:  LDR             R1, [SP,#0x78+var_68]
3EDD88:  ORR.W           R0, R0, R11
3EDD8C:  ADD.W           R0, R0, R0,LSL#1
3EDD90:  ADD.W           R0, R1, R0,LSL#2
3EDD94:  ADD.W           R1, R0, #8
3EDD98:  B               loc_3EDDB8
3EDD9A:  CMP.W           R8, #0; jumptable 003EDD14 case 5
3EDD9E:  MOV.W           R0, #0
3EDDA2:  IT GT
3EDDA4:  MOVGT           R0, R8
3EDDA6:  MOVS            R1, #0x77 ; 'w'
3EDDA8:  CMP             R0, #0x77 ; 'w'
3EDDAA:  IT GE
3EDDAC:  MOVGE           R0, R1
3EDDAE:  LDR             R1, [SP,#0x78+var_6C]
3EDDB0:  ADD             R0, R9
3EDDB2:  ADD.W           R0, R1, R0,LSL#3
3EDDB6:  ADDS            R1, R0, #4
3EDDB8:  LDR             R2, [R1]
3EDDBA:  CBZ             R2, loc_3EDDEC
3EDDBC:  MOV             R0, R2; void *
3EDDBE:  LDR             R3, [R0]
3EDDC0:  CMP             R3, R4
3EDDC2:  BEQ             loc_3EDDCC
3EDDC4:  LDR             R0, [R0,#4]
3EDDC6:  CMP             R0, #0
3EDDC8:  BNE             loc_3EDDBE
3EDDCA:  B               loc_3EDDEC
3EDDCC:  CMP             R2, R0
3EDDCE:  ITT EQ
3EDDD0:  LDREQ           R2, [R0,#4]
3EDDD2:  STREQ           R2, [R1]
3EDDD4:  LDR             R1, [R0,#8]
3EDDD6:  CMP             R1, #0
3EDDD8:  ITT NE
3EDDDA:  LDRNE           R2, [R0,#4]
3EDDDC:  STRNE           R2, [R1,#4]
3EDDDE:  LDR             R1, [R0,#4]
3EDDE0:  CMP             R1, #0
3EDDE2:  ITT NE
3EDDE4:  LDRNE           R2, [R0,#8]
3EDDE6:  STRNE           R2, [R1,#8]
3EDDE8:  BLX             j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3EDDEC:  ADD.W           R0, R8, #1
3EDDF0:  CMP             R8, R5
3EDDF2:  BLT.W           loc_3EDD04
3EDDF6:  LDR             R1, [SP,#0x78+var_74]
3EDDF8:  ADD.W           R0, R10, #1
3EDDFC:  CMP             R10, R1
3EDDFE:  MOV             R10, R0
3EDE00:  BLT.W           loc_3EDCB4
3EDE04:  B               loc_3EDEC6
3EDE06:  VLDR            S2, =200.0
3EDE0A:  VDIV.F32        S4, S16, S2
3EDE0E:  VDIV.F32        S6, S18, S2
3EDE12:  VDIV.F32        S8, S20, S2
3EDE16:  VDIV.F32        S0, S0, S2
3EDE1A:  VMOV.F32        S2, #15.0
3EDE1E:  VADD.F32        S4, S4, S2
3EDE22:  VADD.F32        S6, S6, S2
3EDE26:  VADD.F32        S8, S8, S2
3EDE2A:  VADD.F32        S2, S0, S2
3EDE2E:  VCVT.S32.F32    S4, S4
3EDE32:  VCVT.S32.F32    S0, S6
3EDE36:  VCVT.S32.F32    S6, S8
3EDE3A:  VCVT.S32.F32    S2, S2
3EDE3E:  VMOV            R0, S4
3EDE42:  VMOV            R10, S6
3EDE46:  STR             R0, [SP,#0x78+var_64]
3EDE48:  CMP             R10, R0
3EDE4A:  BGT             loc_3EDEC6
3EDE4C:  VMOV            R0, S2
3EDE50:  VMOV            R5, S0
3EDE54:  STR             R0, [SP,#0x78+var_60]
3EDE56:  LDR             R0, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x3EDE5C)
3EDE58:  ADD             R0, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
3EDE5A:  LDR.W           R11, [R0]; CWorld::ms_aLodPtrLists ...
3EDE5E:  LDR             R0, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x3EDE64)
3EDE60:  ADD             R0, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
3EDE62:  LDR             R0, [R0]; CWorld::ms_aLodPtrLists ...
3EDE64:  STR             R0, [SP,#0x78+var_5C]
3EDE66:  LDR             R0, [SP,#0x78+var_60]
3EDE68:  CMP             R0, R5
3EDE6A:  BGT             loc_3EDEBA
3EDE6C:  RSB.W           R0, R10, R10,LSL#4
3EDE70:  MOV.W           R8, R0,LSL#1
3EDE74:  LDR             R0, [SP,#0x78+var_60]
3EDE76:  MOV             R9, R0
3EDE78:  ADD.W           R1, R9, R8
3EDE7C:  LDR.W           R2, [R11,R1,LSL#2]
3EDE80:  CBZ             R2, loc_3EDEB2
3EDE82:  MOVS            R3, #0
3EDE84:  MOV             R6, R2
3EDE86:  MOV             R0, R6; void *
3EDE88:  LDR             R6, [R0]
3EDE8A:  CMP             R6, R4
3EDE8C:  BEQ             loc_3EDE98
3EDE8E:  LDR             R6, [R0,#4]
3EDE90:  MOV             R3, R0
3EDE92:  CMP             R6, #0
3EDE94:  BNE             loc_3EDE86
3EDE96:  B               loc_3EDEB2
3EDE98:  CMP             R2, R0
3EDE9A:  BEQ             loc_3EDEA6
3EDE9C:  CMP             R3, #0
3EDE9E:  ITT NE
3EDEA0:  LDRNE           R1, [R0,#4]
3EDEA2:  STRNE           R1, [R3,#4]
3EDEA4:  B               loc_3EDEAE
3EDEA6:  LDR             R3, [SP,#0x78+var_5C]
3EDEA8:  LDR             R2, [R2,#4]
3EDEAA:  STR.W           R2, [R3,R1,LSL#2]
3EDEAE:  BLX             j__ZN18CPtrNodeSingleLinkdlEPv; CPtrNodeSingleLink::operator delete(void *)
3EDEB2:  ADD.W           R0, R9, #1
3EDEB6:  CMP             R9, R5
3EDEB8:  BLT             loc_3EDE76
3EDEBA:  LDR             R1, [SP,#0x78+var_64]
3EDEBC:  ADD.W           R0, R10, #1
3EDEC0:  CMP             R10, R1
3EDEC2:  MOV             R10, R0
3EDEC4:  BLT             loc_3EDE66
3EDEC6:  ADD             SP, SP, #0x30 ; '0'
3EDEC8:  VPOP            {D8-D12}
3EDECC:  ADD             SP, SP, #4
3EDECE:  POP.W           {R8-R11}
3EDED2:  POP             {R4-R7,PC}
