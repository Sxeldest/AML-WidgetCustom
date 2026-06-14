; =========================================================
; Game Engine Function: INT123_frame_reset
; Address            : 0x225CC6 - 0x225D54
; =========================================================

225CC6:  PUSH            {R4,R5,R7,LR}
225CC8:  ADD             R7, SP, #8
225CCA:  MOV             R4, R0
225CCC:  MOVW            R0, #0xB290
225CD0:  MOVS            R5, #0
225CD2:  MOVW            R1, #0xB288
225CD6:  STR             R5, [R4,R0]
225CD8:  MOVW            R0, #0xB2A8
225CDC:  MOVW            R2, #0xB28C
225CE0:  STR             R5, [R4,R0]
225CE2:  MOVW            R0, #0xA308
225CE6:  ADD             R0, R4
225CE8:  STR             R0, [R4,R1]
225CEA:  MOVW            R1, #0x4834
225CEE:  LDR             R1, [R4,R1]
225CF0:  STR             R0, [R4,R2]
225CF2:  MOVW            R0, #0x4830
225CF6:  LDR             R0, [R4,R0]
225CF8:  MOVW            R2, #0x9384
225CFC:  STR             R5, [R4,R2]
225CFE:  BLX             j___aeabi_memclr8_1
225D02:  MOVW            R0, #0x9388
225D06:  MOV.W           R1, #0x1F00
225D0A:  ADD             R0, R4
225D0C:  BLX             j___aeabi_memclr8
225D10:  MOVW            R0, #0x4A70
225D14:  VMOV.I32        Q8, #0
225D18:  STRH            R5, [R4,R0]
225D1A:  MOVW            R0, #0x4A60
225D1E:  ADD             R0, R4
225D20:  MOVW            R1, #0x4808
225D24:  VST1.64         {D16-D17}, [R0]
225D28:  MOVW            R0, #0x4A50
225D2C:  ADD             R0, R4
225D2E:  VST1.64         {D16-D17}, [R0]
225D32:  ADD.W           R0, R4, #8
225D36:  BLX             j___aeabi_memclr8
225D3A:  MOV             R0, R4
225D3C:  BL              sub_225790
225D40:  MOVW            R1, #0x9324
225D44:  LDR             R0, [R4,R1]; p
225D46:  CBZ             R0, loc_225D50
225D48:  ADD             R4, R1
225D4A:  BLX             free
225D4E:  STR             R5, [R4]
225D50:  MOVS            R0, #0
225D52:  POP             {R4,R5,R7,PC}
