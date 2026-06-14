; =========================================================
; Game Engine Function: sub_EEA64
; Address            : 0xEEA64 - 0xEEABC
; =========================================================

EEA64:  PUSH            {R4-R7,LR}
EEA66:  ADD             R7, SP, #0xC
EEA68:  PUSH.W          {R8,R9,R11}
EEA6C:  MOV             R5, R0
EEA6E:  LDR             R0, =(byte_23DECC - 0xEEA78)
EEA70:  STR             R1, [R5]
EEA72:  MOV             R8, R3
EEA74:  ADD             R0, PC; byte_23DECC
EEA76:  MOV             R9, R2
EEA78:  MOV             R4, R1
EEA7A:  LDRB            R0, [R0]
EEA7C:  DMB.W           ISH
EEA80:  LDR             R6, =(dword_23DEC8 - 0xEEA86)
EEA82:  ADD             R6, PC; dword_23DEC8
EEA84:  LSLS            R0, R0, #0x1F
EEA86:  BEQ             loc_EEA9E
EEA88:  LDR             R1, [R6]
EEA8A:  MOV             R0, R4
EEA8C:  BLX             j__ZNKSt6__ndk16localeeqERKS0_; std::locale::operator==(std::locale const&)
EEA90:  STRB            R0, [R5,#4]
EEA92:  MOV             R0, R5
EEA94:  STRD.W          R9, R8, [R5,#8]
EEA98:  POP.W           {R8,R9,R11}
EEA9C:  POP             {R4-R7,PC}
EEA9E:  LDR             R0, =(byte_23DECC - 0xEEAA4)
EEAA0:  ADD             R0, PC; byte_23DECC ; __guard *
EEAA2:  BLX             j___cxa_guard_acquire
EEAA6:  CMP             R0, #0
EEAA8:  BEQ             loc_EEA88
EEAAA:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
EEAAE:  LDR             R1, =(byte_23DECC - 0xEEAB6)
EEAB0:  STR             R0, [R6]
EEAB2:  ADD             R1, PC; byte_23DECC
EEAB4:  MOV             R0, R1; __guard *
EEAB6:  BLX             j___cxa_guard_release
EEABA:  B               loc_EEA88
