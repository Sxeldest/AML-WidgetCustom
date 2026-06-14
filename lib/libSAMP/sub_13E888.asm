; =========================================================
; Game Engine Function: sub_13E888
; Address            : 0x13E888 - 0x13E91C
; =========================================================

13E888:  PUSH            {R4-R7,LR}
13E88A:  ADD             R7, SP, #0xC
13E88C:  PUSH.W          {R8}
13E890:  MOV             R4, R0
13E892:  ADR             R0, dword_13E920
13E894:  VLD1.64         {D16-D17}, [R0]
13E898:  ADD.W           R6, R4, #0xB0
13E89C:  MOVS            R1, #0x3A ; ':'
13E89E:  MOV.W           R8, #0
13E8A2:  LDR             R0, =(off_234970 - 0x13E8B0)
13E8A4:  MOV             R5, R4
13E8A6:  VST1.32         {D16-D17}, [R6],R1
13E8AA:  MOVS            R1, #0x7F
13E8AC:  ADD             R0, PC; off_234970
13E8AE:  VST1.32         {D16-D17}, [R6],R1
13E8B2:  MOVS            R1, #0x47 ; 'G'
13E8B4:  LDR             R0, [R0]; dword_23DEF0
13E8B6:  STRB.W          R8, [R4,#0x22]
13E8BA:  STRB.W          R8, [R4,#9]
13E8BE:  LDR             R0, [R0]
13E8C0:  VST1.32         {D16-D17}, [R6],R1
13E8C4:  STRB.W          R8, [R5,#0x1A]!
13E8C8:  BL              sub_E35A0
13E8CC:  STR             R0, [R4,#0x1C]
13E8CE:  STR             R5, [R0,#0x58]
13E8D0:  STR.W           R8, [R4,#0x1B4]
13E8D4:  STRB.W          R8, [R4,#0x20]
13E8D8:  STRB.W          R8, [R4,#0x13]
13E8DC:  BL              sub_F0B30
13E8E0:  MOV.W           R1, #0xFFFFFFFF
13E8E4:  VDUP.32         Q8, R0
13E8E8:  STR             R1, [R4,#4]
13E8EA:  ADD.W           R1, R4, #0x1B8
13E8EE:  VST1.32         {D16-D17}, [R1]!
13E8F2:  STR             R0, [R1]
13E8F4:  MOV             R0, R4
13E8F6:  STRB.W          R8, [R6]
13E8FA:  STRB.W          R8, [R4,#0x11]
13E8FE:  STRB.W          R8, [R4,#0x2D]
13E902:  BL              sub_13E934
13E906:  ADD.W           R0, R4, #0x2F ; '/'; int
13E90A:  MOVS            R1, #0x41 ; 'A'; n
13E90C:  BLX             sub_22178C
13E910:  MOVS            R0, #0xFF
13E912:  STRB            R0, [R4,#0x12]
13E914:  MOV             R0, R4
13E916:  POP.W           {R8}
13E91A:  POP             {R4-R7,PC}
