; =========================================================
; Game Engine Function: sub_139D94
; Address            : 0x139D94 - 0x139E7E
; =========================================================

139D94:  PUSH            {R4-R7,LR}
139D96:  ADD             R7, SP, #0xC
139D98:  PUSH.W          {R8,R9,R11}
139D9C:  SUB             SP, SP, #0x10
139D9E:  MOV             R5, R1
139DA0:  LDR             R1, [R0,#0x54]
139DA2:  MOV             R9, R3
139DA4:  MOV             R8, R2
139DA6:  MOV             R6, R0
139DA8:  CBZ             R1, loc_139DB0
139DAA:  MOV             R0, R6
139DAC:  BL              sub_12BE22
139DB0:  CMP             R5, #5; switch 6 cases
139DB2:  MOV.W           R0, #0xFFFFFFFF
139DB6:  MOV.W           R1, #0
139DBA:  STRD.W          R1, R0, [R6,#0x54]
139DBE:  BHI             def_139DC0; jumptable 00139DC0 default case
139DC0:  TBB.W           [PC,R5]; switch jump
139DC4:  DCB 0x2E; jump table for switch statement
139DC5:  DCB 3
139DC6:  DCB 0x1F
139DC7:  DCB 3
139DC8:  DCB 0x1F
139DC9:  DCB 0x3D
139DCA:  MOVS            R0, #0x5C ; '\'; jumptable 00139DC0 cases 1,3
139DCC:  BLX             j__Znwj; operator new(uint)
139DD0:  MOV             R4, R0
139DD2:  ADD             R0, SP, #0x28+var_24
139DD4:  MOV             R1, R9
139DD6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
139DDA:  ADD             R1, SP, #0x28+var_24
139DDC:  MOV             R0, R4
139DDE:  BL              sub_13B750
139DE2:  LDRB.W          R0, [SP,#0x28+var_24]
139DE6:  LSLS            R0, R0, #0x1F
139DE8:  ITT NE
139DEA:  LDRNE           R0, [SP,#0x28+var_1C]; void *
139DEC:  BLXNE           j__ZdlPv; operator delete(void *)
139DF0:  MOV             R0, R6
139DF2:  MOV             R1, R4
139DF4:  BL              sub_12BDF6
139DF8:  MOV             R0, R4
139DFA:  MOV             R1, R8
139DFC:  BL              sub_13B89C
139E00:  B               loc_139E5A
139E02:  MOVS            R0, #0x6C ; 'l'; jumptable 00139DC0 cases 2,4
139E04:  BLX             j__Znwj; operator new(uint)
139E08:  MOV             R4, R0
139E0A:  BL              sub_13B8BC
139E0E:  MOV             R0, R6
139E10:  MOV             R1, R4
139E12:  BL              sub_12BDF6
139E16:  MOV             R0, R4
139E18:  MOV             R1, R8
139E1A:  BL              sub_13B918
139E1E:  B               loc_139E5A
139E20:  MOVS            R0, #0x64 ; 'd'; jumptable 00139DC0 case 0
139E22:  BLX             j__Znwj; operator new(uint)
139E26:  MOV             R4, R0
139E28:  BL              sub_13C4F8
139E2C:  MOV             R0, R6
139E2E:  MOV             R1, R4
139E30:  BL              sub_12BDF6
139E34:  LDR             R0, [R4,#0x60]
139E36:  MOV             R1, R8
139E38:  BL              sub_13D450
139E3C:  B               loc_139E5A
139E3E:  MOVS            R0, #0x6C ; 'l'; jumptable 00139DC0 case 5
139E40:  BLX             j__Znwj; operator new(uint)
139E44:  MOV             R4, R0
139E46:  BL              sub_13C5A8
139E4A:  MOV             R0, R6
139E4C:  MOV             R1, R4
139E4E:  BL              sub_12BDF6
139E52:  MOV             R0, R4
139E54:  MOV             R1, R8
139E56:  BL              sub_13C604
139E5A:  LDRB.W          R0, [R4,#0x50]
139E5E:  STRD.W          R4, R5, [R6,#0x54]
139E62:  CMP             R0, #1
139E64:  BEQ             loc_139E70
139E66:  LDR             R0, [R4]
139E68:  MOVS            R1, #1
139E6A:  LDR             R2, [R0,#0x24]
139E6C:  MOV             R0, R4
139E6E:  BLX             R2
139E70:  MOVS            R0, #1
139E72:  STRB.W          R0, [R4,#0x50]
139E76:  ADD             SP, SP, #0x10; jumptable 00139DC0 default case
139E78:  POP.W           {R8,R9,R11}
139E7C:  POP             {R4-R7,PC}
