; =========================================================
; Game Engine Function: sub_1854A8
; Address            : 0x1854A8 - 0x18553A
; =========================================================

1854A8:  PUSH            {R4-R7,LR}
1854AA:  ADD             R7, SP, #0xC
1854AC:  PUSH.W          {R11}
1854B0:  SUB             SP, SP, #0x80
1854B2:  MOV             R4, R1
1854B4:  MOV             R5, R0
1854B6:  BL              sub_186258
1854BA:  MOV             R0, R4
1854BC:  VMOV.I32        Q8, #0
1854C0:  VLD1.32         {D18-D19}, [R0]!
1854C4:  VLD1.32         {D20-D21}, [R0]
1854C8:  ADD             R0, SP, #0x90+var_50
1854CA:  MOV             R1, R0
1854CC:  VST1.64         {D16-D17}, [R1]!
1854D0:  VST1.64         {D16-D17}, [R1]!
1854D4:  VST1.32         {D18-D19}, [R1]!
1854D8:  VST1.32         {D20-D21}, [R1]
1854DC:  MOVS            R1, #0
1854DE:  LDR.W           R2, [R0,R1,LSL#2]
1854E2:  SUBS            R3, R2, #1
1854E4:  STR.W           R3, [R0,R1,LSL#2]
1854E8:  CMP             R3, R2
1854EA:  BCC             loc_1854F4
1854EC:  ADDS            R2, R1, #1
1854EE:  CMP             R1, #0xF
1854F0:  MOV             R1, R2
1854F2:  BNE             loc_1854DE
1854F4:  VLD1.32         {D16-D17}, [R5]!
1854F8:  VMOV.I32        Q10, #0
1854FC:  VLD1.32         {D18-D19}, [R5]
185500:  MOV             R5, SP
185502:  MOV             R6, R5
185504:  MOV             R1, R5; int
185506:  VST1.64         {D16-D17}, [R6]!
18550A:  MOV             R2, R5; int
18550C:  MOV             R0, R6
18550E:  VST1.64         {D18-D19}, [R0]!
185512:  VST1.64         {D20-D21}, [R0]!
185516:  VST1.64         {D20-D21}, [R0]
18551A:  ADD             R0, SP, #0x90+var_50; int
18551C:  MOV             R3, R0
18551E:  BL              sub_186522
185522:  VLD1.64         {D16-D17}, [R5,#0x90+var_90]
185526:  VLD1.64         {D18-D19}, [R6]
18552A:  VST1.32         {D16-D17}, [R4]!
18552E:  VST1.32         {D18-D19}, [R4]
185532:  ADD             SP, SP, #0x80
185534:  POP.W           {R11}
185538:  POP             {R4-R7,PC}
