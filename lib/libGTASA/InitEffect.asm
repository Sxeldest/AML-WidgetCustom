; =========================================================
; Game Engine Function: InitEffect
; Address            : 0x252F08 - 0x252F4C
; =========================================================

252F08:  PUSH            {R4,R5,R7,LR}
252F0A:  ADD             R7, SP, #8
252F0C:  LDR             R1, =(sub_264914+1 - 0x252F14)
252F0E:  LDR             R5, =(sub_2648CC+1 - 0x252F1C)
252F10:  ADD             R1, PC; sub_264914
252F12:  STR.W           R1, [R0,#0x98]
252F16:  LDR             R1, =(sub_264AC4+1 - 0x252F22)
252F18:  ADD             R5, PC; sub_2648CC
252F1A:  LDR             R2, =(sub_26495C+1 - 0x252F28)
252F1C:  LDR             R3, =(sub_2649A4+1 - 0x252F2E)
252F1E:  ADD             R1, PC; sub_264AC4
252F20:  LDR.W           R12, =(sub_2649EC+1 - 0x252F32)
252F24:  ADD             R2, PC; sub_26495C
252F26:  LDR.W           LR, =(sub_264A34+1 - 0x252F3C)
252F2A:  ADD             R3, PC; sub_2649A4
252F2C:  LDR             R4, =(sub_264A7C+1 - 0x252F42)
252F2E:  ADD             R12, PC; sub_2649EC
252F30:  STR.W           R5, [R0,#0x94]
252F34:  MOVS            R5, #0
252F36:  STR             R5, [R0]
252F38:  ADD             LR, PC; sub_264A34
252F3A:  ADD.W           R5, R0, #0x9C
252F3E:  ADD             R4, PC; sub_264A7C
252F40:  STM.W           R5, {R2,R3,R12,LR}
252F44:  STRD.W          R4, R1, [R0,#0xAC]
252F48:  MOVS            R0, #0
252F4A:  POP             {R4,R5,R7,PC}
