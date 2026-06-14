; =========================================================
; Game Engine Function: sub_158CB4
; Address            : 0x158CB4 - 0x158CEA
; =========================================================

158CB4:  PUSH            {R4,R6,R7,LR}
158CB6:  ADD             R7, SP, #8
158CB8:  LDR             R0, [R0,#8]
158CBA:  MOVS            R1, #0
158CBC:  BL              sub_164BD0
158CC0:  CBZ             R0, loc_158CC4
158CC2:  POP             {R4,R6,R7,PC}
158CC4:  MOVS            R0, #0x18; thrown_size
158CC6:  BLX             j___cxa_allocate_exception
158CCA:  MOV             R4, R0
158CCC:  BL              sub_1649EC
158CD0:  LDR             R1, =(aBassChannelpla - 0x158CD8); "BASS_ChannelPlay" ...
158CD2:  MOV             R2, R0
158CD4:  ADD             R1, PC; "BASS_ChannelPlay"
158CD6:  MOV             R0, R4
158CD8:  BL              sub_1545C8
158CDC:  LDR             R1, =(_ZTI13BassException - 0x158CE6); `typeinfo for'BassException ...
158CDE:  MOV             R0, R4; void *
158CE0:  LDR             R2, =(sub_15466C+1 - 0x158CE8)
158CE2:  ADD             R1, PC; lptinfo
158CE4:  ADD             R2, PC; sub_15466C ; void (*)(void *)
158CE6:  BLX             j___cxa_throw
