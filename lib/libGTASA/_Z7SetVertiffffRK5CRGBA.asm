; =========================================================
; Game Engine Function: _Z7SetVertiffffRK5CRGBA
; Address            : 0x29B67C - 0x29B6C8
; =========================================================

29B67C:  PUSH            {R7,LR}
29B67E:  MOV             R7, SP
29B680:  LDR.W           R12, =(maVertices_ptr - 0x29B690)
29B684:  RSB.W           R0, R0, R0,LSL#3
29B688:  LDR.W           LR, [R7,#8+arg_4]
29B68C:  ADD             R12, PC; maVertices_ptr
29B68E:  VLDR            S0, [R7,#8+arg_0]
29B692:  LDR.W           R12, [R12]; maVertices
29B696:  STR.W           R1, [R12,R0,LSL#2]
29B69A:  ADD.W           R0, R12, R0,LSL#2
29B69E:  MOV.W           R1, #0x3F800000
29B6A2:  STRD.W          R2, R1, [R0,#4]
29B6A6:  STR             R1, [R0,#0xC]
29B6A8:  STR             R3, [R0,#0x14]
29B6AA:  VSTR            S0, [R0,#0x18]
29B6AE:  LDRB.W          R1, [LR]
29B6B2:  STRB            R1, [R0,#0x10]
29B6B4:  LDRB.W          R1, [LR,#1]
29B6B8:  STRB            R1, [R0,#0x11]
29B6BA:  LDRB.W          R1, [LR,#2]
29B6BE:  STRB            R1, [R0,#0x12]
29B6C0:  LDRB.W          R1, [LR,#3]
29B6C4:  STRB            R1, [R0,#0x13]
29B6C6:  POP             {R7,PC}
