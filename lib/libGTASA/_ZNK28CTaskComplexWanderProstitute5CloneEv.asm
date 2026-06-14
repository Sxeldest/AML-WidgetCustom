; =========================================================
; Game Engine Function: _ZNK28CTaskComplexWanderProstitute5CloneEv
; Address            : 0x526F70 - 0x526FCE
; =========================================================

526F70:  PUSH            {R4-R7,LR}
526F72:  ADD             R7, SP, #0xC
526F74:  PUSH.W          {R11}
526F78:  MOV             R4, R0
526F7A:  MOVS            R0, #off_3C; this
526F7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
526F80:  LDRB.W          R5, [R4,#0x24]
526F84:  LDR             R6, [R4,#0xC]
526F86:  LDRB            R4, [R4,#0x10]
526F88:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
526F8C:  LDR             R1, =(_ZTV28CTaskComplexWanderProstitute_ptr - 0x526F98)
526F8E:  MOV.W           R2, #0x3F000000
526F92:  STRB            R4, [R0,#0x10]
526F94:  ADD             R1, PC; _ZTV28CTaskComplexWanderProstitute_ptr
526F96:  STR             R6, [R0,#0xC]
526F98:  STR             R2, [R0,#0x14]
526F9A:  MOVW            R2, #0xFFFF
526F9E:  STRH            R2, [R0,#0x18]
526FA0:  STRH            R2, [R0,#0x1C]
526FA2:  MOVS            R2, #0
526FA4:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderProstitute ...
526FA6:  STR             R2, [R0,#0x20]
526FA8:  STRH            R2, [R0,#0x30]
526FAA:  ADDS            R1, #8
526FAC:  STRD.W          R2, R2, [R0,#0x34]
526FB0:  STRD.W          R2, R2, [R0,#0x28]
526FB4:  LDRB.W          R2, [R0,#0x24]
526FB8:  STR             R1, [R0]
526FBA:  AND.W           R1, R5, #1
526FBE:  AND.W           R2, R2, #0xF0
526FC2:  ORRS            R1, R2
526FC4:  STRB.W          R1, [R0,#0x24]
526FC8:  POP.W           {R11}
526FCC:  POP             {R4-R7,PC}
