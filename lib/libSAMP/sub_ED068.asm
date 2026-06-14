; =========================================================
; Game Engine Function: sub_ED068
; Address            : 0xED068 - 0xED0C2
; =========================================================

ED068:  PUSH            {R7,LR}
ED06A:  MOV             R7, SP
ED06C:  LDR             R0, =(byte_23DDC0 - 0xED072)
ED06E:  ADD             R0, PC; byte_23DDC0
ED070:  LDRB            R0, [R0]
ED072:  DMB.W           ISH
ED076:  LSLS            R0, R0, #0x1F
ED078:  IT NE
ED07A:  POPNE           {R7,PC}
ED07C:  LDR             R0, =(byte_23DDC0 - 0xED082)
ED07E:  ADD             R0, PC; byte_23DDC0 ; __guard *
ED080:  BLX             j___cxa_guard_acquire
ED084:  CBZ             R0, locret_ED0C0
ED086:  LDR             R1, =(unk_23DD88 - 0xED096)
ED088:  VMOV.I32        Q8, #0
ED08C:  LDR             R0, =(sub_ED3D4+1 - 0xED09A)
ED08E:  MOV.W           R12, #0
ED092:  ADD             R1, PC; unk_23DD88 ; obj
ED094:  LDR             R2, =(off_22A540 - 0xED09E)
ED096:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ED098:  MOV             R3, R1
ED09A:  ADD             R2, PC; off_22A540 ; lpdso_handle
ED09C:  VST1.64         {D16-D17}, [R3]!
ED0A0:  VST1.64         {D16-D17}, [R3]!
ED0A4:  VST1.64         {D16-D17}, [R3]!
ED0A8:  STR.W           R12, [R1,#(dword_23DDBC - 0x23DD88)]
ED0AC:  STR.W           R12, [R3]
ED0B0:  BLX             __cxa_atexit
ED0B4:  LDR             R0, =(byte_23DDC0 - 0xED0BA)
ED0B6:  ADD             R0, PC; byte_23DDC0
ED0B8:  POP.W           {R7,LR}
ED0BC:  B.W             sub_2242B0
ED0C0:  POP             {R7,PC}
