; =========================================================
; Game Engine Function: sub_77A44
; Address            : 0x77A44 - 0x77B5C
; =========================================================

77A44:  PUSH            {R4-R7,LR}
77A46:  ADD             R7, SP, #0xC
77A48:  PUSH.W          {R11}
77A4C:  SUB             SP, SP, #0x10
77A4E:  MOV             R5, R2
77A50:  LDR             R2, =(asc_4E35F - 0x77A5A); "=" ...
77A52:  MOV             R4, R0
77A54:  LDR             R0, =(__stack_chk_guard_ptr - 0x77A5E)
77A56:  ADD             R2, PC; "="
77A58:  MOV             R6, SP
77A5A:  ADD             R0, PC; __stack_chk_guard_ptr
77A5C:  LDR             R0, [R0]; __stack_chk_guard
77A5E:  LDR             R0, [R0]
77A60:  STR             R0, [SP,#0x20+var_14]
77A62:  MOV             R0, R6; int
77A64:  BL              sub_77B7C
77A68:  LDRB            R0, [R5]
77A6A:  LDRD.W          R2, R1, [R5,#4]
77A6E:  ANDS.W          R3, R0, #1
77A72:  ITT EQ
77A74:  ADDEQ           R1, R5, #1
77A76:  LSREQ           R2, R0, #1
77A78:  MOV             R0, R6
77A7A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
77A7E:  VLDR            D16, [R0]
77A82:  LDR             R1, [R0,#8]
77A84:  STR             R1, [R4,#8]
77A86:  MOVS            R1, #0
77A88:  VSTR            D16, [R4]
77A8C:  STRD.W          R1, R1, [R0]
77A90:  STR             R1, [R0,#8]
77A92:  LDRB.W          R0, [SP,#0x20+var_20]
77A96:  LSLS            R0, R0, #0x1F
77A98:  ITT NE
77A9A:  LDRNE           R0, [SP,#0x20+var_18]; void *
77A9C:  BLXNE           j__ZdlPv; operator delete(void *)
77AA0:  LDRB            R1, [R4]
77AA2:  LDRD.W          R0, R5, [R4,#4]
77AA6:  ANDS.W          R2, R1, #1
77AAA:  ITT EQ
77AAC:  LSREQ           R0, R1, #1
77AAE:  ADDEQ           R5, R4, #1
77AB0:  CMP             R0, #0
77AB2:  BEQ             loc_77B42
77AB4:  CMP             R0, #0x10
77AB6:  BCS             loc_77ABC
77AB8:  MOV             R2, R5
77ABA:  B               loc_77B2A
77ABC:  BIC.W           R6, R0, #0xF
77AC0:  VMVN.I32        Q8, #0x40 ; '@'
77AC4:  VMOV.I32        Q9, #0x1A
77AC8:  ADDS            R2, R5, R6
77ACA:  VMOV.I8         Q10, #0x20 ; ' '
77ACE:  MOV             R3, R6
77AD0:  MOV             R1, R5
77AD2:  VLD1.8          {D22-D23}, [R1]
77AD6:  SUBS            R3, #0x10
77AD8:  VMOVL.U8        Q12, D23
77ADC:  VMOVL.U8        Q13, D22
77AE0:  VADDW.U16       Q14, Q8, D25
77AE4:  VADDW.U16       Q15, Q8, D27
77AE8:  VADDW.U16       Q12, Q8, D24
77AEC:  VADDW.U16       Q13, Q8, D26
77AF0:  VCGT.U32        Q14, Q9, Q14
77AF4:  VCGT.U32        Q12, Q9, Q12
77AF8:  VCGT.U32        Q15, Q9, Q15
77AFC:  VCGT.U32        Q13, Q9, Q13
77B00:  VMOVN.I32       D29, Q14
77B04:  VMOVN.I32       D28, Q12
77B08:  VMOVN.I32       D25, Q15
77B0C:  VMOVN.I32       D24, Q13
77B10:  VMOVN.I16       D29, Q14
77B14:  VORR            Q13, Q11, Q10
77B18:  VMOVN.I16       D28, Q12
77B1C:  VBIT            Q11, Q13, Q14
77B20:  VST1.8          {D22-D23}, [R1]!
77B24:  BNE             loc_77AD2
77B26:  CMP             R0, R6
77B28:  BEQ             loc_77B42
77B2A:  ADD             R0, R5
77B2C:  LDRB            R1, [R2]
77B2E:  SUB.W           R3, R1, #0x41 ; 'A'
77B32:  CMP             R3, #0x1A
77B34:  IT CC
77B36:  ORRCC.W         R1, R1, #0x20 ; ' '
77B3A:  STRB.W          R1, [R2],#1
77B3E:  CMP             R2, R0
77B40:  BNE             loc_77B2C
77B42:  LDR             R0, [SP,#0x20+var_14]
77B44:  LDR             R1, =(__stack_chk_guard_ptr - 0x77B4A)
77B46:  ADD             R1, PC; __stack_chk_guard_ptr
77B48:  LDR             R1, [R1]; __stack_chk_guard
77B4A:  LDR             R1, [R1]
77B4C:  CMP             R1, R0
77B4E:  ITTT EQ
77B50:  ADDEQ           SP, SP, #0x10
77B52:  POPEQ.W         {R11}
77B56:  POPEQ           {R4-R7,PC}
77B58:  BLX             __stack_chk_fail
