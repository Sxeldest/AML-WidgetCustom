; =========================================================
; Game Engine Function: sub_FC69C
; Address            : 0xFC69C - 0xFC6E8
; =========================================================

FC69C:  PUSH            {R4-R7,LR}
FC69E:  ADD             R7, SP, #0xC
FC6A0:  PUSH.W          {R8}
FC6A4:  MOV             R5, R0
FC6A6:  MOVW            R0, #0x270F
FC6AA:  MOV             R4, R1
FC6AC:  CMP             R1, R0
FC6AE:  BHI             loc_FC6C0
FC6B0:  MOV             R0, R5
FC6B2:  MOV             R1, R4
FC6B4:  POP.W           {R8}
FC6B8:  POP.W           {R4-R7,LR}
FC6BC:  B.W             sub_FC834
FC6C0:  MOV             R0, R4
FC6C2:  MOVW            R1, #0x2710
FC6C6:  MOVW            R8, #0x2710
FC6CA:  BLX             sub_108874
FC6CE:  MOV             R6, R0
FC6D0:  MOV             R0, R5
FC6D2:  MOV             R1, R6
FC6D4:  BL              sub_FC834
FC6D8:  MLS.W           R1, R6, R8, R4
FC6DC:  POP.W           {R8}
FC6E0:  POP.W           {R4-R7,LR}
FC6E4:  B.W             sub_FC6F8
