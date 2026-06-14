; =========================================================
; Game Engine Function: sub_149278
; Address            : 0x149278 - 0x1492F2
; =========================================================

149278:  PUSH            {R4,R5,R7,LR}
14927A:  ADD             R7, SP, #8
14927C:  MOVS            R5, #0
14927E:  MOV             R4, R0
149280:  STRH            R5, [R0,#0x16]
149282:  MOVS            R1, #0x44 ; 'D'; n
149284:  STRB.W          R5, [R0,#0x24]
149288:  STRD.W          R5, R5, [R0,#4]
14928C:  STR             R5, [R0,#0xC]
14928E:  STR             R5, [R0,#0x20]
149290:  STRH.W          R5, [R0,#0x1B]
149294:  MOVS            R0, #1
149296:  STRB            R0, [R4,#0x10]
149298:  ADD.W           R0, R4, #0x74 ; 't'; int
14929C:  BLX             sub_22178C
1492A0:  VMOV.I32        Q8, #0
1492A4:  ADD.W           R0, R4, #0xB8
1492A8:  MOVS            R2, #0xF
1492AA:  LDR.W           R1, [R4,#0x12C]
1492AE:  STR.W           R5, [R4,#0x10C]
1492B2:  VST1.32         {D16-D17}, [R0]!
1492B6:  VST1.32         {D16-D17}, [R0]!
1492BA:  VST1.32         {D16-D17}, [R0],R2
1492BE:  MOV.W           R2, #0x11
1492C2:  VST1.8          {D16-D17}, [R0],R2
1492C6:  VST1.32         {D16-D17}, [R0]!
1492CA:  STR             R5, [R0]
1492CC:  CBZ             R1, loc_1492DE
1492CE:  LDR             R0, =(off_234970 - 0x1492D4)
1492D0:  ADD             R0, PC; off_234970
1492D2:  LDR             R0, [R0]; dword_23DEF0
1492D4:  LDR             R0, [R0]
1492D6:  BL              sub_F9A3C
1492DA:  STR.W           R5, [R4,#0x12C]
1492DE:  LDR             R0, =(off_23496C - 0x1492E4)
1492E0:  ADD             R0, PC; off_23496C
1492E2:  LDR             R0, [R0]; dword_23DEF4
1492E4:  LDR             R0, [R0]
1492E6:  CBZ             R0, locret_1492F0
1492E8:  BL              sub_F0B30
1492EC:  STR.W           R0, [R4,#0x124]
1492F0:  POP             {R4,R5,R7,PC}
