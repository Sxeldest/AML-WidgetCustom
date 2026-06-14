; =========================================================
; Game Engine Function: sub_ED0DC
; Address            : 0xED0DC - 0xED136
; =========================================================

ED0DC:  PUSH            {R7,LR}
ED0DE:  MOV             R7, SP
ED0E0:  LDR             R0, =(byte_23DE00 - 0xED0E6)
ED0E2:  ADD             R0, PC; byte_23DE00
ED0E4:  LDRB            R0, [R0]
ED0E6:  DMB.W           ISH
ED0EA:  LSLS            R0, R0, #0x1F
ED0EC:  IT NE
ED0EE:  POPNE           {R7,PC}
ED0F0:  LDR             R0, =(byte_23DE00 - 0xED0F6)
ED0F2:  ADD             R0, PC; byte_23DE00 ; __guard *
ED0F4:  BLX             j___cxa_guard_acquire
ED0F8:  CBZ             R0, locret_ED134
ED0FA:  LDR             R1, =(unk_23DDC8 - 0xED10A)
ED0FC:  VMOV.I32        Q8, #0
ED100:  LDR             R0, =(sub_ED3D4+1 - 0xED10E)
ED102:  MOV.W           R12, #0
ED106:  ADD             R1, PC; unk_23DDC8 ; obj
ED108:  LDR             R2, =(off_22A540 - 0xED112)
ED10A:  ADD             R0, PC; sub_ED3D4 ; lpfunc
ED10C:  MOV             R3, R1
ED10E:  ADD             R2, PC; off_22A540 ; lpdso_handle
ED110:  VST1.64         {D16-D17}, [R3]!
ED114:  VST1.64         {D16-D17}, [R3]!
ED118:  VST1.64         {D16-D17}, [R3]!
ED11C:  STR.W           R12, [R1,#(dword_23DDFC - 0x23DDC8)]
ED120:  STR.W           R12, [R3]
ED124:  BLX             __cxa_atexit
ED128:  LDR             R0, =(byte_23DE00 - 0xED12E)
ED12A:  ADD             R0, PC; byte_23DE00
ED12C:  POP.W           {R7,LR}
ED130:  B.W             sub_2242B0
ED134:  POP             {R7,PC}
