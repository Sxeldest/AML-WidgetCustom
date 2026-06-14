; =========================================================
; Game Engine Function: _ZN4CHID16GetMappingByNameEPKc
; Address            : 0x28C02C - 0x28C068
; =========================================================

28C02C:  PUSH            {R4-R7,LR}
28C02E:  ADD             R7, SP, #0xC
28C030:  PUSH.W          {R8}
28C034:  MOV             R8, R0
28C036:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28C03C)
28C038:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28C03A:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28C03C:  LDR             R5, [R0,#(dword_6E001C - 0x6E0018)]
28C03E:  CBZ             R5, loc_28C05E
28C040:  LDR             R0, =(_ZN4CHID14m_MappingPairsE_ptr - 0x28C048)
28C042:  MOVS            R4, #0
28C044:  ADD             R0, PC; _ZN4CHID14m_MappingPairsE_ptr
28C046:  LDR             R0, [R0]; CHID::m_MappingPairs ...
28C048:  LDR             R0, [R0,#(dword_6E0020 - 0x6E0018)]
28C04A:  ADDS            R6, R0, #4
28C04C:  MOV             R0, R8; char *
28C04E:  MOV             R1, R6; char *
28C050:  BLX             strcasecmp
28C054:  CBZ             R0, loc_28C060
28C056:  ADDS            R4, #1
28C058:  ADDS            R6, #0x84
28C05A:  CMP             R4, R5
28C05C:  BCC             loc_28C04C
28C05E:  MOVS            R4, #0
28C060:  MOV             R0, R4
28C062:  POP.W           {R8}
28C066:  POP             {R4-R7,PC}
