; =========================================================
; Game Engine Function: sub_21EEF8
; Address            : 0x21EEF8 - 0x21EF92
; =========================================================

21EEF8:  PUSH            {R4-R7,LR}
21EEFA:  ADD             R7, SP, #0xC
21EEFC:  PUSH.W          {R11}
21EF00:  SUB             SP, SP, #0x40
21EF02:  MOV             R6, R0
21EF04:  LDR             R0, =(__stack_chk_guard_ptr - 0x21EF0C)
21EF06:  MOV             R4, R2
21EF08:  ADD             R0, PC; __stack_chk_guard_ptr
21EF0A:  LDR             R0, [R0]; __stack_chk_guard
21EF0C:  LDR             R0, [R0]
21EF0E:  STR             R0, [SP,#0x50+var_14]
21EF10:  LDR             R0, [R1,#4]
21EF12:  LDR             R2, [R6,#4]
21EF14:  CMP             R2, R0
21EF16:  BEQ             loc_21EF74
21EF18:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x21EF20)
21EF1A:  MOVS            R5, #0
21EF1C:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
21EF1E:  LDR             R3, [R0]; `typeinfo for'__cxxabiv1::__shim_type_info ...
21EF20:  LDR             R0, =(_ZTIN10__cxxabiv117__class_type_infoE_ptr - 0x21EF26)
21EF22:  ADD             R0, PC; _ZTIN10__cxxabiv117__class_type_infoE_ptr
21EF24:  LDR             R2, [R0]; lpdtype
21EF26:  MOV             R0, R1; lpsrc
21EF28:  MOV             R1, R3; lpstype
21EF2A:  MOVS            R3, #0; s2d
21EF2C:  BLX             j___dynamic_cast
21EF30:  CBZ             R0, loc_21EF76
21EF32:  VMOV.I32        Q8, #0
21EF36:  ADD             R1, SP, #0x50+var_4C
21EF38:  ADDS            R2, R1, #4
21EF3A:  STR             R0, [SP,#0x50+var_4C]
21EF3C:  VST1.32         {D16-D17}, [R2]!
21EF40:  VST1.32         {D16-D17}, [R2]!
21EF44:  VST1.32         {D16-D17}, [R2]!
21EF48:  STR             R5, [R2]
21EF4A:  MOVS            R2, #1
21EF4C:  STR             R2, [SP,#0x50+var_1C]
21EF4E:  MOV.W           R2, #0xFFFFFFFF
21EF52:  STRD.W          R6, R2, [SP,#0x50+var_44]
21EF56:  LDR             R3, [R0]
21EF58:  LDR             R2, [R4]
21EF5A:  LDR             R5, [R3,#0x1C]
21EF5C:  MOVS            R3, #1
21EF5E:  BLX             R5
21EF60:  LDR             R0, [SP,#0x50+var_34]
21EF62:  SUBS            R0, #1
21EF64:  CLZ.W           R0, R0
21EF68:  MOV.W           R5, R0,LSR#5
21EF6C:  ITT EQ
21EF6E:  LDREQ           R0, [SP,#0x50+var_3C]
21EF70:  STREQ           R0, [R4]
21EF72:  B               loc_21EF76
21EF74:  MOVS            R5, #1
21EF76:  LDR             R0, [SP,#0x50+var_14]
21EF78:  LDR             R1, =(__stack_chk_guard_ptr - 0x21EF7E)
21EF7A:  ADD             R1, PC; __stack_chk_guard_ptr
21EF7C:  LDR             R1, [R1]; __stack_chk_guard
21EF7E:  LDR             R1, [R1]
21EF80:  CMP             R1, R0
21EF82:  ITTTT EQ
21EF84:  MOVEQ           R0, R5
21EF86:  ADDEQ           SP, SP, #0x40 ; '@'
21EF88:  POPEQ.W         {R11}
21EF8C:  POPEQ           {R4-R7,PC}
21EF8E:  BLX             __stack_chk_fail
