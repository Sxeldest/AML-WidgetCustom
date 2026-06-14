; =========================================================
; Game Engine Function: _ZNK22CTaskInteriorSitAtDesk5CloneEv
; Address            : 0x52A8AC - 0x52A8F8
; =========================================================

52A8AC:  PUSH            {R4-R7,LR}
52A8AE:  ADD             R7, SP, #0xC
52A8B0:  PUSH.W          {R11}
52A8B4:  MOV             R4, R0
52A8B6:  MOVS            R0, #dword_38; this
52A8B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52A8BC:  LDRD.W          R5, R6, [R4,#8]
52A8C0:  LDRB            R4, [R4,#0x10]
52A8C2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52A8C6:  LDR             R1, =(_ZTV22CTaskInteriorSitAtDesk_ptr - 0x52A8D4)
52A8C8:  MOVS            R2, #0
52A8CA:  MOV.W           R3, #0xFFFFFFFF
52A8CE:  STRH            R2, [R0,#0x24]
52A8D0:  ADD             R1, PC; _ZTV22CTaskInteriorSitAtDesk_ptr
52A8D2:  STRH            R2, [R0,#0x30]
52A8D4:  STRD.W          R2, R2, [R0,#0x28]
52A8D8:  LDR             R1, [R1]; `vtable for'CTaskInteriorSitAtDesk ...
52A8DA:  STRD.W          R5, R6, [R0,#8]
52A8DE:  STRB            R4, [R0,#0x10]
52A8E0:  ADDS            R1, #8
52A8E2:  STRD.W          R2, R3, [R0,#0x14]
52A8E6:  STRD.W          R2, R2, [R0,#0x1C]
52A8EA:  STRH            R2, [R0,#0x34]
52A8EC:  STRB.W          R2, [R0,#0x36]
52A8F0:  STR             R1, [R0]
52A8F2:  POP.W           {R11}
52A8F6:  POP             {R4-R7,PC}
