; =========================================================
; Game Engine Function: sub_1547C8
; Address            : 0x1547C8 - 0x154818
; =========================================================

1547C8:  PUSH            {R4,R5,R7,LR}
1547CA:  ADD             R7, SP, #8
1547CC:  MOV             R4, R0
1547CE:  BL              sub_154850
1547D2:  LDR.W           R1, [R4,#0x8C]
1547D6:  ADD.W           R0, R4, #0x88
1547DA:  BL              sub_156178
1547DE:  ADD.W           R0, R4, #0x60 ; '`'
1547E2:  BL              sub_E3F7A
1547E6:  MOV             R0, R4
1547E8:  MOVS            R5, #0
1547EA:  LDR.W           R1, [R0,#0x5C]!; void *
1547EE:  STR             R5, [R0]
1547F0:  CBZ             R1, loc_1547F6
1547F2:  BL              sub_15611C
1547F6:  MOV             R0, R4
1547F8:  LDR.W           R1, [R0,#0x58]!
1547FC:  STR             R5, [R0]
1547FE:  CBZ             R1, loc_154804
154800:  BL              sub_1561D2
154804:  ADD.W           R0, R4, #0x14
154808:  BL              sub_15BE48
15480C:  LDR             R0, [R4,#8]; this
15480E:  CBZ             R0, loc_154814
154810:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
154814:  MOV             R0, R4
154816:  POP             {R4,R5,R7,PC}
