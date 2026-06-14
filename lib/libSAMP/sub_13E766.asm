; =========================================================
; Game Engine Function: sub_13E766
; Address            : 0x13E766 - 0x13E7D0
; =========================================================

13E766:  PUSH            {R4-R7,LR}
13E768:  ADD             R7, SP, #0xC
13E76A:  PUSH.W          {R8}
13E76E:  MOV             R5, R0
13E770:  LDR.W           R0, [R0,R1,LSL#2]; void *
13E774:  MOV             R8, R3
13E776:  MOV             R6, R2
13E778:  MOV             R4, R1
13E77A:  CBZ             R0, loc_13E78E
13E77C:  BLX             j__ZdlPv; operator delete(void *)
13E780:  ADDS            R1, R5, R4
13E782:  MOVS            R0, #0
13E784:  MOV.W           R2, #0x1000
13E788:  STR.W           R0, [R5,R4,LSL#2]
13E78C:  STRB            R0, [R1,R2]
13E78E:  MOVS            R0, #0x18; size
13E790:  BLX             malloc
13E794:  CBZ             R0, loc_13E7CA
13E796:  LDR             R1, [R7,#arg_8]
13E798:  VMOV            S6, R6
13E79C:  VLDR            S0, [R7,#arg_4]
13E7A0:  VMOV            S4, R8
13E7A4:  VLDR            S2, [R7,#arg_0]
13E7A8:  ADDS            R2, R5, R4
13E7AA:  MOV.W           R3, #0x1000
13E7AE:  MOVS            R6, #1
13E7B0:  STR.W           R0, [R5,R4,LSL#2]
13E7B4:  STRB            R6, [R2,R3]
13E7B6:  STRD.W          R1, R1, [R0,#0x10]
13E7BA:  VSTR            S6, [R0]
13E7BE:  VSTR            S0, [R0,#4]
13E7C2:  VSTR            S2, [R0,#8]
13E7C6:  VSTR            S4, [R0,#0xC]
13E7CA:  POP.W           {R8}
13E7CE:  POP             {R4-R7,PC}
