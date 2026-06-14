; =========================================================
; Game Engine Function: sub_15474C
; Address            : 0x15474C - 0x1547C4
; =========================================================

15474C:  PUSH            {R4,R6,R7,LR}
15474E:  ADD             R7, SP, #8
154750:  LDR             R4, =(_ZTV11AudioPlugin - 0x154764); `vtable for'AudioPlugin ...
154752:  MOVS            R3, #1
154754:  STRH.W          R3, [R0,#0x7C]
154758:  MOV.W           R3, #0x3F800000
15475C:  MOVW            R2, #0x2710
154760:  ADD             R4, PC; `vtable for'AudioPlugin
154762:  VMOV.I32        Q8, #0
154766:  STRD.W          R2, R3, [R0,#0x70]
15476A:  ADD.W           R2, R4, #8
15476E:  STR             R2, [R0]
154770:  ADD.W           R2, R0, #0x40 ; '@'
154774:  MOVS            R1, #0
154776:  VST1.64         {D16-D17}, [R2]!
15477A:  STR             R3, [R2]
15477C:  ADD.W           R2, R0, #0x2C ; ','
154780:  VST1.32         {D16-D17}, [R2]!
154784:  STR             R3, [R2]
154786:  ADD.W           R2, R0, #0x18
15478A:  VST1.64         {D16-D17}, [R2]!
15478E:  STR             R3, [R2]
154790:  MOV             R2, R0
154792:  STR.W           R1, [R2,#0x8C]!
154796:  STRD.W          R1, R1, [R0,#4]
15479A:  STR.W           R1, [R0,#0x90]
15479E:  STRB.W          R1, [R0,#0x84]
1547A2:  STR.W           R1, [R0,#0x80]
1547A6:  STRB.W          R1, [R0,#0x7E]
1547AA:  STR             R3, [R0,#0x78]
1547AC:  STR             R1, [R0,#0x68]
1547AE:  STRB.W          R1, [R0,#0x60]
1547B2:  STRD.W          R1, R1, [R0,#0x58]
1547B6:  STRB.W          R1, [R0,#0x54]
1547BA:  STRD.W          R1, R1, [R0,#0xC]
1547BE:  STR.W           R2, [R0,#0x88]
1547C2:  POP             {R4,R6,R7,PC}
