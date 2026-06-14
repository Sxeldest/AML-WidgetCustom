; =========================================================
; Game Engine Function: sub_1269A8
; Address            : 0x1269A8 - 0x126A28
; =========================================================

1269A8:  PUSH            {R4-R7,LR}
1269AA:  ADD             R7, SP, #0xC
1269AC:  PUSH.W          {R11}
1269B0:  SUB             SP, SP, #0x10
1269B2:  LDR             R0, =(off_23494C - 0x1269C2)
1269B4:  MOVW            R5, #0x6100
1269B8:  LDR             R1, =(unk_91E20 - 0x1269C4)
1269BA:  MOVT            R5, #0x79 ; 'y'
1269BE:  ADD             R0, PC; off_23494C
1269C0:  ADD             R1, PC; unk_91E20
1269C2:  LDR             R4, [R0]; dword_23DF24
1269C4:  MOV             R0, SP
1269C6:  VLD1.64         {D16-D17}, [R1]
1269CA:  LDR             R1, [R4]
1269CC:  VST1.64         {D16-D17}, [R0,#0x20+var_20]
1269D0:  ADDS            R0, R1, R5
1269D2:  MOVS            R1, #0
1269D4:  STRB            R1, [R0,#0x1C]
1269D6:  LDR             R6, [R4]
1269D8:  LDR             R0, [R6,R5]
1269DA:  CBZ             R0, loc_1269E0
1269DC:  MOV             R1, R6
1269DE:  B               loc_1269EE
1269E0:  MOV.W           R0, #0x12C
1269E4:  MOVS            R1, #0x2C ; ','
1269E6:  BL              sub_F613C
1269EA:  LDR             R1, [R4]
1269EC:  STR             R0, [R5,R6]
1269EE:  LDR             R0, =(aGeneric_0 - 0x1269FE); "generic" ...
1269F0:  MOV             R2, #0x2E2131
1269F8:  ADD             R1, R2
1269FA:  ADD             R0, PC; "generic"
1269FC:  BLX             R1
1269FE:  LDR             R0, [R4]
126A00:  MOV             R6, #0x40DB75
126A08:  ADDS            R1, R0, R6
126A0A:  MOVS            R0, #0x28 ; '('
126A0C:  BLX             R1
126A0E:  LDR             R1, [R4]
126A10:  ADDS            R2, R5, R1
126A12:  ADD             R1, R6
126A14:  ADD.W           R3, R1, #0x94
126A18:  MOV             R1, SP
126A1A:  STR             R0, [R2,#8]
126A1C:  MOVS            R2, #3
126A1E:  BLX             R3
126A20:  ADD             SP, SP, #0x10
126A22:  POP.W           {R11}
126A26:  POP             {R4-R7,PC}
