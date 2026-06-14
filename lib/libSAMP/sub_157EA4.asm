; =========================================================
; Game Engine Function: sub_157EA4
; Address            : 0x157EA4 - 0x157F40
; =========================================================

157EA4:  PUSH            {R4-R7,LR}
157EA6:  ADD             R7, SP, #0xC
157EA8:  PUSH.W          {R11}
157EAC:  SUB             SP, SP, #0x18
157EAE:  MOV             R4, R0
157EB0:  LDR             R0, [R0]
157EB2:  CBZ             R0, loc_157F06
157EB4:  ADD             R0, SP, #0x28+var_20; this
157EB6:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
157EBA:  LDRD.W          R0, R1, [R4,#0x18]
157EBE:  LDRD.W          R2, R3, [SP,#0x28+var_20]
157EC2:  SUBS            R0, R2, R0
157EC4:  MOVW            R2, #0x9401
157EC8:  SBC.W           R1, R3, R1
157ECC:  MOVT            R2, #0x7735
157ED0:  SUBS            R0, R0, R2
157ED2:  SBCS.W          R0, R1, #0
157ED6:  BLT             loc_157F36
157ED8:  ADD             R0, SP, #0x28+var_20; this
157EDA:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
157EDE:  LDRD.W          R0, R1, [SP,#0x28+var_20]
157EE2:  STRD.W          R0, R1, [R4,#0x18]
157EE6:  ADD             R1, SP, #0x28+var_20
157EE8:  LDR             R0, [R4,#4]
157EEA:  LDR             R0, [R0]
157EEC:  BL              sub_164B30
157EF0:  CBZ             R0, loc_157F00
157EF2:  LDRB.W          R0, [SP,#0x28+var_18]
157EF6:  LSLS            R0, R0, #0x1F
157EF8:  ITT NE
157EFA:  LDRNE           R5, [SP,#0x28+s]
157EFC:  CMPNE           R5, #0
157EFE:  BNE             loc_157F0A
157F00:  MOV             R0, R4
157F02:  BL              sub_157C88
157F06:  MOVS            R0, #0
157F08:  B               loc_157F38
157F0A:  MOV             R0, R5; s
157F0C:  LDR             R6, [R4,#4]
157F0E:  BLX             strlen
157F12:  LDRB.W          R1, [R6,#4]!
157F16:  LDR             R2, [R6,#4]
157F18:  LSLS            R3, R1, #0x1F
157F1A:  IT EQ
157F1C:  LSREQ           R2, R1, #1
157F1E:  CMP             R0, R2
157F20:  BNE             loc_157F00
157F22:  STR             R0, [SP,#0x28+var_28]
157F24:  MOV             R0, R6
157F26:  MOVS            R1, #0
157F28:  MOV.W           R2, #0xFFFFFFFF
157F2C:  MOV             R3, R5
157F2E:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
157F32:  CMP             R0, #0
157F34:  BNE             loc_157F00
157F36:  MOVS            R0, #1
157F38:  ADD             SP, SP, #0x18
157F3A:  POP.W           {R11}
157F3E:  POP             {R4-R7,PC}
