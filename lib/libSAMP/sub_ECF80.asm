; =========================================================
; Game Engine Function: sub_ECF80
; Address            : 0xECF80 - 0xECFDA
; =========================================================

ECF80:  PUSH            {R7,LR}
ECF82:  MOV             R7, SP
ECF84:  LDR             R0, =(byte_23DD40 - 0xECF8A)
ECF86:  ADD             R0, PC; byte_23DD40
ECF88:  LDRB            R0, [R0]
ECF8A:  DMB.W           ISH
ECF8E:  LSLS            R0, R0, #0x1F
ECF90:  IT NE
ECF92:  POPNE           {R7,PC}
ECF94:  LDR             R0, =(byte_23DD40 - 0xECF9A)
ECF96:  ADD             R0, PC; byte_23DD40 ; __guard *
ECF98:  BLX             j___cxa_guard_acquire
ECF9C:  CBZ             R0, locret_ECFD8
ECF9E:  LDR             R1, =(unk_23DD08 - 0xECFAE)
ECFA0:  VMOV.I32        Q8, #0
ECFA4:  LDR             R0, =(sub_ED3D4+1 - 0xECFB2)
ECFA6:  MOV.W           R12, #0
ECFAA:  ADD             R1, PC; unk_23DD08 ; obj
ECFAC:  LDR             R2, =(off_22A540 - 0xECFB6)
ECFAE:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ECFB0:  MOV             R3, R1
ECFB2:  ADD             R2, PC; off_22A540 ; lpdso_handle
ECFB4:  VST1.64         {D16-D17}, [R3]!
ECFB8:  VST1.64         {D16-D17}, [R3]!
ECFBC:  VST1.64         {D16-D17}, [R3]!
ECFC0:  STR.W           R12, [R1,#(dword_23DD3C - 0x23DD08)]
ECFC4:  STR.W           R12, [R3]
ECFC8:  BLX             __cxa_atexit
ECFCC:  LDR             R0, =(byte_23DD40 - 0xECFD2)
ECFCE:  ADD             R0, PC; byte_23DD40
ECFD0:  POP.W           {R7,LR}
ECFD4:  B.W             sub_2242B0
ECFD8:  POP             {R7,PC}
