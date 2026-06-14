; =========================================================
; Game Engine Function: _Z21RtAnimAnimationCreateiiif
; Address            : 0x1EAFAC - 0x1EB030
; =========================================================

1EAFAC:  PUSH            {R4-R7,LR}
1EAFAE:  ADD             R7, SP, #0xC
1EAFB0:  PUSH.W          {R11}
1EAFB4:  VPUSH           {D8}
1EAFB8:  MOV             R4, R1
1EAFBA:  LDR             R1, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EAFC2)
1EAFBC:  MOV             R5, R2
1EAFBE:  ADD             R1, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EAFC0:  LDR             R1, [R1]; RtAnimInterpolatorInfoBlockNumEntries
1EAFC2:  LDR             R1, [R1]
1EAFC4:  CMP             R1, #1
1EAFC6:  BLT             loc_1EB01E
1EAFC8:  LDR             R2, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EAFD2)
1EAFCA:  VMOV            S16, R3
1EAFCE:  ADD             R2, PC; RtAnimInterpolatorInfoBlock_ptr
1EAFD0:  LDR             R6, [R2]; RtAnimInterpolatorInfoBlock
1EAFD2:  MOVS            R2, #0
1EAFD4:  LDR             R3, [R6]
1EAFD6:  CMP             R3, R0
1EAFD8:  BEQ             loc_1EAFE4
1EAFDA:  ADDS            R2, #1
1EAFDC:  ADDS            R6, #0x30 ; '0'
1EAFDE:  CMP             R2, R1
1EAFE0:  BLT             loc_1EAFD4
1EAFE2:  B               loc_1EB01E
1EAFE4:  CBZ             R6, loc_1EB01E
1EAFE6:  LDR             R0, =(RwEngineInstance_ptr - 0x1EAFEE)
1EAFE8:  LDR             R1, [R6,#8]
1EAFEA:  ADD             R0, PC; RwEngineInstance_ptr
1EAFEC:  LDR             R2, [R6,#0x2C]
1EAFEE:  LDR             R0, [R0]; RwEngineInstance
1EAFF0:  MLA.W           R1, R1, R4, R2
1EAFF4:  LDR             R0, [R0]
1EAFF6:  LDR.W           R2, [R0,#0x12C]
1EAFFA:  ADD.W           R0, R1, #0x18
1EAFFE:  BLX             R2
1EB000:  VSTR            S16, [R0,#0xC]
1EB004:  ADD.W           R1, R0, #0x18
1EB008:  STRD.W          R6, R4, [R0]
1EB00C:  STR             R5, [R0,#8]
1EB00E:  STR             R1, [R0,#0x10]
1EB010:  LDR             R2, [R6,#0x2C]
1EB012:  CMP             R2, #1
1EB014:  BLT             loc_1EB02A
1EB016:  LDR             R2, [R6,#8]
1EB018:  MLA.W           R1, R2, R4, R1
1EB01C:  B               loc_1EB02C
1EB01E:  MOVS            R0, #0
1EB020:  VPOP            {D8}
1EB024:  POP.W           {R11}
1EB028:  POP             {R4-R7,PC}
1EB02A:  MOVS            R1, #0
1EB02C:  STR             R1, [R0,#0x14]
1EB02E:  B               loc_1EB020
