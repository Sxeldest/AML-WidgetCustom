; =========================================================
; Game Engine Function: sub_111CA0
; Address            : 0x111CA0 - 0x111CDC
; =========================================================

111CA0:  PUSH            {R4-R7,LR}
111CA2:  ADD             R7, SP, #0xC
111CA4:  PUSH.W          {R11}
111CA8:  ADDS            R4, R0, #4
111CAA:  MOV             R6, R0
111CAC:  MOV             R5, R1
111CAE:  MOV             R0, R4; this
111CB0:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
111CB4:  ADD.W           R0, R6, #8
111CB8:  BL              sub_111E0C
111CBC:  LDRD.W          R1, R2, [R0]
111CC0:  LDR             R3, [R5]
111CC2:  SUBS            R1, R2, R1
111CC4:  ASRS            R1, R1, #3
111CC6:  STR             R1, [R3,#4]
111CC8:  MOV             R1, R5
111CCA:  BL              sub_111D6E
111CCE:  MOV             R0, R4
111CD0:  POP.W           {R11}
111CD4:  POP.W           {R4-R7,LR}
111CD8:  B.W             sub_224304
