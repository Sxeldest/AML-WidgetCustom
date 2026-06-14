; =========================================================
; Game Engine Function: sub_12A778
; Address            : 0x12A778 - 0x12A7F8
; =========================================================

12A778:  PUSH            {R4-R7,LR}
12A77A:  ADD             R7, SP, #0xC
12A77C:  PUSH.W          {R8}
12A780:  SUB             SP, SP, #0x10
12A782:  LDR             R1, [R0,#0x58]
12A784:  MOV             R4, R0
12A786:  CBZ             R1, loc_12A78E
12A788:  MOV             R0, R4
12A78A:  BL              sub_12BE22
12A78E:  MOVS            R0, #0x94; unsigned int
12A790:  BLX             j__Znwj; operator new(uint)
12A794:  MOV             R5, R0
12A796:  BL              sub_12EF40
12A79A:  STR             R5, [R4,#0x58]
12A79C:  MOV             R0, R4
12A79E:  MOV             R1, R5
12A7A0:  BL              sub_12BDF6
12A7A4:  LDR             R0, =(off_234BA0 - 0x12A7AC)
12A7A6:  LDR             R1, =(off_234BA4 - 0x12A7B0)
12A7A8:  ADD             R0, PC; off_234BA0
12A7AA:  LDR             R3, [R4,#0x58]
12A7AC:  ADD             R1, PC; off_234BA4
12A7AE:  LDR             R0, [R0]; dword_238ED8
12A7B0:  ADDS            R3, #0x14
12A7B2:  LDR             R1, [R1]; dword_238ED0
12A7B4:  LDRD.W          R2, R0, [R0]
12A7B8:  VMOV            D16, R2, R0
12A7BC:  VMOV            D17, D16
12A7C0:  VST1.32         {D16-D17}, [R3]!
12A7C4:  STRD.W          R2, R0, [R3]
12A7C8:  LDR             R0, [R4,#0x58]
12A7CA:  LDRD.W          R2, R1, [R1]
12A7CE:  STRD.W          R2, R1, [SP,#0x20+var_18]
12A7D2:  ADD             R1, SP, #0x20+var_18
12A7D4:  BL              sub_12BD92
12A7D8:  LDR             R5, [R4,#0x58]
12A7DA:  LDRB.W          R0, [R5,#0x50]
12A7DE:  CBZ             R0, loc_12A7EA
12A7E0:  LDR             R0, [R5]
12A7E2:  LDR             R2, [R0,#0x24]
12A7E4:  MOV             R0, R5
12A7E6:  MOVS            R1, #0
12A7E8:  BLX             R2
12A7EA:  MOVS            R0, #0
12A7EC:  STRB.W          R0, [R5,#0x50]
12A7F0:  ADD             SP, SP, #0x10
12A7F2:  POP.W           {R8}
12A7F6:  POP             {R4-R7,PC}
