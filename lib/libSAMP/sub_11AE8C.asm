; =========================================================
; Game Engine Function: sub_11AE8C
; Address            : 0x11AE8C - 0x11AECC
; =========================================================

11AE8C:  PUSH            {R7,LR}
11AE8E:  MOV             R7, SP
11AE90:  LDR             R0, =(byte_2635C8 - 0x11AE96)
11AE92:  ADD             R0, PC; byte_2635C8
11AE94:  LDRB            R0, [R0]
11AE96:  DMB.W           ISH
11AE9A:  LSLS            R0, R0, #0x1F
11AE9C:  IT NE
11AE9E:  POPNE           {R7,PC}
11AEA0:  LDR             R0, =(byte_2635C8 - 0x11AEA6)
11AEA2:  ADD             R0, PC; byte_2635C8 ; __guard *
11AEA4:  BLX             j___cxa_guard_acquire
11AEA8:  CBZ             R0, locret_11AECA
11AEAA:  LDR             R1, =(unk_2635B0 - 0x11AEB6)
11AEAC:  MOVS            R3, #0
11AEAE:  LDR             R0, =(sub_11A7A8+1 - 0x11AEB8)
11AEB0:  LDR             R2, =(off_22A540 - 0x11AEBA)
11AEB2:  ADD             R1, PC; unk_2635B0 ; obj
11AEB4:  ADD             R0, PC; sub_11A7A8 ; lpfunc
11AEB6:  ADD             R2, PC; off_22A540 ; lpdso_handle
11AEB8:  STR             R3, [R1,#(dword_2635C0 - 0x2635B0)]
11AEBA:  BLX             __cxa_atexit
11AEBE:  LDR             R0, =(byte_2635C8 - 0x11AEC4)
11AEC0:  ADD             R0, PC; byte_2635C8
11AEC2:  POP.W           {R7,LR}
11AEC6:  B.W             sub_2242B0
11AECA:  POP             {R7,PC}
