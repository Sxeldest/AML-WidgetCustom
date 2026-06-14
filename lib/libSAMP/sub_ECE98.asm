; =========================================================
; Game Engine Function: sub_ECE98
; Address            : 0xECE98 - 0xECEF2
; =========================================================

ECE98:  PUSH            {R7,LR}
ECE9A:  MOV             R7, SP
ECE9C:  LDR             R0, =(byte_23DCC0 - 0xECEA2)
ECE9E:  ADD             R0, PC; byte_23DCC0
ECEA0:  LDRB            R0, [R0]
ECEA2:  DMB.W           ISH
ECEA6:  LSLS            R0, R0, #0x1F
ECEA8:  IT NE
ECEAA:  POPNE           {R7,PC}
ECEAC:  LDR             R0, =(byte_23DCC0 - 0xECEB2)
ECEAE:  ADD             R0, PC; byte_23DCC0 ; __guard *
ECEB0:  BLX             j___cxa_guard_acquire
ECEB4:  CBZ             R0, locret_ECEF0
ECEB6:  LDR             R1, =(unk_23DC88 - 0xECEC6)
ECEB8:  VMOV.I32        Q8, #0
ECEBC:  LDR             R0, =(sub_ED3D4+1 - 0xECECA)
ECEBE:  MOV.W           R12, #0
ECEC2:  ADD             R1, PC; unk_23DC88 ; obj
ECEC4:  LDR             R2, =(off_22A540 - 0xECECE)
ECEC6:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ECEC8:  MOV             R3, R1
ECECA:  ADD             R2, PC; off_22A540 ; lpdso_handle
ECECC:  VST1.64         {D16-D17}, [R3]!
ECED0:  VST1.64         {D16-D17}, [R3]!
ECED4:  VST1.64         {D16-D17}, [R3]!
ECED8:  STR.W           R12, [R1,#(dword_23DCBC - 0x23DC88)]
ECEDC:  STR.W           R12, [R3]
ECEE0:  BLX             __cxa_atexit
ECEE4:  LDR             R0, =(byte_23DCC0 - 0xECEEA)
ECEE6:  ADD             R0, PC; byte_23DCC0
ECEE8:  POP.W           {R7,LR}
ECEEC:  B.W             sub_2242B0
ECEF0:  POP             {R7,PC}
