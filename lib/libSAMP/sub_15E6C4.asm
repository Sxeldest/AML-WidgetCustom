; =========================================================
; Game Engine Function: sub_15E6C4
; Address            : 0x15E6C4 - 0x15E712
; =========================================================

15E6C4:  PUSH            {R4,R5,R7,LR}
15E6C6:  ADD             R7, SP, #8
15E6C8:  SUB             SP, SP, #8
15E6CA:  LDR             R0, =(off_23496C - 0x15E6D0)
15E6CC:  ADD             R0, PC; off_23496C
15E6CE:  LDR             R0, [R0]; dword_23DEF4
15E6D0:  LDR             R0, [R0]
15E6D2:  LDR.W           R0, [R0,#0x210]; lpsrc
15E6D6:  CBZ             R0, loc_15E6EE
15E6D8:  LDR             R2, =(off_234E78 - 0x15E6E4)
15E6DA:  MOV             R3, #0xFFFFFFFE; s2d
15E6DE:  LDR             R1, =(_ZTI18RakClientInterface - 0x15E6E6); `typeinfo for'RakClientInterface ...
15E6E0:  ADD             R2, PC; off_234E78
15E6E2:  ADD             R1, PC; lpstype
15E6E4:  LDR             R2, [R2]; lpdtype
15E6E6:  BLX             j___dynamic_cast
15E6EA:  MOV             R4, R0
15E6EC:  B               loc_15E6F0
15E6EE:  MOVS            R4, #0
15E6F0:  BL              sub_17E2E4
15E6F4:  MOV             R5, R0
15E6F6:  LDR             R0, [R4]
15E6F8:  MOV             R1, R4
15E6FA:  MOVS            R2, #0
15E6FC:  LDR             R3, [R0,#0x64]
15E6FE:  MOV             R0, SP
15E700:  BLX             R3
15E702:  LDRD.W          R1, R2, [SP,#0x10+var_10]
15E706:  MOV             R0, R4
15E708:  BL              sub_182BE8
15E70C:  ADD             R0, R5
15E70E:  ADD             SP, SP, #8
15E710:  POP             {R4,R5,R7,PC}
