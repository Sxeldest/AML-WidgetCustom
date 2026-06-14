; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation26AllocateAnimBlendNodeArrayEi
; Address            : 0x389F14 - 0x389F5A
; =========================================================

389F14:  PUSH            {R4-R7,LR}
389F16:  ADD             R7, SP, #0xC
389F18:  PUSH.W          {R11}
389F1C:  MOV             R5, R1
389F1E:  MOV             R4, R0
389F20:  ADD.W           R0, R5, R5,LSL#1
389F24:  MOVS            R1, #0x3F ; '?'
389F26:  ADD.W           R0, R1, R0,LSL#3
389F2A:  MOVS            R1, #0x40 ; '@'; unsigned int
389F2C:  BIC.W           R0, R0, #0x3F ; '?'; this
389F30:  BLX             j__ZN10CMemoryMgr11MallocAlignEjj; CMemoryMgr::MallocAlign(uint,uint)
389F34:  CMP             R5, #1
389F36:  STR             R0, [R4,#0x10]
389F38:  BLT             loc_389F54
389F3A:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389F3E:  CMP             R5, #1
389F40:  BEQ             loc_389F54
389F42:  SUBS            R5, #1
389F44:  MOVS            R6, #0x18
389F46:  LDR             R0, [R4,#0x10]
389F48:  ADD             R0, R6; this
389F4A:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389F4E:  ADDS            R6, #0x18
389F50:  SUBS            R5, #1
389F52:  BNE             loc_389F46
389F54:  POP.W           {R11}
389F58:  POP             {R4-R7,PC}
