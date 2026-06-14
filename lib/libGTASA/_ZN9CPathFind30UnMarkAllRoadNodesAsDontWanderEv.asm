; =========================================================
; Game Engine Function: _ZN9CPathFind30UnMarkAllRoadNodesAsDontWanderEv
; Address            : 0x318966 - 0x3189D4
; =========================================================

318966:  PUSH            {R4-R7,LR}
318968:  ADD             R7, SP, #0xC
31896A:  PUSH.W          {R8,R9,R11}
31896E:  MOV.W           LR, #0
318972:  MOVW            R12, #0x1104
318976:  ADD.W           R1, R0, LR,LSL#2
31897A:  LDR.W           R2, [R1,#0x804]
31897E:  CBZ             R2, loc_3189C4
318980:  LDR.W           R3, [R1,R12]
318984:  CMP             R3, #1
318986:  BLT             loc_3189C4
318988:  LDRH.W          R4, [R2,#0x18]!
31898C:  ADD.W           R8, R1, R12
318990:  BIC.W           R4, R4, #0x400
318994:  STRH            R4, [R2]
318996:  LDR.W           R2, [R8]
31899A:  CMP             R2, #2
31899C:  BLT             loc_3189C4
31899E:  ADDW            R9, R1, #0x804
3189A2:  MOVS            R1, #1
3189A4:  MOVS            R4, #0x34 ; '4'
3189A6:  LDR.W           R5, [R9]
3189AA:  ADDS            R1, #1
3189AC:  ADDS            R3, R5, R4
3189AE:  LDRH            R6, [R5,R4]
3189B0:  LDRB            R2, [R3,#2]
3189B2:  BIC.W           R6, R6, #0x400
3189B6:  STRH            R6, [R5,R4]
3189B8:  ADDS            R4, #0x1C
3189BA:  STRB            R2, [R3,#2]
3189BC:  LDR.W           R2, [R8]
3189C0:  CMP             R1, R2
3189C2:  BLT             loc_3189A6
3189C4:  ADD.W           LR, LR, #1
3189C8:  CMP.W           LR, #0x40 ; '@'
3189CC:  BNE             loc_318976
3189CE:  POP.W           {R8,R9,R11}
3189D2:  POP             {R4-R7,PC}
