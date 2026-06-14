; =========================================================
; Game Engine Function: sub_15EAE0
; Address            : 0x15EAE0 - 0x15EB04
; =========================================================

15EAE0:  PUSH            {R7,LR}
15EAE2:  MOV             R7, SP
15EAE4:  LDR             R0, [R1,#0x18]
15EAE6:  CBZ             R0, locret_15EB02
15EAE8:  LDR             R1, =(off_23494C - 0x15EAF6)
15EAEA:  MOV             R12, #0x1D8649
15EAF2:  ADD             R1, PC; off_23494C
15EAF4:  LDR             R3, [R1]; dword_23DF24
15EAF6:  LDR             R1, =(sub_15E74C+1 - 0x15EB00)
15EAF8:  LDR             R0, [R0,#4]
15EAFA:  LDR             R3, [R3]
15EAFC:  ADD             R1, PC; sub_15E74C
15EAFE:  ADD             R3, R12
15EB00:  BLX             R3
15EB02:  POP             {R7,PC}
