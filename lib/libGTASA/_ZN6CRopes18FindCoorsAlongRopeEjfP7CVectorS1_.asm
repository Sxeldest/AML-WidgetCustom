; =========================================================
; Game Engine Function: _ZN6CRopes18FindCoorsAlongRopeEjfP7CVectorS1_
; Address            : 0x414BB4 - 0x414D7A
; =========================================================

414BB4:  PUSH            {R4,R6,R7,LR}
414BB6:  ADD             R7, SP, #8
414BB8:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414BC0)
414BBC:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414BBE:  LDR.W           R12, [R12]; CRopes::aRopes ...
414BC2:  LDRB.W          LR, [R12,#(byte_9631BD - 0x962E98)]
414BC6:  CMP.W           LR, #0
414BCA:  BEQ             loc_414BDA
414BCC:  LDR.W           R12, [R12,#(dword_963198 - 0x962E98)]
414BD0:  CMP             R12, R0
414BD2:  BNE             loc_414BDA
414BD4:  MOV.W           LR, #0
414BD8:  B               loc_414CBA
414BDA:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414BE0)
414BDC:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414BDE:  LDR.W           R12, [R4]; CRopes::aRopes ...
414BE2:  LDRB.W          R4, [R12,#(byte_9634E5 - 0x962E98)]
414BE6:  CBZ             R4, loc_414BF6
414BE8:  LDR.W           R4, [R12,#(dword_9634C0 - 0x962E98)]
414BEC:  CMP             R4, R0
414BEE:  BNE             loc_414BF6
414BF0:  MOV.W           LR, #1
414BF4:  B               loc_414CBA
414BF6:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414BFC)
414BF8:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414BFA:  LDR.W           R12, [R4]; CRopes::aRopes ...
414BFE:  LDRB.W          R4, [R12,#(byte_96380D - 0x962E98)]
414C02:  CBZ             R4, loc_414C12
414C04:  LDR.W           R4, [R12,#(dword_9637E8 - 0x962E98)]
414C08:  CMP             R4, R0
414C0A:  BNE             loc_414C12
414C0C:  MOV.W           LR, #2
414C10:  B               loc_414CBA
414C12:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414C18)
414C14:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414C16:  LDR.W           R12, [R4]; CRopes::aRopes ...
414C1A:  LDRB.W          R4, [R12,#(byte_963B35 - 0x962E98)]
414C1E:  CBZ             R4, loc_414C2E
414C20:  LDR.W           R4, [R12,#(dword_963B10 - 0x962E98)]
414C24:  CMP             R4, R0
414C26:  BNE             loc_414C2E
414C28:  MOV.W           LR, #3
414C2C:  B               loc_414CBA
414C2E:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414C34)
414C30:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414C32:  LDR.W           R12, [R4]; CRopes::aRopes ...
414C36:  LDRB.W          R4, [R12,#(byte_963E5D - 0x962E98)]
414C3A:  CBZ             R4, loc_414C4A
414C3C:  LDR.W           R4, [R12,#(dword_963E38 - 0x962E98)]
414C40:  CMP             R4, R0
414C42:  BNE             loc_414C4A
414C44:  MOV.W           LR, #4
414C48:  B               loc_414CBA
414C4A:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414C50)
414C4C:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414C4E:  LDR.W           R12, [R4]; CRopes::aRopes ...
414C52:  MOVW            R4, #(byte_964185 - 0x962E98)
414C56:  LDRB.W          R4, [R12,R4]
414C5A:  CBZ             R4, loc_414C6E
414C5C:  MOVW            R4, #(dword_964160 - 0x962E98)
414C60:  LDR.W           R4, [R12,R4]
414C64:  CMP             R4, R0
414C66:  BNE             loc_414C6E
414C68:  MOV.W           LR, #5
414C6C:  B               loc_414CBA
414C6E:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414C74)
414C70:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414C72:  LDR.W           R12, [R4]; CRopes::aRopes ...
414C76:  MOVW            R4, #(byte_9644AD - 0x962E98)
414C7A:  LDRB.W          R4, [R12,R4]
414C7E:  CBZ             R4, loc_414C92
414C80:  MOVW            R4, #(dword_964488 - 0x962E98)
414C84:  LDR.W           R4, [R12,R4]
414C88:  CMP             R4, R0
414C8A:  BNE             loc_414C92
414C8C:  MOV.W           LR, #6
414C90:  B               loc_414CBA
414C92:  LDR             R4, =(_ZN6CRopes6aRopesE_ptr - 0x414C9C)
414C94:  MOV.W           R12, #0
414C98:  ADD             R4, PC; _ZN6CRopes6aRopesE_ptr
414C9A:  LDR.W           LR, [R4]; CRopes::aRopes ...
414C9E:  MOVW            R4, #(byte_9647D5 - 0x962E98)
414CA2:  LDRB.W          R4, [LR,R4]
414CA6:  CMP             R4, #0
414CA8:  BEQ             loc_414D76
414CAA:  MOVW            R4, #(dword_9647B0 - 0x962E98)
414CAE:  LDR.W           R4, [LR,R4]
414CB2:  CMP             R4, R0
414CB4:  BNE             loc_414D76
414CB6:  MOV.W           LR, #7
414CBA:  VLDR            S4, =0.0
414CBE:  VMOV            S0, R1
414CC2:  VMOV.F32        S2, #31.0
414CC6:  VLDR            S6, =0.999
414CCA:  VMAX.F32        D16, D0, D2
414CCE:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x414CDC)
414CD0:  VMOV.F32        S4, #1.0
414CD4:  MOV.W           R12, #0x328
414CD8:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
414CDA:  CMP             R3, #0
414CDC:  VMIN.F32        D0, D16, D3
414CE0:  LDR             R0, [R0]; CRopes::aRopes ...
414CE2:  SMLABB.W        R0, LR, R12, R0
414CE6:  VMUL.F32        S0, S0, S2
414CEA:  VCVT.S32.F32    S2, S0
414CEE:  VMOV            R1, S2
414CF2:  VCVT.F32.S32    S2, S2
414CF6:  VSUB.F32        S0, S0, S2
414CFA:  VSUB.F32        S2, S4, S0
414CFE:  ADD.W           R4, R1, R1,LSL#1
414D02:  ADD.W           R0, R0, R4,LSL#2
414D06:  VLDR            S4, [R0]
414D0A:  VLDR            S6, [R0,#4]
414D0E:  VLDR            S10, [R0,#0xC]
414D12:  VMUL.F32        S4, S2, S4
414D16:  VLDR            S12, [R0,#0x10]
414D1A:  VMUL.F32        S6, S2, S6
414D1E:  VLDR            S8, [R0,#8]
414D22:  VMUL.F32        S10, S0, S10
414D26:  VLDR            S14, [R0,#0x14]
414D2A:  VMUL.F32        S12, S0, S12
414D2E:  VMUL.F32        S2, S2, S8
414D32:  VMUL.F32        S0, S0, S14
414D36:  VADD.F32        S4, S4, S10
414D3A:  VADD.F32        S6, S6, S12
414D3E:  VADD.F32        S0, S2, S0
414D42:  VSTR            S4, [R2]
414D46:  VSTR            S6, [R2,#4]
414D4A:  VSTR            S0, [R2,#8]
414D4E:  BEQ             loc_414D72
414D50:  ADDS            R0, R1, #1
414D52:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414D58)
414D54:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414D56:  ADD.W           R0, R0, R0,LSL#1
414D5A:  LDR             R1, [R1]; CRopes::aRopes ...
414D5C:  SMLABB.W        R1, LR, R12, R1
414D60:  ADD.W           R0, R1, R0,LSL#2
414D64:  VLDR            D16, [R0,#0x180]
414D68:  LDR.W           R0, [R0,#0x188]
414D6C:  STR             R0, [R3,#8]
414D6E:  VSTR            D16, [R3]
414D72:  MOV.W           R12, #1
414D76:  MOV             R0, R12
414D78:  POP             {R4,R6,R7,PC}
