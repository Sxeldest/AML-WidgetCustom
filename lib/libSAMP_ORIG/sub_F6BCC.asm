; =========================================================
; Game Engine Function: sub_F6BCC
; Address            : 0xF6BCC - 0xF6C82
; =========================================================

F6BCC:  PUSH            {R4-R7,LR}
F6BCE:  ADD             R7, SP, #0xC
F6BD0:  PUSH.W          {R6-R10}
F6BD4:  MOV             R6, R0
F6BD6:  LDR             R0, =(__stack_chk_guard_ptr - 0xF6BE0)
F6BD8:  MOV             R8, R2
F6BDA:  CMP             R6, R1
F6BDC:  ADD             R0, PC; __stack_chk_guard_ptr
F6BDE:  LDR             R0, [R0]; __stack_chk_guard
F6BE0:  LDR             R0, [R0]
F6BE2:  STR             R0, [SP,#0x20+var_1C]
F6BE4:  BEQ             loc_F6C32
F6BE6:  MOV             R9, R3
F6BE8:  MOV             R5, R1
F6BEA:  BLX             __errno
F6BEE:  MOV             R4, R0
F6BF0:  LDR.W           R10, [R0]
F6BF4:  MOVS            R0, #0; this
F6BF6:  STR             R0, [R4]
F6BF8:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
F6BFC:  MOV             R3, R0; locale_t
F6BFE:  MOV             R1, SP; char **
F6C00:  MOV             R0, R6; char *
F6C02:  MOV             R2, R9; int
F6C04:  BLX             strtoll_l
F6C08:  LDR             R2, [R4]
F6C0A:  CBZ             R2, loc_F6C28
F6C0C:  LDR             R3, [SP,#0x20+var_20]
F6C0E:  CMP             R3, R5
F6C10:  BNE             loc_F6C32
F6C12:  CMP             R2, #0x22 ; '"'
F6C14:  BNE             loc_F6C52
F6C16:  MOVS            R2, #4
F6C18:  STR.W           R2, [R8]
F6C1C:  MOVS            R2, #0
F6C1E:  NEGS            R0, R0
F6C20:  SBCS.W          R0, R2, R1
F6C24:  BLT             loc_F6C7C
F6C26:  B               loc_F6C66
F6C28:  LDR             R2, [SP,#0x20+var_20]
F6C2A:  STR.W           R10, [R4]
F6C2E:  CMP             R2, R5
F6C30:  BEQ             loc_F6C52
F6C32:  MOVS            R0, #4
F6C34:  STR.W           R0, [R8]
F6C38:  MOVS            R0, #0
F6C3A:  LDR             R1, [SP,#0x20+var_1C]
F6C3C:  LDR             R2, =(__stack_chk_guard_ptr - 0xF6C42)
F6C3E:  ADD             R2, PC; __stack_chk_guard_ptr
F6C40:  LDR             R2, [R2]; __stack_chk_guard
F6C42:  LDR             R2, [R2]
F6C44:  CMP             R2, R1
F6C46:  ITT EQ
F6C48:  POPEQ.W         {R2,R3,R8-R10}
F6C4C:  POPEQ           {R4-R7,PC}
F6C4E:  BLX             __stack_chk_fail
F6C52:  MOV             R3, #0x7FFFFFFF
F6C56:  MOV.W           R2, #0xFFFFFFFF
F6C5A:  SUBS            R3, R3, R0
F6C5C:  SBCS            R2, R1
F6C5E:  BLT             loc_F6C6C
F6C60:  MOVS            R0, #4
F6C62:  STR.W           R0, [R8]
F6C66:  MOV.W           R0, #0x80000000
F6C6A:  B               loc_F6C3A
F6C6C:  SUBS.W          R2, R0, #0x80000000
F6C70:  SBCS.W          R1, R1, #0
F6C74:  BLT             loc_F6C3A
F6C76:  MOVS            R0, #4
F6C78:  STR.W           R0, [R8]
F6C7C:  MOV             R0, #0x7FFFFFFF
F6C80:  B               loc_F6C3A
