; =========================================================
; Game Engine Function: sub_F07C4
; Address            : 0xF07C4 - 0xF0826
; =========================================================

F07C4:  PUSH            {R4,R5,R7,LR}
F07C6:  ADD             R7, SP, #8
F07C8:  MOVS            R0, #0xD2
F07CA:  MOVS            R1, #0xD
F07CC:  MOVS            R2, #0x18
F07CE:  MOVS            R3, #0xC
F07D0:  BL              sub_125A14
F07D4:  BL              sub_12665C
F07D8:  LDR             R4, =(dword_23DF24 - 0xF07E6)
F07DA:  MOV             R5, #0xA987C8
F07E2:  ADD             R4, PC; dword_23DF24
F07E4:  LDR             R0, [R4]
F07E6:  LDR             R0, [R0,R5]
F07E8:  CMP             R0, #7
F07EA:  BEQ             loc_F07F8
F07EC:  MOV.W           R0, #0x1F4; useconds
F07F0:  BLX             usleep
F07F4:  LDR             R0, [R4]
F07F6:  B               loc_F07E6
F07F8:  LDR             R0, =(dword_23DEF0 - 0xF07FE)
F07FA:  ADD             R0, PC; dword_23DEF0
F07FC:  LDR             R0, [R0]
F07FE:  BL              sub_F93B0
F0802:  MOVS            R0, #5
F0804:  BL              sub_ED150
F0808:  LDR             R0, [R4]
F080A:  LDR             R0, [R0,R5]
F080C:  CMP             R0, #9
F080E:  BEQ             loc_F081A
F0810:  MOV.W           R0, #0x1F4; useconds
F0814:  BLX             usleep
F0818:  B               loc_F0808
F081A:  MOVS            R0, #2
F081C:  BL              sub_ED150
F0820:  MOVS            R0, #0; retval
F0822:  BLX             pthread_exit
