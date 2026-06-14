; =========================================================
; Game Engine Function: _ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag
; Address            : 0x4085C8 - 0x40862C
; =========================================================

4085C8:  PUSH            {R4-R7,LR}
4085CA:  ADD             R7, SP, #0xC
4085CC:  PUSH.W          {R8}
4085D0:  VPUSH           {D8}
4085D4:  MOV             R5, R0
4085D6:  MOV             R4, R1
4085D8:  LDR             R6, [R5,#0xC]
4085DA:  MOV.W           R8, #0
4085DE:  STR.W           R8, [R4,#8]
4085E2:  MOV             R0, R6; x
4085E4:  BLX             sinf
4085E8:  VMOV            S0, R0
4085EC:  MOV.W           R1, #0x3F800000
4085F0:  STR.W           R8, [R4,#0x18]
4085F4:  STRD.W          R8, R8, [R4,#0x20]
4085F8:  VNEG.F32        S16, S0
4085FC:  STR             R1, [R4,#0x28]
4085FE:  STR             R0, [R4,#4]
408600:  MOV             R0, R6; x
408602:  BLX             cosf
408606:  STR             R0, [R4]
408608:  STR             R0, [R4,#0x14]
40860A:  VSTR            S16, [R4,#0x10]
40860E:  LDR             R0, [R5]
408610:  STR             R0, [R4,#0x30]
408612:  LDR             R0, [R5,#4]
408614:  STR             R0, [R4,#0x34]
408616:  LDR             R0, [R5,#8]
408618:  STR             R0, [R4,#0x38]
40861A:  MOV             R0, R4
40861C:  VPOP            {D8}
408620:  POP.W           {R8}
408624:  POP.W           {R4-R7,LR}
408628:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
