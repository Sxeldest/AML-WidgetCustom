; =========================================================
; Game Engine Function: sub_158DE4
; Address            : 0x158DE4 - 0x158E18
; =========================================================

158DE4:  PUSH            {R4,R6,R7,LR}
158DE6:  ADD             R7, SP, #8
158DE8:  LDR             R0, [R0,#8]
158DEA:  BL              sub_164C50
158DEE:  CBZ             R0, loc_158DF2
158DF0:  POP             {R4,R6,R7,PC}
158DF2:  MOVS            R0, #0x18; thrown_size
158DF4:  BLX             j___cxa_allocate_exception
158DF8:  MOV             R4, R0
158DFA:  BL              sub_1649EC
158DFE:  LDR             R1, =(aBassChannelset - 0x158E06); "BASS_ChannelSet3DPosition" ...
158E00:  MOV             R2, R0
158E02:  ADD             R1, PC; "BASS_ChannelSet3DPosition"
158E04:  MOV             R0, R4
158E06:  BL              sub_1545C8
158E0A:  LDR             R1, =(_ZTI13BassException - 0x158E14); `typeinfo for'BassException ...
158E0C:  MOV             R0, R4; void *
158E0E:  LDR             R2, =(sub_15466C+1 - 0x158E16)
158E10:  ADD             R1, PC; lptinfo
158E12:  ADD             R2, PC; sub_15466C ; void (*)(void *)
158E14:  BLX             j___cxa_throw
