; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociation4InitERS_
; Address            : 0x389CA4 - 0x389D42
; =========================================================

389CA4:  PUSH            {R4-R7,LR}
389CA6:  ADD             R7, SP, #0xC
389CA8:  PUSH.W          {R8}
389CAC:  MOV             R8, R1
389CAE:  MOV             R5, R0
389CB0:  LDR.W           R0, [R8,#0x14]
389CB4:  MOVS            R1, #0x3F ; '?'
389CB6:  STR             R0, [R5,#0x14]
389CB8:  LDRSH.W         R6, [R8,#0xC]
389CBC:  STRH            R6, [R5,#0xC]
389CBE:  LDRH.W          R0, [R8,#0x2E]
389CC2:  STRH            R0, [R5,#0x2E]
389CC4:  LDRH.W          R0, [R8,#0x2C]
389CC8:  STRH            R0, [R5,#0x2C]
389CCA:  LDRH.W          R0, [R8,#0xE]
389CCE:  STRH            R0, [R5,#0xE]
389CD0:  ADD.W           R0, R6, R6,LSL#1
389CD4:  ADD.W           R0, R1, R0,LSL#3
389CD8:  MOVS            R1, #0x40 ; '@'; unsigned int
389CDA:  BIC.W           R0, R0, #0x3F ; '?'; this
389CDE:  BLX             j__ZN10CMemoryMgr11MallocAlignEjj; CMemoryMgr::MallocAlign(uint,uint)
389CE2:  CMP             R6, #1
389CE4:  STR             R0, [R5,#0x10]
389CE6:  BLT             loc_389D04
389CE8:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389CEC:  CMP             R6, #1
389CEE:  BEQ             loc_389D04
389CF0:  SUBS            R6, #1
389CF2:  MOVS            R4, #0x18
389CF4:  LDR             R0, [R5,#0x10]
389CF6:  ADD             R0, R4; this
389CF8:  BLX             j__ZN14CAnimBlendNode4InitEv; CAnimBlendNode::Init(void)
389CFC:  SUBS            R6, #1
389CFE:  ADD.W           R4, R4, #0x18
389D02:  BNE             loc_389CF4
389D04:  LDRSH.W         R0, [R5,#0xC]
389D08:  CMP             R0, #1
389D0A:  BLT             loc_389D3C
389D0C:  MOVS            R0, #0
389D0E:  MOVS            R1, #0
389D10:  LDR.W           R2, [R8,#0x10]
389D14:  ADDS            R1, #1
389D16:  LDR             R3, [R5,#0x10]
389D18:  ADD             R2, R0
389D1A:  VLD1.32         {D16-D17}, [R2]!
389D1E:  VLDR            D18, [R2]
389D22:  ADDS            R2, R3, R0
389D24:  VST1.32         {D16-D17}, [R2]!
389D28:  VSTR            D18, [R2]
389D2C:  LDR             R2, [R5,#0x10]
389D2E:  ADD             R2, R0
389D30:  ADDS            R0, #0x18
389D32:  STR             R5, [R2,#0x14]
389D34:  LDRSH.W         R2, [R5,#0xC]
389D38:  CMP             R1, R2
389D3A:  BLT             loc_389D10
389D3C:  POP.W           {R8}
389D40:  POP             {R4-R7,PC}
