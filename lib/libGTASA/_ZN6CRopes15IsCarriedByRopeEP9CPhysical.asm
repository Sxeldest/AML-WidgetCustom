; =========================================================
; Game Engine Function: _ZN6CRopes15IsCarriedByRopeEP9CPhysical
; Address            : 0x414DAC - 0x414E72
; =========================================================

414DAC:  CMP             R0, #0
414DAE:  ITT EQ
414DB0:  MOVEQ           R0, #0
414DB2:  BXEQ            LR
414DB4:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414DBA)
414DB6:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414DB8:  LDR             R1, [R1]; CRopes::aRopes ...
414DBA:  LDRB.W          R2, [R1,#(byte_9631BD - 0x962E98)]
414DBE:  CBZ             R2, loc_414DC8
414DC0:  LDR.W           R1, [R1,#(dword_9631B0 - 0x962E98)]
414DC4:  CMP             R1, R0
414DC6:  BEQ             loc_414E48
414DC8:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414DCE)
414DCA:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414DCC:  LDR             R1, [R1]; CRopes::aRopes ...
414DCE:  LDRB.W          R2, [R1,#(byte_9634E5 - 0x962E98)]
414DD2:  CBZ             R2, loc_414DDC
414DD4:  LDR.W           R1, [R1,#(dword_9634D8 - 0x962E98)]
414DD8:  CMP             R1, R0
414DDA:  BEQ             loc_414E48
414DDC:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414DE2)
414DDE:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414DE0:  LDR             R1, [R1]; CRopes::aRopes ...
414DE2:  LDRB.W          R2, [R1,#(byte_96380D - 0x962E98)]
414DE6:  CBZ             R2, loc_414DF0
414DE8:  LDR.W           R1, [R1,#(dword_963800 - 0x962E98)]
414DEC:  CMP             R1, R0
414DEE:  BEQ             loc_414E48
414DF0:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414DF6)
414DF2:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414DF4:  LDR             R1, [R1]; CRopes::aRopes ...
414DF6:  LDRB.W          R2, [R1,#(byte_963B35 - 0x962E98)]
414DFA:  CBZ             R2, loc_414E04
414DFC:  LDR.W           R1, [R1,#(dword_963B28 - 0x962E98)]
414E00:  CMP             R1, R0
414E02:  BEQ             loc_414E48
414E04:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414E0A)
414E06:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414E08:  LDR             R1, [R1]; CRopes::aRopes ...
414E0A:  LDRB.W          R2, [R1,#(byte_963E5D - 0x962E98)]
414E0E:  CBZ             R2, loc_414E18
414E10:  LDR.W           R1, [R1,#(dword_963E50 - 0x962E98)]
414E14:  CMP             R1, R0
414E16:  BEQ             loc_414E48
414E18:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414E22)
414E1A:  MOVW            R2, #(byte_964185 - 0x962E98)
414E1E:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414E20:  LDR             R1, [R1]; CRopes::aRopes ...
414E22:  LDRB            R2, [R1,R2]
414E24:  CBZ             R2, loc_414E30
414E26:  MOV.W           R2, #(dword_964178 - 0x962E98)
414E2A:  LDR             R1, [R1,R2]
414E2C:  CMP             R1, R0
414E2E:  BEQ             loc_414E48
414E30:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414E3A)
414E32:  MOVW            R2, #(byte_9644AD - 0x962E98)
414E36:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414E38:  LDR             R1, [R1]; CRopes::aRopes ...
414E3A:  LDRB            R2, [R1,R2]
414E3C:  CBZ             R2, loc_414E4C
414E3E:  MOVW            R2, #(dword_9644A0 - 0x962E98)
414E42:  LDR             R1, [R1,R2]
414E44:  CMP             R1, R0
414E46:  BNE             loc_414E4C
414E48:  MOVS            R0, #1
414E4A:  BX              LR
414E4C:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414E5A)
414E4E:  MOVW            R2, #(dword_9647C8 - 0x962E98)
414E52:  MOVW            R3, #(byte_9647D5 - 0x962E98)
414E56:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414E58:  LDR             R1, [R1]; CRopes::aRopes ...
414E5A:  LDR             R2, [R1,R2]
414E5C:  LDRB            R1, [R1,R3]
414E5E:  MOVS            R3, #0
414E60:  CMP             R2, R0
414E62:  IT EQ
414E64:  MOVEQ           R3, #1
414E66:  CMP             R1, #0
414E68:  IT NE
414E6A:  MOVNE           R1, #1
414E6C:  AND.W           R0, R1, R3
414E70:  BX              LR
