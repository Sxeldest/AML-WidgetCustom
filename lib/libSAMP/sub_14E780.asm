; =========================================================
; Game Engine Function: sub_14E780
; Address            : 0x14E780 - 0x14E796
; =========================================================

14E780:  PUSH            {R7,LR}
14E782:  MOV             R7, SP
14E784:  LDR             R0, =(off_234A1C - 0x14E78A)
14E786:  ADD             R0, PC; off_234A1C
14E788:  LDR             R0, [R0]; dword_23DF04
14E78A:  LDR             R0, [R0]
14E78C:  CBZ             R0, locret_14E794
14E78E:  MOVS            R1, #0
14E790:  BL              sub_E317C
14E794:  POP             {R7,PC}
