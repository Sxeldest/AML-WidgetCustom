; =========================================================
; Game Engine Function: sub_10BE6C
; Address            : 0x10BE6C - 0x10BEAC
; =========================================================

10BE6C:  PUSH            {R7,LR}
10BE6E:  MOV             R7, SP
10BE70:  LDR             R0, =(byte_2631D0 - 0x10BE76)
10BE72:  ADD             R0, PC; byte_2631D0
10BE74:  LDRB            R0, [R0]
10BE76:  DMB.W           ISH
10BE7A:  LSLS            R0, R0, #0x1F
10BE7C:  IT NE
10BE7E:  POPNE           {R7,PC}
10BE80:  LDR             R0, =(byte_2631D0 - 0x10BE86)
10BE82:  ADD             R0, PC; byte_2631D0 ; __guard *
10BE84:  BLX             j___cxa_guard_acquire
10BE88:  CBZ             R0, locret_10BEAA
10BE8A:  LDR             R1, =(unk_2631B8 - 0x10BE96)
10BE8C:  MOVS            R3, #0
10BE8E:  LDR             R0, =(sub_10BDC6+1 - 0x10BE98)
10BE90:  LDR             R2, =(off_22A540 - 0x10BE9A)
10BE92:  ADD             R1, PC; unk_2631B8 ; obj
10BE94:  ADD             R0, PC; sub_10BDC6 ; lpfunc
10BE96:  ADD             R2, PC; off_22A540 ; lpdso_handle
10BE98:  STR             R3, [R1,#(dword_2631C8 - 0x2631B8)]
10BE9A:  BLX             __cxa_atexit
10BE9E:  LDR             R0, =(byte_2631D0 - 0x10BEA4)
10BEA0:  ADD             R0, PC; byte_2631D0
10BEA2:  POP.W           {R7,LR}
10BEA6:  B.W             sub_2242B0
10BEAA:  POP             {R7,PC}
