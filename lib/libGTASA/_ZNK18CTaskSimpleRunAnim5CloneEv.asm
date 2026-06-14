; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleRunAnim5CloneEv
; Address            : 0x4D806C - 0x4D80B8
; =========================================================

4D806C:  PUSH            {R4-R7,LR}
4D806E:  ADD             R7, SP, #0xC
4D8070:  PUSH.W          {R8}
4D8074:  MOV             R4, R0
4D8076:  MOVS            R0, #dword_20; this
4D8078:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D807C:  LDRB.W          R8, [R4,#0xC]
4D8080:  LDRD.W          R6, R5, [R4,#0x10]
4D8084:  LDR             R4, [R4,#0x18]
4D8086:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4D808A:  LDR             R1, =(_ZTV18CTaskSimpleRunAnim_ptr - 0x4D8098)
4D808C:  MOVS            R2, #0
4D808E:  STR             R2, [R0,#8]
4D8090:  MOV.W           R2, #0x190
4D8094:  ADD             R1, PC; _ZTV18CTaskSimpleRunAnim_ptr
4D8096:  STRD.W          R6, R5, [R0,#0x10]
4D809A:  STR             R4, [R0,#0x18]
4D809C:  LDR             R1, [R1]; `vtable for'CTaskSimpleRunAnim ...
4D809E:  STRH            R2, [R0,#0x1C]
4D80A0:  LDRB            R2, [R0,#0xC]
4D80A2:  ADDS            R1, #8
4D80A4:  STR             R1, [R0]
4D80A6:  AND.W           R1, R8, #4
4D80AA:  AND.W           R2, R2, #0xF8
4D80AE:  ORRS            R1, R2
4D80B0:  STRB            R1, [R0,#0xC]
4D80B2:  POP.W           {R8}
4D80B6:  POP             {R4-R7,PC}
