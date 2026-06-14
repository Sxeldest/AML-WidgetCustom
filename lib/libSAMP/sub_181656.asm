; =========================================================
; Game Engine Function: sub_181656
; Address            : 0x181656 - 0x1816B2
; =========================================================

181656:  PUSH            {R4-R7,LR}
181658:  ADD             R7, SP, #0xC
18165A:  PUSH.W          {R8}
18165E:  ADD.W           R8, R0, #0x370
181662:  MOV             R5, R0
181664:  MOV             R0, R8
181666:  BL              sub_18CB76
18166A:  LDR.W           R0, [R5,#0x378]
18166E:  ADD.W           R6, R5, #0x374
181672:  CBZ             R0, loc_18169C
181674:  MOVS            R4, #0
181676:  LDR             R0, [R6]
181678:  LDR.W           R0, [R0,R4,LSL#2]
18167C:  LDR             R1, [R0]
18167E:  CBZ             R1, loc_18168E
181680:  MOV             R0, R1; void *
181682:  BLX             j__ZdaPv; operator delete[](void *)
181686:  LDR             R0, [R6]
181688:  LDR.W           R0, [R0,R4,LSL#2]; void *
18168C:  CBZ             R0, loc_181692
18168E:  BLX             j__ZdaPv; operator delete[](void *)
181692:  LDR.W           R0, [R5,#0x378]
181696:  ADDS            R4, #1
181698:  CMP             R4, R0
18169A:  BCC             loc_181676
18169C:  MOV             R0, R6
18169E:  MOVS            R1, #0
1816A0:  BL              sub_1816B2
1816A4:  MOV             R0, R8
1816A6:  POP.W           {R8}
1816AA:  POP.W           {R4-R7,LR}
1816AE:  B.W             sub_18CB7A
