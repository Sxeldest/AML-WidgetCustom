; =========================================================
; Game Engine Function: sub_607E0
; Address            : 0x607E0 - 0x60810
; =========================================================

607E0:  PUSH            {R7,LR}
607E2:  MOV             R7, SP
607E4:  LDR             R1, =(off_1174F4 - 0x607EA)
607E6:  ADD             R1, PC; off_1174F4
607E8:  LDR             R1, [R1]
607EA:  BLX             R1
607EC:  LDR             R0, =(dword_1174D4 - 0x607F2)
607EE:  ADD             R0, PC; dword_1174D4
607F0:  LDR             R1, [R0,#(dword_1174E0 - 0x1174D4)]
607F2:  CMP             R1, #0
607F4:  ITT NE
607F6:  MOVNE           R2, #0
607F8:  STRBNE          R2, [R1,#2]
607FA:  LDR             R1, [R0,#(dword_1174E4 - 0x1174D4)]
607FC:  CMP             R1, #0
607FE:  ITT NE
60800:  MOVNE           R2, #0
60802:  STRBNE          R2, [R1,#2]
60804:  LDR             R0, [R0,#(dword_1174E8 - 0x1174D4)]
60806:  CMP             R0, #0
60808:  ITT NE
6080A:  MOVNE           R1, #0
6080C:  STRBNE          R1, [R0,#2]
6080E:  POP             {R7,PC}
