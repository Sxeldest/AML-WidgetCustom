; =========================================================
; Game Engine Function: _Z7NvFSizePv
; Address            : 0x2675E8 - 0x267632
; =========================================================

2675E8:  PUSH            {R4-R7,LR}
2675EA:  ADD             R7, SP, #0xC
2675EC:  PUSH.W          {R11}
2675F0:  MOV             R4, R0
2675F2:  LDR             R0, [R4]
2675F4:  CMP             R0, #1
2675F6:  BNE             loc_267624
2675F8:  LDR             R0, [R4,#4]; stream
2675FA:  BLX             ftell
2675FE:  MOV             R5, R0
267600:  LDR             R0, [R4,#4]; stream
267602:  MOVS            R1, #0; off
267604:  MOVS            R2, #2; whence
267606:  BLX             fseek
26760A:  LDR             R0, [R4,#4]; stream
26760C:  BLX             ftell
267610:  MOV             R6, R0
267612:  LDR             R0, [R4,#4]; stream
267614:  MOV             R1, R5; off
267616:  MOVS            R2, #0; whence
267618:  BLX             fseek
26761C:  MOV             R0, R6
26761E:  POP.W           {R11}
267622:  POP             {R4-R7,PC}
267624:  LDR             R0, [R4,#4]; asset
267626:  POP.W           {R11}
26762A:  POP.W           {R4-R7,LR}
26762E:  B.W             j_AAsset_getLength
