; =========================================================
; Game Engine Function: sub_158E30
; Address            : 0x158E30 - 0x158E74
; =========================================================

158E30:  PUSH            {R4,R6,R7,LR}
158E32:  ADD             R7, SP, #8
158E34:  SUB             SP, SP, #0x10
158E36:  LDR             R0, [R0,#8]; int
158E38:  LDRD.W          LR, R12, [R7,#arg_0]
158E3C:  LDR             R4, [R7,#arg_8]
158E3E:  STRD.W          LR, R12, [SP,#0x18+var_18]; int
158E42:  STR             R4, [SP,#0x18+var_10]; float
158E44:  BL              sub_164C20
158E48:  CBZ             R0, loc_158E4E
158E4A:  ADD             SP, SP, #0x10
158E4C:  POP             {R4,R6,R7,PC}
158E4E:  MOVS            R0, #0x18; thrown_size
158E50:  BLX             j___cxa_allocate_exception
158E54:  MOV             R4, R0
158E56:  BL              sub_1649EC
158E5A:  LDR             R1, =(aBassChannelset_1 - 0x158E62); "BASS_ChannelSet3DAttributes" ...
158E5C:  MOV             R2, R0
158E5E:  ADD             R1, PC; "BASS_ChannelSet3DAttributes"
158E60:  MOV             R0, R4
158E62:  BL              sub_1545C8
158E66:  LDR             R1, =(_ZTI13BassException - 0x158E70); `typeinfo for'BassException ...
158E68:  MOV             R0, R4; void *
158E6A:  LDR             R2, =(sub_15466C+1 - 0x158E72)
158E6C:  ADD             R1, PC; lptinfo
158E6E:  ADD             R2, PC; sub_15466C ; void (*)(void *)
158E70:  BLX             j___cxa_throw
