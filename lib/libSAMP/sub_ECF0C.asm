; =========================================================
; Game Engine Function: sub_ECF0C
; Address            : 0xECF0C - 0xECF66
; =========================================================

ECF0C:  PUSH            {R7,LR}
ECF0E:  MOV             R7, SP
ECF10:  LDR             R0, =(byte_23DD00 - 0xECF16)
ECF12:  ADD             R0, PC; byte_23DD00
ECF14:  LDRB            R0, [R0]
ECF16:  DMB.W           ISH
ECF1A:  LSLS            R0, R0, #0x1F
ECF1C:  IT NE
ECF1E:  POPNE           {R7,PC}
ECF20:  LDR             R0, =(byte_23DD00 - 0xECF26)
ECF22:  ADD             R0, PC; byte_23DD00 ; __guard *
ECF24:  BLX             j___cxa_guard_acquire
ECF28:  CBZ             R0, locret_ECF64
ECF2A:  LDR             R1, =(unk_23DCC8 - 0xECF3A)
ECF2C:  VMOV.I32        Q8, #0
ECF30:  LDR             R0, =(sub_ED3D4+1 - 0xECF3E)
ECF32:  MOV.W           R12, #0
ECF36:  ADD             R1, PC; unk_23DCC8 ; obj
ECF38:  LDR             R2, =(off_22A540 - 0xECF42)
ECF3A:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ECF3C:  MOV             R3, R1
ECF3E:  ADD             R2, PC; off_22A540 ; lpdso_handle
ECF40:  VST1.64         {D16-D17}, [R3]!
ECF44:  VST1.64         {D16-D17}, [R3]!
ECF48:  VST1.64         {D16-D17}, [R3]!
ECF4C:  STR.W           R12, [R1,#(dword_23DCFC - 0x23DCC8)]
ECF50:  STR.W           R12, [R3]
ECF54:  BLX             __cxa_atexit
ECF58:  LDR             R0, =(byte_23DD00 - 0xECF5E)
ECF5A:  ADD             R0, PC; byte_23DD00
ECF5C:  POP.W           {R7,LR}
ECF60:  B.W             sub_2242B0
ECF64:  POP             {R7,PC}
