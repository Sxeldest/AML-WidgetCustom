; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDieC2EPKcS1_iff
; Address            : 0x4EAC94 - 0x4EACF4
; =========================================================

4EAC94:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleDie::CTaskSimpleDie(char const*, char const*, int, float, float)'
4EAC96:  ADD             R7, SP, #0xC
4EAC98:  PUSH.W          {R8}
4EAC9C:  MOV             R5, R3
4EAC9E:  MOV             R6, R2
4EACA0:  MOV             R8, R1
4EACA2:  MOV             R4, R0
4EACA4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EACA8:  LDR             R0, =(_ZTV14CTaskSimpleDie_ptr - 0x4EACB6)
4EACAA:  MOVS            R1, #0
4EACAC:  VLDR            S0, [R7,#arg_4]
4EACB0:  MOVS            R2, #0xF
4EACB2:  ADD             R0, PC; _ZTV14CTaskSimpleDie_ptr
4EACB4:  LDRB.W          R3, [R4,#0x20]
4EACB8:  VLDR            S2, [R7,#arg_0]
4EACBC:  LDR             R0, [R0]; `vtable for'CTaskSimpleDie ...
4EACBE:  STRD.W          R1, R2, [R4,#8]
4EACC2:  ADDS            R0, #8
4EACC4:  STRD.W          R1, R5, [R4,#0x10]
4EACC8:  VSTR            S2, [R4,#0x18]
4EACCC:  VSTR            S0, [R4,#0x1C]
4EACD0:  STR             R1, [R4,#0x24]
4EACD2:  AND.W           R1, R3, #0xFC; char *
4EACD6:  STRB.W          R1, [R4,#0x20]
4EACDA:  STR             R0, [R4]
4EACDC:  MOV             R0, R6; this
4EACDE:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
4EACE2:  MOV             R1, R0
4EACE4:  MOV             R0, R8
4EACE6:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
4EACEA:  STR             R0, [R4,#0x10]
4EACEC:  MOV             R0, R4
4EACEE:  POP.W           {R8}
4EACF2:  POP             {R4-R7,PC}
