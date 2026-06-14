; =========================================================
; Game Engine Function: sub_E3EC0
; Address            : 0xE3EC0 - 0xE3F7A
; =========================================================

E3EC0:  PUSH            {R4-R7,LR}
E3EC2:  ADD             R7, SP, #0xC
E3EC4:  PUSH.W          {R8}
E3EC8:  ADD.W           R5, R0, #0x20 ; ' '
E3ECC:  MOV             R4, R0
E3ECE:  MOV             R0, R5
E3ED0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
E3ED4:  LDR             R0, [R4,#0x30]
E3ED6:  MOVS            R1, #0
E3ED8:  STR             R1, [R4,#0x2C]
E3EDA:  LSLS            R1, R0, #0x1C
E3EDC:  BPL             loc_E3EFA
E3EDE:  LDRB.W          R3, [R4,#0x20]
E3EE2:  LDRD.W          R1, R2, [R4,#0x24]
E3EE6:  ANDS.W          R6, R3, #1
E3EEA:  ITT EQ
E3EEC:  ADDEQ           R2, R5, #1
E3EEE:  LSREQ           R1, R3, #1
E3EF0:  ADD             R1, R2
E3EF2:  STR             R1, [R4,#0x2C]
E3EF4:  STRD.W          R2, R2, [R4,#8]
E3EF8:  STR             R1, [R4,#0x10]
E3EFA:  LSLS            R0, R0, #0x1B
E3EFC:  BPL             loc_E3F74
E3EFE:  LDRB.W          R2, [R4,#0x20]
E3F02:  ADD.W           R8, R5, #1
E3F06:  LDRD.W          R0, R6, [R4,#0x20]
E3F0A:  LDR             R1, [R4,#0x28]
E3F0C:  ANDS.W          R3, R2, #1
E3F10:  IT EQ
E3F12:  LSREQ           R6, R2, #1
E3F14:  IT EQ
E3F16:  MOVEQ           R1, R8
E3F18:  ADD             R1, R6
E3F1A:  BIC.W           R0, R0, #1
E3F1E:  STR             R1, [R4,#0x2C]
E3F20:  SUBS            R1, R0, #1
E3F22:  MOV             R0, R5
E3F24:  MOVS            R2, #0
E3F26:  CMP             R3, #0
E3F28:  IT EQ
E3F2A:  MOVEQ           R1, #0xA
E3F2C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
E3F30:  LDRB.W          R2, [R4,#0x20]
E3F34:  LDRD.W          R1, R0, [R4,#0x24]
E3F38:  LDRB.W          R3, [R4,#0x30]
E3F3C:  ANDS.W          R5, R2, #1
E3F40:  ITT EQ
E3F42:  MOVEQ           R0, R8
E3F44:  LSREQ           R1, R2, #1
E3F46:  STRD.W          R0, R0, [R4,#0x14]
E3F4A:  ADD             R1, R0
E3F4C:  STR             R1, [R4,#0x1C]
E3F4E:  LSLS            R1, R3, #0x1E
E3F50:  BEQ             loc_E3F74
E3F52:  CMP.W           R6, #0xFFFFFFFF
E3F56:  BLE             loc_E3F5C
E3F58:  CBNZ            R6, loc_E3F70
E3F5A:  B               loc_E3F74
E3F5C:  ADD.W           R1, R6, #0x80000000
E3F60:  ADDS            R2, R1, #1
E3F62:  MOV             R1, #0x7FFFFFFF
E3F66:  ADD             R0, R1
E3F68:  MOV             R6, R2
E3F6A:  MOVS            R2, #1
E3F6C:  CMP             R6, #0
E3F6E:  BMI             loc_E3F66
E3F70:  ADD             R0, R6
E3F72:  STR             R0, [R4,#0x18]
E3F74:  POP.W           {R8}
E3F78:  POP             {R4-R7,PC}
