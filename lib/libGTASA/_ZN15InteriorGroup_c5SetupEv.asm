; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c5SetupEv
; Address            : 0x449FD8 - 0x44A060
; =========================================================

449FD8:  PUSH            {R4,R6,R7,LR}
449FDA:  ADD             R7, SP, #8
449FDC:  MOVS            R1, #2; int
449FDE:  MOV             R4, R0
449FE0:  BLX             j__ZN15InteriorGroup_c20ContainsInteriorTypeEi; InteriorGroup_c::ContainsInteriorType(int)
449FE4:  CBZ             R0, loc_449FEA
449FE6:  MOVS            R1, #0
449FE8:  B               loc_44A000
449FEA:  MOV             R0, R4; this
449FEC:  MOVS            R1, #0; int
449FEE:  BLX             j__ZN15InteriorGroup_c20ContainsInteriorTypeEi; InteriorGroup_c::ContainsInteriorType(int)
449FF2:  CBNZ            R0, loc_449FFE
449FF4:  MOV             R0, R4; this
449FF6:  MOVS            R1, #6; int
449FF8:  BLX             j__ZN15InteriorGroup_c20ContainsInteriorTypeEi; InteriorGroup_c::ContainsInteriorType(int)
449FFC:  CBZ             R0, loc_44A04C
449FFE:  MOVS            R1, #1
44A000:  STRB            R1, [R4,#0xE]
44A002:  LDRB.W          R0, [R4,#0xBA]
44A006:  CMP             R0, #0
44A008:  IT NE
44A00A:  POPNE           {R4,R6,R7,PC}
44A00C:  UXTB            R0, R1
44A00E:  CMP             R0, #2
44A010:  BHI             loc_44A020
44A012:  LDR             R0, =(off_667D9C - 0x44A01A); "int_house" ...
44A014:  SXTB            R1, R1; char *
44A016:  ADD             R0, PC; off_667D9C
44A018:  LDR.W           R0, [R0,R1,LSL#2]; this
44A01C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
44A020:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x44A026)
44A022:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
44A024:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
44A026:  ADD.W           R1, R1, R0,LSL#5
44A02A:  LDRB            R1, [R1,#0x10]; int
44A02C:  CMP             R1, #1
44A02E:  BNE             loc_44A03C
44A030:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
44A034:  MOVS            R0, #1
44A036:  STRB.W          R0, [R4,#0xBA]
44A03A:  POP             {R4,R6,R7,PC}
44A03C:  MOVW            R1, #0x63E7
44A040:  ADD             R0, R1; this
44A042:  MOVS            R1, #8; int
44A044:  POP.W           {R4,R6,R7,LR}
44A048:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
44A04C:  MOV             R0, R4; this
44A04E:  MOVS            R1, #1; int
44A050:  BLX             j__ZN15InteriorGroup_c20ContainsInteriorTypeEi; InteriorGroup_c::ContainsInteriorType(int)
44A054:  MOV.W           R1, #0xFFFFFFFF
44A058:  CMP             R0, #0
44A05A:  IT NE
44A05C:  MOVNE           R1, #2
44A05E:  B               loc_44A000
