; =========================================================
; Game Engine Function: _ZN6CRopes6RenderEv
; Address            : 0x413D5C - 0x413E3C
; =========================================================

413D5C:  PUSH            {R7,LR}
413D5E:  MOV             R7, SP
413D60:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413D66)
413D62:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413D64:  LDR             R0, [R0]; CRopes::aRopes ...
413D66:  LDRB.W          R0, [R0,#(byte_9631BD - 0x962E98)]
413D6A:  CBZ             R0, loc_413D76
413D6C:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413D72)
413D6E:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413D70:  LDR             R0, [R0]; this
413D72:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413D76:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413D7C)
413D78:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413D7A:  LDR             R0, [R0]; CRopes::aRopes ...
413D7C:  LDRB.W          R0, [R0,#(byte_9634E5 - 0x962E98)]
413D80:  CBZ             R0, loc_413D90
413D82:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413D88)
413D84:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413D86:  LDR             R0, [R0]; CRopes::aRopes ...
413D88:  ADD.W           R0, R0, #0x328; this
413D8C:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413D90:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413D96)
413D92:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413D94:  LDR             R0, [R0]; CRopes::aRopes ...
413D96:  LDRB.W          R0, [R0,#(byte_96380D - 0x962E98)]
413D9A:  CBZ             R0, loc_413DAA
413D9C:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DA2)
413D9E:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DA0:  LDR             R0, [R0]; CRopes::aRopes ...
413DA2:  ADD.W           R0, R0, #0x650; this
413DA6:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413DAA:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DB0)
413DAC:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DAE:  LDR             R0, [R0]; CRopes::aRopes ...
413DB0:  LDRB.W          R0, [R0,#(byte_963B35 - 0x962E98)]
413DB4:  CBZ             R0, loc_413DC4
413DB6:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DBC)
413DB8:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DBA:  LDR             R0, [R0]; CRopes::aRopes ...
413DBC:  ADDW            R0, R0, #0x978; this
413DC0:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413DC4:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DCA)
413DC6:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DC8:  LDR             R0, [R0]; CRopes::aRopes ...
413DCA:  LDRB.W          R0, [R0,#(byte_963E5D - 0x962E98)]
413DCE:  CBZ             R0, loc_413DDE
413DD0:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DD6)
413DD2:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DD4:  LDR             R0, [R0]; CRopes::aRopes ...
413DD6:  ADD.W           R0, R0, #0xCA0; this
413DDA:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413DDE:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DE8)
413DE0:  MOVW            R1, #(byte_964185 - 0x962E98)
413DE4:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DE6:  LDR             R0, [R0]; CRopes::aRopes ...
413DE8:  LDRB            R0, [R0,R1]
413DEA:  CBZ             R0, loc_413DFA
413DEC:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413DF2)
413DEE:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413DF0:  LDR             R0, [R0]; CRopes::aRopes ...
413DF2:  ADDW            R0, R0, #0xFC8; this
413DF6:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413DFA:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413E04)
413DFC:  MOVW            R1, #(byte_9644AD - 0x962E98)
413E00:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413E02:  LDR             R0, [R0]; CRopes::aRopes ...
413E04:  LDRB            R0, [R0,R1]
413E06:  CBZ             R0, loc_413E18
413E08:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413E12)
413E0A:  MOVW            R1, #0x12F0
413E0E:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413E10:  LDR             R0, [R0]; CRopes::aRopes ...
413E12:  ADD             R0, R1; this
413E14:  BLX             j__ZN5CRope6RenderEv; CRope::Render(void)
413E18:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413E22)
413E1A:  MOVW            R1, #(byte_9647D5 - 0x962E98)
413E1E:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413E20:  LDR             R0, [R0]; CRopes::aRopes ...
413E22:  LDRB            R0, [R0,R1]
413E24:  CMP             R0, #0
413E26:  IT EQ
413E28:  POPEQ           {R7,PC}
413E2A:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x413E34)
413E2C:  MOVW            R1, #0x1618
413E30:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
413E32:  LDR             R0, [R0]; CRopes::aRopes ...
413E34:  ADD             R0, R1; this
413E36:  POP.W           {R7,LR}
413E3A:  B               _ZN5CRope6RenderEv; CRope::Render(void)
