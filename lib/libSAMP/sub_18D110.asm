; =========================================================
; Game Engine Function: sub_18D110
; Address            : 0x18D110 - 0x18D136
; =========================================================

18D110:  PUSH            {R4,R6,R7,LR}
18D112:  ADD             R7, SP, #8
18D114:  MOV             R4, R0
18D116:  LDR             R0, [R0,#8]
18D118:  CBZ             R0, locret_18D134
18D11A:  CMP.W           R0, #0x200
18D11E:  BLS             loc_18D130
18D120:  CBNZ            R1, loc_18D130
18D122:  LDR             R0, [R4]; void *
18D124:  CBZ             R0, loc_18D12A
18D126:  BLX             j__ZdaPv; operator delete[](void *)
18D12A:  MOVS            R0, #0
18D12C:  STR             R0, [R4]
18D12E:  STR             R0, [R4,#8]
18D130:  MOVS            R0, #0
18D132:  STR             R0, [R4,#4]
18D134:  POP             {R4,R6,R7,PC}
