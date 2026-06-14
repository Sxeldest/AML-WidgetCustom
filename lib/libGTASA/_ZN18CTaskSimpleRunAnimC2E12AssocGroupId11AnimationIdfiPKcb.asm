; =========================================================
; Game Engine Function: _ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb
; Address            : 0x4D6C7C - 0x4D6CBC
; =========================================================

4D6C7C:  PUSH            {R4-R7,LR}
4D6C7E:  ADD             R7, SP, #0xC
4D6C80:  PUSH.W          {R11}
4D6C84:  MOV             R4, R3
4D6C86:  MOV             R5, R2
4D6C88:  MOV             R6, R1
4D6C8A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D6C8E:  LDR             R1, =(_ZTV18CTaskSimpleRunAnim_ptr - 0x4D6C98)
4D6C90:  MOVS            R2, #0
4D6C92:  STR             R2, [R0,#8]
4D6C94:  ADD             R1, PC; _ZTV18CTaskSimpleRunAnim_ptr
4D6C96:  LDRB            R2, [R0,#0xC]
4D6C98:  LDR.W           R12, [R7,#arg_8]
4D6C9C:  LDR             R1, [R1]; `vtable for'CTaskSimpleRunAnim ...
4D6C9E:  AND.W           R2, R2, #0xF8
4D6CA2:  LDR             R3, [R7,#arg_0]
4D6CA4:  STRD.W          R6, R5, [R0,#0x10]
4D6CA8:  ORR.W           R2, R2, R12,LSL#2
4D6CAC:  STR             R4, [R0,#0x18]
4D6CAE:  ADDS            R1, #8
4D6CB0:  STRH            R3, [R0,#0x1C]
4D6CB2:  STRB            R2, [R0,#0xC]
4D6CB4:  STR             R1, [R0]
4D6CB6:  POP.W           {R11}
4D6CBA:  POP             {R4-R7,PC}
