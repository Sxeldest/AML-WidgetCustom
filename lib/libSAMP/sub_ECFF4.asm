; =========================================================
; Game Engine Function: sub_ECFF4
; Address            : 0xECFF4 - 0xED04E
; =========================================================

ECFF4:  PUSH            {R7,LR}
ECFF6:  MOV             R7, SP
ECFF8:  LDR             R0, =(byte_23DD80 - 0xECFFE)
ECFFA:  ADD             R0, PC; byte_23DD80
ECFFC:  LDRB            R0, [R0]
ECFFE:  DMB.W           ISH
ED002:  LSLS            R0, R0, #0x1F
ED004:  IT NE
ED006:  POPNE           {R7,PC}
ED008:  LDR             R0, =(byte_23DD80 - 0xED00E)
ED00A:  ADD             R0, PC; byte_23DD80 ; __guard *
ED00C:  BLX             j___cxa_guard_acquire
ED010:  CBZ             R0, locret_ED04C
ED012:  LDR             R1, =(unk_23DD48 - 0xED022)
ED014:  VMOV.I32        Q8, #0
ED018:  LDR             R0, =(sub_ED3D4+1 - 0xED026)
ED01A:  MOV.W           R12, #0
ED01E:  ADD             R1, PC; unk_23DD48 ; obj
ED020:  LDR             R2, =(off_22A540 - 0xED02A)
ED022:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ED024:  MOV             R3, R1
ED026:  ADD             R2, PC; off_22A540 ; lpdso_handle
ED028:  VST1.64         {D16-D17}, [R3]!
ED02C:  VST1.64         {D16-D17}, [R3]!
ED030:  VST1.64         {D16-D17}, [R3]!
ED034:  STR.W           R12, [R1,#(dword_23DD7C - 0x23DD48)]
ED038:  STR.W           R12, [R3]
ED03C:  BLX             __cxa_atexit
ED040:  LDR             R0, =(byte_23DD80 - 0xED046)
ED042:  ADD             R0, PC; byte_23DD80
ED044:  POP.W           {R7,LR}
ED048:  B.W             sub_2242B0
ED04C:  POP             {R7,PC}
