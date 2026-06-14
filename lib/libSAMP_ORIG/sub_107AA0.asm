; =========================================================
; Game Engine Function: sub_107AA0
; Address            : 0x107AA0 - 0x107B3A
; =========================================================

107AA0:  PUSH            {R4-R7,LR}
107AA2:  ADD             R7, SP, #0xC
107AA4:  PUSH.W          {R11}
107AA8:  SUB             SP, SP, #0x40
107AAA:  MOV             R6, R0
107AAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x107AB4)
107AAE:  MOV             R4, R2
107AB0:  ADD             R0, PC; __stack_chk_guard_ptr
107AB2:  LDR             R0, [R0]; __stack_chk_guard
107AB4:  LDR             R0, [R0]
107AB6:  STR             R0, [SP,#0x50+var_14]
107AB8:  LDR             R0, [R1,#4]
107ABA:  LDR             R2, [R6,#4]
107ABC:  CMP             R2, R0
107ABE:  BEQ             loc_107B1C
107AC0:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107AC8)
107AC2:  MOVS            R5, #0
107AC4:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107AC6:  LDR             R3, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
107AC8:  LDR             R0, =(_ZTIN10__cxxabiv117__class_type_infoE_ptr - 0x107ACE)
107ACA:  ADD             R0, PC; _ZTIN10__cxxabiv117__class_type_infoE_ptr
107ACC:  LDR             R2, [R0]; lpdtype
107ACE:  MOV             R0, R1; lpsrc
107AD0:  MOV             R1, R3; lpstype
107AD2:  MOVS            R3, #0; s2d
107AD4:  BLX             j___dynamic_cast
107AD8:  CBZ             R0, loc_107B1E
107ADA:  VMOV.I32        Q8, #0
107ADE:  ADD             R1, SP, #0x50+var_4C
107AE0:  ADDS            R2, R1, #4
107AE2:  STR             R0, [SP,#0x50+var_4C]
107AE4:  VST1.32         {D16-D17}, [R2]!
107AE8:  VST1.32         {D16-D17}, [R2]!
107AEC:  VST1.32         {D16-D17}, [R2]!
107AF0:  STR             R5, [R2]
107AF2:  MOVS            R2, #1
107AF4:  STR             R2, [SP,#0x50+var_1C]
107AF6:  MOV.W           R2, #0xFFFFFFFF
107AFA:  STRD.W          R6, R2, [SP,#0x50+var_44]
107AFE:  LDR             R3, [R0]
107B00:  LDR             R2, [R4]
107B02:  LDR             R5, [R3,#0x1C]
107B04:  MOVS            R3, #1
107B06:  BLX             R5
107B08:  LDR             R0, [SP,#0x50+var_34]
107B0A:  SUBS            R0, #1
107B0C:  CLZ.W           R0, R0
107B10:  MOV.W           R5, R0,LSR#5
107B14:  ITT EQ
107B16:  LDREQ           R0, [SP,#0x50+var_3C]
107B18:  STREQ           R0, [R4]
107B1A:  B               loc_107B1E
107B1C:  MOVS            R5, #1
107B1E:  LDR             R0, [SP,#0x50+var_14]
107B20:  LDR             R1, =(__stack_chk_guard_ptr - 0x107B26)
107B22:  ADD             R1, PC; __stack_chk_guard_ptr
107B24:  LDR             R1, [R1]; __stack_chk_guard
107B26:  LDR             R1, [R1]
107B28:  CMP             R1, R0
107B2A:  ITTTT EQ
107B2C:  MOVEQ           R0, R5
107B2E:  ADDEQ           SP, SP, #0x40 ; '@'
107B30:  POPEQ.W         {R11}
107B34:  POPEQ           {R4-R7,PC}
107B36:  BLX             __stack_chk_fail
