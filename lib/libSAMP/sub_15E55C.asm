; =========================================================
; Game Engine Function: sub_15E55C
; Address            : 0x15E55C - 0x15E57A
; =========================================================

15E55C:  LDR             R0, =(off_23496C - 0x15E562)
15E55E:  ADD             R0, PC; off_23496C
15E560:  LDR             R0, [R0]; dword_23DEF4
15E562:  LDR             R1, [R0]
15E564:  MOVW            R0, #0xFFFF
15E568:  CBZ             R1, locret_15E578
15E56A:  LDR.W           R1, [R1,#0x3B0]
15E56E:  LDR             R1, [R1]
15E570:  CBZ             R1, locret_15E578
15E572:  MOV.W           R0, #0x13A0
15E576:  LDRH            R0, [R1,R0]
15E578:  BX              LR
