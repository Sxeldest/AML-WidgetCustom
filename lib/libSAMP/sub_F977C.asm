; =========================================================
; Game Engine Function: sub_F977C
; Address            : 0xF977C - 0xF97A2
; =========================================================

F977C:  LDR             R2, =(off_23494C - 0xF978A)
F977E:  MOV             R12, #0xA7D134
F9786:  ADD             R2, PC; off_23494C
F9788:  LDR             R3, [R2]; dword_23DF24
F978A:  LDR             R2, [R3]
F978C:  ADD             R2, R12
F978E:  STRB            R1, [R2,#4]
F9790:  LDRB            R0, [R0,#0xC]
F9792:  CBZ             R0, loc_F9796
F9794:  BX              LR
F9796:  LDR             R0, [R3]
F9798:  STRH.W          R1, [R0,R12]
F979C:  ADD             R0, R12
F979E:  STRH            R1, [R0,#2]
F97A0:  BX              LR
