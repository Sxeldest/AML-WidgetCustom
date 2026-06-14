; =========================================================
; Game Engine Function: sub_6ECB0
; Address            : 0x6ECB0 - 0x6ED60
; =========================================================

6ECB0:  PUSH            {R4,R5,R7,LR}
6ECB2:  ADD             R7, SP, #8
6ECB4:  SUB             SP, SP, #0x30
6ECB6:  MOV             R4, R0
6ECB8:  ADR             R0, dword_6ED80
6ECBA:  VLD1.64         {D16-D17}, [R0@128]
6ECBE:  VMOV.I32        Q9, #0
6ECC2:  MOV             R2, R1
6ECC4:  ADD             R1, SP, #0x38+var_30
6ECC6:  LDR             R0, =(__stack_chk_guard_ptr - 0x6ECCE)
6ECC8:  ADDS            R3, R1, #4
6ECCA:  ADD             R0, PC; __stack_chk_guard_ptr
6ECCC:  LDR             R0, [R0]; __stack_chk_guard
6ECCE:  LDR             R0, [R0]
6ECD0:  STR             R0, [SP,#0x38+var_C]
6ECD2:  LDR             R0, [R4,#0x18]
6ECD4:  VST1.32         {D18-D19}, [R3]!
6ECD8:  VST1.32         {D16-D17}, [R3]
6ECDC:  STR             R0, [SP,#0x38+var_30]
6ECDE:  MOV             R0, SP
6ECE0:  MOV             R3, R4
6ECE2:  BL              sub_6EE32
6ECE6:  LDR             R0, =(sub_6F070+1 - 0x6ECF2)
6ECE8:  MOVS            R5, #0
6ECEA:  LDRD.W          R1, R2, [SP,#0x38+var_38]
6ECEE:  ADD             R0, PC; sub_6F070
6ECF0:  STRD.W          R1, R2, [R4,#0x30]
6ECF4:  CMP             R1, #0
6ECF6:  IT NE
6ECF8:  MOVNE           R0, R5
6ECFA:  CBZ             R0, loc_6ED2A
6ECFC:  LDR             R0, [R4,#0x24]
6ECFE:  SUB.W           R1, R0, #0x10
6ED02:  STR             R1, [R4,#0x24]
6ED04:  CMP             R4, R1
6ED06:  ITTTT NE
6ED08:  LDRHNE.W        R12, [R0,#-2]
6ED0C:  VLDRNE          D16, [R1]
6ED10:  LDRNE           R3, [R1,#8]
6ED12:  LDRHNE          R1, [R1,#0xC]
6ED14:  ITTTT NE
6ED16:  MOVNE           R2, #0
6ED18:  STRHNE.W        R2, [R0,#-2]
6ED1C:  STRHNE          R1, [R4,#0xC]
6ED1E:  STRNE           R3, [R4,#8]
6ED20:  ITT NE
6ED22:  VSTRNE          D16, [R4]
6ED26:  STRHNE.W        R12, [R4,#0xE]
6ED2A:  LDR             R0, [R4,#0x20]; ptr
6ED2C:  STR             R0, [R4,#0x24]
6ED2E:  BLX             free
6ED32:  LDR             R0, [SP,#0x38+ptr]; ptr
6ED34:  STRD.W          R5, R5, [R4,#0x20]
6ED38:  STR             R5, [R4,#0x28]
6ED3A:  BLX             free
6ED3E:  LDR             R0, [SP,#0x38+var_2C]; void *
6ED40:  CMP             R0, #0
6ED42:  IT NE
6ED44:  BLXNE           j__ZdlPv; operator delete(void *)
6ED48:  LDR             R0, [SP,#0x38+var_C]
6ED4A:  LDR             R1, =(__stack_chk_guard_ptr - 0x6ED50)
6ED4C:  ADD             R1, PC; __stack_chk_guard_ptr
6ED4E:  LDR             R1, [R1]; __stack_chk_guard
6ED50:  LDR             R1, [R1]
6ED52:  CMP             R1, R0
6ED54:  ITTT EQ
6ED56:  MOVEQ           R0, R4
6ED58:  ADDEQ           SP, SP, #0x30 ; '0'
6ED5A:  POPEQ           {R4,R5,R7,PC}
6ED5C:  BLX             __stack_chk_fail
