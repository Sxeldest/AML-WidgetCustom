; =========================================================
; Game Engine Function: sub_11E78C
; Address            : 0x11E78C - 0x11E848
; =========================================================

11E78C:  PUSH            {R4-R7,LR}
11E78E:  ADD             R7, SP, #0xC
11E790:  PUSH.W          {R8}
11E794:  LDR             R4, =(off_263828 - 0x11E79A)
11E796:  ADD             R4, PC; off_263828
11E798:  LDR             R0, [R4]
11E79A:  CBZ             R0, loc_11E7EC
11E79C:  LDR             R0, =(byte_263830 - 0x11E7A2)
11E79E:  ADD             R0, PC; byte_263830
11E7A0:  LDRB            R0, [R0]
11E7A2:  DMB.W           ISH
11E7A6:  LDR             R5, =(dword_26382C - 0x11E7AC)
11E7A8:  ADD             R5, PC; dword_26382C
11E7AA:  LSLS            R0, R0, #0x1F
11E7AC:  BEQ             loc_11E7F2
11E7AE:  LDR             R0, =(byte_263838 - 0x11E7B4)
11E7B0:  ADD             R0, PC; byte_263838
11E7B2:  LDRB            R0, [R0]
11E7B4:  DMB.W           ISH
11E7B8:  LDR             R6, =(dword_263834 - 0x11E7BE)
11E7BA:  ADD             R6, PC; dword_263834
11E7BC:  LSLS            R0, R0, #0x1F
11E7BE:  BEQ             loc_11E81C
11E7C0:  LDR             R0, [R6]
11E7C2:  MOVW            R3, #0x1EB8
11E7C6:  LDR             R1, [R5]
11E7C8:  MOVT            R3, #0x3F05
11E7CC:  LDR             R2, [R4]
11E7CE:  LDR.W           R8, [R0]
11E7D2:  LDR             R4, [R1]
11E7D4:  STR             R3, [R1]
11E7D6:  MOV             R1, #0x3EDEB852
11E7DE:  STR             R1, [R0]
11E7E0:  BLX             R2
11E7E2:  LDR             R0, [R5]
11E7E4:  LDR             R1, [R6]
11E7E6:  STR             R4, [R0]
11E7E8:  STR.W           R8, [R1]
11E7EC:  POP.W           {R8}
11E7F0:  POP             {R4-R7,PC}
11E7F2:  LDR             R0, =(byte_263830 - 0x11E7F8)
11E7F4:  ADD             R0, PC; byte_263830 ; __guard *
11E7F6:  BLX             j___cxa_guard_acquire
11E7FA:  CMP             R0, #0
11E7FC:  BEQ             loc_11E7AE
11E7FE:  LDR             R0, =(off_23494C - 0x11E80C)
11E800:  MOV             R2, #0x952CB0
11E808:  ADD             R0, PC; off_23494C
11E80A:  LDR             R1, [R0]; dword_23DF24
11E80C:  LDR             R0, =(byte_263830 - 0x11E814)
11E80E:  LDR             R1, [R1]
11E810:  ADD             R0, PC; byte_263830 ; __guard *
11E812:  ADD             R1, R2
11E814:  STR             R1, [R5]
11E816:  BLX             j___cxa_guard_release
11E81A:  B               loc_11E7AE
11E81C:  LDR             R0, =(byte_263838 - 0x11E822)
11E81E:  ADD             R0, PC; byte_263838 ; __guard *
11E820:  BLX             j___cxa_guard_acquire
11E824:  CMP             R0, #0
11E826:  BEQ             loc_11E7C0
11E828:  LDR             R0, =(off_23494C - 0x11E836)
11E82A:  MOV             R2, #0x952CB0
11E832:  ADD             R0, PC; off_23494C
11E834:  LDR             R0, [R0]; dword_23DF24
11E836:  LDR             R1, [R0]
11E838:  LDR             R0, =(byte_263838 - 0x11E840)
11E83A:  ADD             R1, R2
11E83C:  ADD             R0, PC; byte_263838 ; __guard *
11E83E:  ADDS            R1, #4
11E840:  STR             R1, [R6]
11E842:  BLX             j___cxa_guard_release
11E846:  B               loc_11E7C0
