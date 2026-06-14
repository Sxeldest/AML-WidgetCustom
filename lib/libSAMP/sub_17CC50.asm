; =========================================================
; Game Engine Function: sub_17CC50
; Address            : 0x17CC50 - 0x17CC7E
; =========================================================

17CC50:  PUSH            {R4,R5,R7,LR}
17CC52:  ADD             R7, SP, #8
17CC54:  MOV             R4, R1
17CC56:  MOV             R5, R0
17CC58:  BL              sub_17C080
17CC5C:  CBZ             R0, loc_17CC6C
17CC5E:  LDR             R1, [R5]
17CC60:  MOV             R3, R4
17CC62:  LDR             R2, [R5,#0x2C]
17CC64:  POP.W           {R4,R5,R7,LR}
17CC68:  B.W             sub_17C1B8
17CC6C:  LDR             R1, =(aAxl - 0x17CC76); "AXL" ...
17CC6E:  MOVS            R0, #4
17CC70:  LDR             R2, =(aEnvNotLoadedRe_0 - 0x17CC78); "Env not loaded (removeSliderFromAzVoice"... ...
17CC72:  ADD             R1, PC; "AXL"
17CC74:  ADD             R2, PC; "Env not loaded (removeSliderFromAzVoice"...
17CC76:  POP.W           {R4,R5,R7,LR}
17CC7A:  B.W             sub_2242C8
