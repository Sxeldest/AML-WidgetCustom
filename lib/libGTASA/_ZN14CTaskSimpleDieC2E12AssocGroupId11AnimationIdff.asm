; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDieC2E12AssocGroupId11AnimationIdff
; Address            : 0x4EAC4C - 0x4EAC90
; =========================================================

4EAC4C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleDie::CTaskSimpleDie(AssocGroupId, AnimationId, float, float)'
4EAC4E:  ADD             R7, SP, #0xC
4EAC50:  PUSH.W          {R11}
4EAC54:  MOV             R4, R3
4EAC56:  MOV             R5, R2
4EAC58:  MOV             R6, R1
4EAC5A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EAC5E:  LDR             R1, =(_ZTV14CTaskSimpleDie_ptr - 0x4EAC6A)
4EAC60:  MOVS            R2, #0
4EAC62:  LDRB.W          R3, [R0,#0x20]
4EAC66:  ADD             R1, PC; _ZTV14CTaskSimpleDie_ptr
4EAC68:  VLDR            S0, [R7,#arg_0]
4EAC6C:  STRD.W          R6, R5, [R0,#8]
4EAC70:  LDR             R1, [R1]; `vtable for'CTaskSimpleDie ...
4EAC72:  STRD.W          R2, R2, [R0,#0x10]
4EAC76:  STR             R4, [R0,#0x18]
4EAC78:  ADDS            R1, #8
4EAC7A:  VSTR            S0, [R0,#0x1C]
4EAC7E:  STR             R2, [R0,#0x24]
4EAC80:  AND.W           R2, R3, #0xFC
4EAC84:  STRB.W          R2, [R0,#0x20]
4EAC88:  STR             R1, [R0]
4EAC8A:  POP.W           {R11}
4EAC8E:  POP             {R4-R7,PC}
