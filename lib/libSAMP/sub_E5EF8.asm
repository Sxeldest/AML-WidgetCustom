; =========================================================
; Game Engine Function: sub_E5EF8
; Address            : 0xE5EF8 - 0xE5F64
; =========================================================

E5EF8:  PUSH            {R4,R6,R7,LR}
E5EFA:  ADD             R7, SP, #8
E5EFC:  MOV             R4, R0
E5EFE:  CMP             R1, #8; switch 9 cases
E5F00:  BHI             def_E5F02; jumptable 000E5F02 default case, case 0
E5F02:  TBB.W           [PC,R1]; switch jump
E5F06:  DCB 9; jump table for switch statement
E5F07:  DCB 0xB
E5F08:  DCB 0x15
E5F09:  DCB 0x1A
E5F0A:  DCB 0x1F
E5F0B:  DCB 5
E5F0C:  DCB 5
E5F0D:  DCB 5
E5F0E:  DCB 0x22
E5F0F:  ALIGN 2
E5F10:  MOVS            R0, #0; jumptable 000E5F02 cases 5-7
E5F12:  STR             R0, [R4]
E5F14:  STR             R0, [R4,#4]
E5F16:  B               loc_E5F60
E5F18:  MOVS            R0, #0; jumptable 000E5F02 default case, case 0
E5F1A:  B               loc_E5F5E
E5F1C:  MOVS            R0, #0xC; jumptable 000E5F02 case 1
E5F1E:  BLX             j__Znwj; operator new(uint)
E5F22:  MOVS            R1, #0
E5F24:  MOV             R2, R0
E5F26:  STR.W           R1, [R2,#4]!
E5F2A:  STR             R1, [R0,#8]
E5F2C:  STR             R2, [R0]
E5F2E:  B               loc_E5F5E
E5F30:  MOVS            R0, #0xC; jumptable 000E5F02 case 2
E5F32:  BLX             j__Znwj; operator new(uint)
E5F36:  MOVS            R1, #0
E5F38:  B               loc_E5F58
E5F3A:  LDR             R0, =(byte_8F794 - 0xE5F40); jumptable 000E5F02 case 3
E5F3C:  ADD             R0, PC; byte_8F794
E5F3E:  BL              sub_E5F68
E5F42:  B               loc_E5F5E
E5F44:  MOVS            R0, #0; jumptable 000E5F02 case 4
E5F46:  STRB            R0, [R4]
E5F48:  B               loc_E5F60
E5F4A:  MOVS            R0, #0x20 ; ' '; jumptable 000E5F02 case 8
E5F4C:  BLX             j__Znwj; operator new(uint)
E5F50:  MOVS            R1, #0
E5F52:  STRD.W          R1, R1, [R0,#0x10]
E5F56:  STRB            R1, [R0,#0x18]
E5F58:  STR             R1, [R0]
E5F5A:  STR             R1, [R0,#4]
E5F5C:  STR             R1, [R0,#8]
E5F5E:  STR             R0, [R4]
E5F60:  MOV             R0, R4
E5F62:  POP             {R4,R6,R7,PC}
