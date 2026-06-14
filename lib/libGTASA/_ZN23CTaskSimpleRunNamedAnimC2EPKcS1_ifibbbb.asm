; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb
; Address            : 0x4D6D34 - 0x4D6DC6
; =========================================================

4D6D34:  PUSH            {R4-R7,LR}
4D6D36:  ADD             R7, SP, #0xC
4D6D38:  PUSH.W          {R8-R10}
4D6D3C:  MOV             R6, R3
4D6D3E:  MOV             R8, R2
4D6D40:  MOV             R9, R1
4D6D42:  MOV             R4, R0
4D6D44:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D6D48:  LDR             R0, =(_ZTV23CTaskSimpleRunNamedAnim_ptr - 0x4D6D56)
4D6D4A:  MOVS            R5, #0
4D6D4C:  LDR             R1, [R7,#arg_4]
4D6D4E:  ADD.W           R10, R4, #0xD
4D6D52:  ADD             R0, PC; _ZTV23CTaskSimpleRunNamedAnim_ptr
4D6D54:  LDRD.W          R3, R2, [R7,#arg_8]
4D6D58:  LDRD.W          R12, LR, [R7,#arg_10]
4D6D5C:  LDR             R0, [R0]; `vtable for'CTaskSimpleRunNamedAnim ...
4D6D5E:  STR             R1, [R4,#0x40]
4D6D60:  VLDR            S0, [R7,#arg_0]
4D6D64:  ADDS            R0, #8
4D6D66:  LDRB            R1, [R4,#0xC]
4D6D68:  STR             R5, [R4,#8]
4D6D6A:  VSTR            S0, [R4,#0x38]
4D6D6E:  AND.W           R1, R1, #0x88
4D6D72:  STRH.W          R5, [R4,#0x4C]
4D6D76:  ORR.W           R1, R1, LR,LSL#2
4D6D7A:  STRD.W          R5, R5, [R4,#0x50]
4D6D7E:  STRD.W          R5, R6, [R4,#0x58]
4D6D82:  STRD.W          R5, R5, [R4,#0x44]
4D6D86:  STR             R0, [R4]
4D6D88:  LSLS            R0, R2, #4
4D6D8A:  ORR.W           R0, R0, R3,LSL#1
4D6D8E:  ORR.W           R0, R0, R12,LSL#5
4D6D92:  ORRS            R0, R1
4D6D94:  STRB            R0, [R4,#0xC]
4D6D96:  MOV             R0, R10; char *
4D6D98:  MOV             R1, R9; char *
4D6D9A:  BLX             strcpy
4D6D9E:  ADD.W           R6, R4, #0x25 ; '%'
4D6DA2:  MOV             R1, R8; char *
4D6DA4:  MOV             R0, R6; char *
4D6DA6:  BLX             strcpy
4D6DAA:  MOV             R0, R6; this
4D6DAC:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4D6DB0:  MOV             R1, R0
4D6DB2:  CBZ             R1, loc_4D6DBC
4D6DB4:  MOV             R0, R10
4D6DB6:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
4D6DBA:  MOV             R5, R0
4D6DBC:  STR             R5, [R4,#0x3C]
4D6DBE:  MOV             R0, R4
4D6DC0:  POP.W           {R8-R10}
4D6DC4:  POP             {R4-R7,PC}
