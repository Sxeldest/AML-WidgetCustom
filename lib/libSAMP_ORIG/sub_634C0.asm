; =========================================================
; Game Engine Function: sub_634C0
; Address            : 0x634C0 - 0x6350A
; =========================================================

634C0:  PUSH            {R4,R6,R7,LR}
634C2:  ADD             R7, SP, #8
634C4:  BL              sub_6C808
634C8:  CBZ             R0, locret_63508
634CA:  LDR             R0, =(off_114B44 - 0x634D0)
634CC:  ADD             R0, PC; off_114B44
634CE:  LDR             R0, [R0]; byte_1A4480
634D0:  LDRB            R0, [R0]
634D2:  CBZ             R0, loc_634E4
634D4:  LDR             R0, =(off_114B48 - 0x634DC)
634D6:  MOVS            R1, #1
634D8:  ADD             R0, PC; off_114B48
634DA:  LDR             R0, [R0]; dword_1A41D8
634DC:  LDR             R0, [R0]
634DE:  BL              sub_6937C
634E2:  B               loc_634FE
634E4:  LDR             R0, =(off_114AB0 - 0x634EA)
634E6:  ADD             R0, PC; off_114AB0
634E8:  LDR             R0, [R0]; dword_1A4408
634EA:  LDR             R4, [R0]
634EC:  BL              sub_6C808
634F0:  MOVW            R1, #:lower16:unk_13630D
634F4:  LDR             R0, [R0,#0x74]
634F6:  MOVT            R1, #:upper16:unk_13630D
634FA:  ADD             R1, R4
634FC:  BLX             R1
634FE:  LDR             R0, =(off_114B4C - 0x63506)
63500:  MOVS            R1, #1
63502:  ADD             R0, PC; off_114B4C
63504:  LDR             R0, [R0]; dword_1A44CC
63506:  STR             R1, [R0]
63508:  POP             {R4,R6,R7,PC}
