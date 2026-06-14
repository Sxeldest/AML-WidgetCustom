; =========================================================
; Game Engine Function: sub_7ED6C
; Address            : 0x7ED6C - 0x7EEC2
; =========================================================

7ED6C:  PUSH            {R4-R7,LR}
7ED6E:  ADD             R7, SP, #0xC
7ED70:  PUSH.W          {R8-R11}
7ED74:  SUB             SP, SP, #0x34
7ED76:  LDR             R1, =(dword_1A460C - 0x7ED82)
7ED78:  VMOV.I32        Q8, #0
7ED7C:  LDR             R0, =(__stack_chk_guard_ptr - 0x7ED84)
7ED7E:  ADD             R1, PC; dword_1A460C
7ED80:  ADD             R0, PC; __stack_chk_guard_ptr
7ED82:  LDR             R0, [R0]; __stack_chk_guard
7ED84:  LDR             R0, [R0]
7ED86:  STR             R0, [SP,#0x50+var_20]
7ED88:  ADD             R0, SP, #0x50+buf
7ED8A:  ADD.W           R2, R0, #8
7ED8E:  LDR             R1, [R1]
7ED90:  VST1.64         {D16-D17}, [R2]
7ED94:  MOVS            R2, #0
7ED96:  STRD.W          R2, R1, [SP,#0x50+buf]
7ED9A:  BL              sub_8613E
7ED9E:  LDR             R0, =(dword_1A45F4 - 0x7EDA4)
7EDA0:  ADD             R0, PC; dword_1A45F4
7EDA2:  STR             R0, [SP,#0x50+var_44]
7EDA4:  LDR.W           R10, [R0]
7EDA8:  CMP.W           R10, #0
7EDAC:  BEQ             loc_7EEA8
7EDAE:  LDR             R0, =(dword_116E00 - 0x7EDBE)
7EDB0:  MOV.W           R11, #0
7EDB4:  MOVS            R5, #0
7EDB6:  MOV.W           R8, #0
7EDBA:  ADD             R0, PC; dword_116E00
7EDBC:  MOV             R9, R0
7EDBE:  B               loc_7EDE0
7EDC0:  MOVW            R0, #0xE100
7EDC4:  STR.W           R11, [SP,#0x50+var_3C]
7EDC8:  MOVT            R0, #0x5F5
7EDCC:  STR             R0, [SP,#0x50+var_40]
7EDCE:  ADD             R0, SP, #0x50+var_40
7EDD0:  BLX             j__ZNSt6__ndk111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILx1ELx1000000000EEEEE; std::this_thread::sleep_for(std::chrono::duration<long long,std::ratio<1ll,1000000000ll>> const&)
7EDD4:  LDR             R0, [SP,#0x50+var_44]
7EDD6:  LDR.W           R10, [R0]
7EDDA:  CMP.W           R10, #0
7EDDE:  BEQ             loc_7EEA8
7EDE0:  BL              sub_86B00
7EDE4:  MOV             R6, R0
7EDE6:  SUBS            R0, R0, R5
7EDE8:  MOV             R4, R1
7EDEA:  SBC.W           R1, R1, R8
7EDEE:  SUBS.W          R0, R0, #0x7D0
7EDF2:  SBCS.W          R0, R1, #0
7EDF6:  BLT             loc_7EE0E
7EDF8:  LDR.W           R0, [R9]; fd
7EDFC:  ADD             R1, SP, #0x50+buf; buf
7EDFE:  MOVS            R2, #0x18; n
7EE00:  MOVS            R3, #0; flags
7EE02:  STRD.W          R11, R11, [SP,#0x50+addr]; addr
7EE06:  BLX             sendto
7EE0A:  MOV             R5, R6
7EE0C:  MOV             R8, R4
7EE0E:  CMP.W           R10, #3
7EE12:  BNE             loc_7EDC0
7EE14:  LDR             R4, =(dword_1A4610 - 0x7EE1E)
7EE16:  LDR.W           R0, [R9]; fd
7EE1A:  ADD             R4, PC; dword_1A4610
7EE1C:  LDRD.W          R1, R2, [R4]; buf
7EE20:  SUBS            R2, R2, R1; n
7EE22:  MOVS            R3, #0; flags
7EE24:  STRD.W          R11, R11, [SP,#0x50+addr]; addr
7EE28:  BLX             recvfrom
7EE2C:  MOV             R6, R0
7EE2E:  ADDS            R0, #1
7EE30:  BEQ             loc_7EEA8
7EE32:  CMP             R6, #0x18
7EE34:  BLT             loc_7EDD4
7EE36:  LDR             R0, [R4]
7EE38:  BL              sub_860C0
7EE3C:  CMP             R0, #0
7EE3E:  BEQ             loc_7EDD4
7EE40:  LDR             R0, [R4]
7EE42:  BL              sub_860BA
7EE46:  CMP             R6, R0
7EE48:  BNE             loc_7EDD4
7EE4A:  LDR             R0, [R4]
7EE4C:  LDR             R0, [R0,#8]
7EE4E:  CMP             R0, #0
7EE50:  BEQ             loc_7EDD4
7EE52:  MOVS            R0, #0xC; unsigned int
7EE54:  BLX             j__Znwj; operator new(uint)
7EE58:  LDR             R1, =(dword_1A4610 - 0x7EE60)
7EE5A:  MOV             R6, R0
7EE5C:  ADD             R1, PC; dword_1A4610
7EE5E:  BL              sub_7FD38
7EE62:  LDR             R0, =(dword_1A4800 - 0x7EE68)
7EE64:  ADD             R0, PC; dword_1A4800
7EE66:  LDR.W           R1, [R0,#(dword_1A4880 - 0x1A4800)]
7EE6A:  LDR             R2, [R0]
7EE6C:  ADDS            R4, R1, #1
7EE6E:  LDR.W           R3, [R0,#(dword_1A4900 - 0x1A4800)]
7EE72:  SUBS            R2, R4, R2
7EE74:  IT NE
7EE76:  MOVNE           R2, R4
7EE78:  CMP             R2, R3
7EE7A:  DMB.W           ISH
7EE7E:  BNE             loc_7EE94
7EE80:  LDR             R0, [R6]; void *
7EE82:  CMP             R0, #0
7EE84:  ITT NE
7EE86:  STRNE           R0, [R6,#4]
7EE88:  BLXNE           j__ZdlPv; operator delete(void *)
7EE8C:  MOV             R0, R6; void *
7EE8E:  BLX             j__ZdlPv; operator delete(void *)
7EE92:  B               loc_7EDD4
7EE94:  LDR             R3, [R0,#(dword_1A4804 - 0x1A4800)]
7EE96:  ADD.W           R1, R3, R1,LSL#2
7EE9A:  STR.W           R6, [R1,#0x80]
7EE9E:  DMB.W           ISH
7EEA2:  STR.W           R2, [R0,#(dword_1A4880 - 0x1A4800)]
7EEA6:  B               loc_7EDD4
7EEA8:  LDR             R0, [SP,#0x50+var_20]
7EEAA:  LDR             R1, =(__stack_chk_guard_ptr - 0x7EEB0)
7EEAC:  ADD             R1, PC; __stack_chk_guard_ptr
7EEAE:  LDR             R1, [R1]; __stack_chk_guard
7EEB0:  LDR             R1, [R1]
7EEB2:  CMP             R1, R0
7EEB4:  ITTT EQ
7EEB6:  ADDEQ           SP, SP, #0x34 ; '4'
7EEB8:  POPEQ.W         {R8-R11}
7EEBC:  POPEQ           {R4-R7,PC}
7EEBE:  BLX             __stack_chk_fail
