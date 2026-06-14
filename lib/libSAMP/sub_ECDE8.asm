; =========================================================
; Game Engine Function: sub_ECDE8
; Address            : 0xECDE8 - 0xECE42
; =========================================================

ECDE8:  PUSH            {R7,LR}
ECDEA:  MOV             R7, SP
ECDEC:  LDR             R0, =(byte_23DC80 - 0xECDF2)
ECDEE:  ADD             R0, PC; byte_23DC80
ECDF0:  LDRB            R0, [R0]
ECDF2:  DMB.W           ISH
ECDF6:  LSLS            R0, R0, #0x1F
ECDF8:  IT NE
ECDFA:  POPNE           {R7,PC}
ECDFC:  LDR             R0, =(byte_23DC80 - 0xECE02)
ECDFE:  ADD             R0, PC; byte_23DC80 ; __guard *
ECE00:  BLX             j___cxa_guard_acquire
ECE04:  CBZ             R0, locret_ECE40
ECE06:  LDR             R1, =(unk_23DC48 - 0xECE16)
ECE08:  VMOV.I32        Q8, #0
ECE0C:  LDR             R0, =(sub_ED3D4+1 - 0xECE1A)
ECE0E:  MOV.W           R12, #0
ECE12:  ADD             R1, PC; unk_23DC48 ; obj
ECE14:  LDR             R2, =(off_22A540 - 0xECE1E)
ECE16:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ECE18:  MOV             R3, R1
ECE1A:  ADD             R2, PC; off_22A540 ; lpdso_handle
ECE1C:  VST1.64         {D16-D17}, [R3]!
ECE20:  VST1.64         {D16-D17}, [R3]!
ECE24:  VST1.64         {D16-D17}, [R3]!
ECE28:  STR.W           R12, [R1,#(dword_23DC7C - 0x23DC48)]
ECE2C:  STR.W           R12, [R3]
ECE30:  BLX             __cxa_atexit
ECE34:  LDR             R0, =(byte_23DC80 - 0xECE3A)
ECE36:  ADD             R0, PC; byte_23DC80
ECE38:  POP.W           {R7,LR}
ECE3C:  B.W             sub_2242B0
ECE40:  POP             {R7,PC}
