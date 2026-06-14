; =========================================================
; Game Engine Function: sub_107FA0
; Address            : 0x107FA0 - 0x108040
; =========================================================

107FA0:  PUSH            {R4-R7,LR}
107FA2:  ADD             R7, SP, #0xC
107FA4:  PUSH.W          {R11}
107FA8:  MOV             R4, R0
107FAA:  LDR             R0, =(_ZTSDn_ptr - 0x107FB4)
107FAC:  MOV             R6, R1
107FAE:  LDR             R1, [R1,#4]
107FB0:  ADD             R0, PC; _ZTSDn_ptr
107FB2:  LDR             R0, [R0]; "Dn" ...
107FB4:  CMP             R1, R0
107FB6:  BEQ             loc_107FF2
107FB8:  MOV             R0, R4; int
107FBA:  MOV             R1, R6; lpsrc
107FBC:  BL              sub_107C5C
107FC0:  CBNZ            R0, loc_108018
107FC2:  LDR             R0, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x107FCC)
107FC4:  MOVS            R3, #0; s2d
107FC6:  MOVS            R5, #0
107FC8:  ADD             R0, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
107FCA:  LDR             R1, [R0]; lpstype
107FCC:  LDR             R0, =(_ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr - 0x107FD2)
107FCE:  ADD             R0, PC; _ZTIN10__cxxabiv129__pointer_to_member_type_infoE_ptr
107FD0:  LDR             R2, [R0]; lpdtype
107FD2:  MOV             R0, R6; lpsrc
107FD4:  BLX             j___dynamic_cast
107FD8:  CBZ             R0, loc_10801A
107FDA:  LDR             R1, [R4,#8]
107FDC:  LDR             R2, [R0,#8]
107FDE:  BIC.W           R3, R2, R1
107FE2:  LSLS            R3, R3, #0x1D
107FE4:  ITT EQ
107FE6:  BICEQ           R1, R2
107FE8:  TSTEQ.W         R1, #0x60
107FEC:  BEQ             loc_108022
107FEE:  MOVS            R5, #0
107FF0:  B               loc_10801A
107FF2:  LDR             R0, [R4,#0xC]; lpsrc
107FF4:  MOV             R5, R2
107FF6:  CBZ             R0, loc_108012
107FF8:  LDR             R1, =(_ZTIN10__cxxabiv116__shim_type_infoE_ptr - 0x108002)
107FFA:  MOVS            R3, #0; s2d
107FFC:  LDR             R2, =(_ZTIN10__cxxabiv120__function_type_infoE_ptr - 0x108004)
107FFE:  ADD             R1, PC; _ZTIN10__cxxabiv116__shim_type_infoE_ptr
108000:  ADD             R2, PC; _ZTIN10__cxxabiv120__function_type_infoE_ptr
108002:  LDR             R1, [R1]; lpstype
108004:  LDR             R2, [R2]; lpdtype
108006:  BLX             j___dynamic_cast
10800A:  CBZ             R0, loc_108012
10800C:  LDR             R0, =(unk_5F454 - 0x108012)
10800E:  ADD             R0, PC; unk_5F454
108010:  B               loc_108016
108012:  LDR             R0, =(unk_5F45C - 0x108018)
108014:  ADD             R0, PC; unk_5F45C
108016:  STR             R0, [R5]
108018:  MOVS            R5, #1
10801A:  MOV             R0, R5
10801C:  POP.W           {R11}
108020:  POP             {R4-R7,PC}
108022:  LDR             R1, [R0,#0xC]
108024:  LDR             R2, [R4,#0xC]
108026:  LDR             R1, [R1,#4]
108028:  LDR             R2, [R2,#4]
10802A:  CMP             R2, R1
10802C:  BNE             loc_107FEE
10802E:  LDR             R0, [R0,#0x10]
108030:  LDR             R1, [R4,#0x10]
108032:  LDR             R0, [R0,#4]
108034:  LDR             R1, [R1,#4]
108036:  SUBS            R0, R1, R0
108038:  CLZ.W           R0, R0
10803C:  LSRS            R5, R0, #5
10803E:  B               loc_10801A
