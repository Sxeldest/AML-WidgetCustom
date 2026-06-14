; =========================================================
; Game Engine Function: _ZN6CRopes17SetSpeedOfTopNodeEj7CVector
; Address            : 0x414A4C - 0x414B8E
; =========================================================

414A4C:  PUSH            {R7,LR}
414A4E:  MOV             R7, SP
414A50:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414A58)
414A54:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414A56:  LDR.W           R12, [R12]; CRopes::aRopes ...
414A5A:  LDRB.W          LR, [R12,#(byte_9631BD - 0x962E98)]
414A5E:  CMP.W           LR, #0
414A62:  BEQ             loc_414A72
414A64:  LDR.W           R12, [R12,#(dword_963198 - 0x962E98)]
414A68:  CMP             R12, R0
414A6A:  BNE             loc_414A72
414A6C:  MOV.W           R12, #0
414A70:  B               loc_414B78
414A72:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414A7A)
414A76:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414A78:  LDR.W           R12, [R12]; CRopes::aRopes ...
414A7C:  LDRB.W          LR, [R12,#(byte_9634E5 - 0x962E98)]
414A80:  CMP.W           LR, #0
414A84:  BEQ             loc_414A94
414A86:  LDR.W           R12, [R12,#(dword_9634C0 - 0x962E98)]
414A8A:  CMP             R12, R0
414A8C:  BNE             loc_414A94
414A8E:  MOV.W           R12, #1
414A92:  B               loc_414B78
414A94:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414A9C)
414A98:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414A9A:  LDR.W           R12, [R12]; CRopes::aRopes ...
414A9E:  LDRB.W          LR, [R12,#(byte_96380D - 0x962E98)]
414AA2:  CMP.W           LR, #0
414AA6:  BEQ             loc_414AB6
414AA8:  LDR.W           R12, [R12,#(dword_9637E8 - 0x962E98)]
414AAC:  CMP             R12, R0
414AAE:  BNE             loc_414AB6
414AB0:  MOV.W           R12, #2
414AB4:  B               loc_414B78
414AB6:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414ABE)
414ABA:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414ABC:  LDR.W           R12, [R12]; CRopes::aRopes ...
414AC0:  LDRB.W          LR, [R12,#(byte_963B35 - 0x962E98)]
414AC4:  CMP.W           LR, #0
414AC8:  BEQ             loc_414AD8
414ACA:  LDR.W           R12, [R12,#(dword_963B10 - 0x962E98)]
414ACE:  CMP             R12, R0
414AD0:  BNE             loc_414AD8
414AD2:  MOV.W           R12, #3
414AD6:  B               loc_414B78
414AD8:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414AE0)
414ADC:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414ADE:  LDR.W           R12, [R12]; CRopes::aRopes ...
414AE2:  LDRB.W          LR, [R12,#(byte_963E5D - 0x962E98)]
414AE6:  CMP.W           LR, #0
414AEA:  BEQ             loc_414AFA
414AEC:  LDR.W           R12, [R12,#(dword_963E38 - 0x962E98)]
414AF0:  CMP             R12, R0
414AF2:  BNE             loc_414AFA
414AF4:  MOV.W           R12, #4
414AF8:  B               loc_414B78
414AFA:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414B06)
414AFE:  MOVW            LR, #(byte_964185 - 0x962E98)
414B02:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414B04:  LDR.W           R12, [R12]; CRopes::aRopes ...
414B08:  LDRB.W          LR, [R12,LR]
414B0C:  CMP.W           LR, #0
414B10:  BEQ             loc_414B24
414B12:  MOVW            LR, #(dword_964160 - 0x962E98)
414B16:  LDR.W           R12, [R12,LR]
414B1A:  CMP             R12, R0
414B1C:  BNE             loc_414B24
414B1E:  MOV.W           R12, #5
414B22:  B               loc_414B78
414B24:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414B30)
414B28:  MOVW            LR, #(byte_9644AD - 0x962E98)
414B2C:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414B2E:  LDR.W           R12, [R12]; CRopes::aRopes ...
414B32:  LDRB.W          LR, [R12,LR]
414B36:  CMP.W           LR, #0
414B3A:  BEQ             loc_414B4E
414B3C:  MOVW            LR, #(dword_964488 - 0x962E98)
414B40:  LDR.W           R12, [R12,LR]
414B44:  CMP             R12, R0
414B46:  BNE             loc_414B4E
414B48:  MOV.W           R12, #6
414B4C:  B               loc_414B78
414B4E:  LDR.W           R12, =(_ZN6CRopes6aRopesE_ptr - 0x414B5A)
414B52:  MOVW            LR, #(byte_9647D5 - 0x962E98)
414B56:  ADD             R12, PC; _ZN6CRopes6aRopesE_ptr
414B58:  LDR.W           R12, [R12]; CRopes::aRopes ...
414B5C:  LDRB.W          LR, [R12,LR]
414B60:  CMP.W           LR, #0
414B64:  BEQ             locret_414B8C
414B66:  MOVW            LR, #(dword_9647B0 - 0x962E98)
414B6A:  LDR.W           R12, [R12,LR]
414B6E:  CMP             R12, R0
414B70:  IT NE
414B72:  POPNE           {R7,PC}
414B74:  MOV.W           R12, #7
414B78:  LDR             R0, =(_ZN6CRopes6aRopesE_ptr - 0x414B82)
414B7A:  MOV.W           LR, #0x328
414B7E:  ADD             R0, PC; _ZN6CRopes6aRopesE_ptr
414B80:  LDR             R0, [R0]; CRopes::aRopes ...
414B82:  SMLABB.W        R0, R12, LR, R0
414B86:  ADD.W           R0, R0, #0x180
414B8A:  STM             R0!, {R1-R3}
414B8C:  POP             {R7,PC}
