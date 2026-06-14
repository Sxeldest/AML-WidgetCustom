; =========================================================
; Game Engine Function: _ZN9CMessages23ClearPreviousBriefArrayEv
; Address            : 0x54B6A0 - 0x54B6DE
; =========================================================

54B6A0:  PUSH            {R7,LR}
54B6A2:  MOV             R7, SP
54B6A4:  LDR             R2, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54B6AE)
54B6A6:  MOVS            R1, #0
54B6A8:  LDR             R0, =(SkipBriefsClear_ptr - 0x54B6B0)
54B6AA:  ADD             R2, PC; _ZN9CMessages14PreviousBriefsE_ptr
54B6AC:  ADD             R0, PC; SkipBriefsClear_ptr
54B6AE:  LDR.W           R12, [R2]; CMessages::PreviousBriefs ...
54B6B2:  LDR             R2, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54B6BA)
54B6B4:  LDR             R0, [R0]; SkipBriefsClear
54B6B6:  ADD             R2, PC; _ZN9CMessages14PreviousBriefsE_ptr
54B6B8:  LDR             R3, [R2]; CMessages::PreviousBriefs ...
54B6BA:  MOVS            R2, #0
54B6BC:  LDRB.W          LR, [R0]
54B6C0:  CMP.W           LR, #0
54B6C4:  ADD.W           R0, R3, R2
54B6C8:  IT EQ
54B6CA:  STRBEQ.W        R1, [R12,R2]
54B6CE:  ADDS            R2, #0x28 ; '('
54B6D0:  CMP.W           R2, #0x320
54B6D4:  STR             R1, [R0,#0x24]
54B6D6:  STR             R1, [R0,#8]
54B6D8:  IT EQ
54B6DA:  POPEQ           {R7,PC}
54B6DC:  B               loc_54B6C0
