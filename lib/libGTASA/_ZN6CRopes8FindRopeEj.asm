; =========================================================
; Game Engine Function: _ZN6CRopes8FindRopeEj
; Address            : 0x414F38 - 0x415010
; =========================================================

414F38:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414F3E)
414F3A:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414F3C:  LDR             R1, [R1]; CRopes::aRopes ...
414F3E:  LDRB.W          R2, [R1,#(byte_9631BD - 0x962E98)]
414F42:  CBZ             R2, loc_414F50
414F44:  LDR.W           R1, [R1,#(dword_963198 - 0x962E98)]
414F48:  CMP             R1, R0
414F4A:  ITT EQ
414F4C:  MOVEQ           R0, #0
414F4E:  BXEQ            LR
414F50:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414F56)
414F52:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414F54:  LDR             R1, [R1]; CRopes::aRopes ...
414F56:  LDRB.W          R2, [R1,#(byte_9634E5 - 0x962E98)]
414F5A:  CBZ             R2, loc_414F68
414F5C:  LDR.W           R1, [R1,#(dword_9634C0 - 0x962E98)]
414F60:  CMP             R1, R0
414F62:  ITT EQ
414F64:  MOVEQ           R0, #1
414F66:  BXEQ            LR
414F68:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414F6E)
414F6A:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414F6C:  LDR             R1, [R1]; CRopes::aRopes ...
414F6E:  LDRB.W          R2, [R1,#(byte_96380D - 0x962E98)]
414F72:  CBZ             R2, loc_414F80
414F74:  LDR.W           R1, [R1,#(dword_9637E8 - 0x962E98)]
414F78:  CMP             R1, R0
414F7A:  ITT EQ
414F7C:  MOVEQ           R0, #2
414F7E:  BXEQ            LR
414F80:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414F86)
414F82:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414F84:  LDR             R1, [R1]; CRopes::aRopes ...
414F86:  LDRB.W          R2, [R1,#(byte_963B35 - 0x962E98)]
414F8A:  CBZ             R2, loc_414F98
414F8C:  LDR.W           R1, [R1,#(dword_963B10 - 0x962E98)]
414F90:  CMP             R1, R0
414F92:  ITT EQ
414F94:  MOVEQ           R0, #3
414F96:  BXEQ            LR
414F98:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414F9E)
414F9A:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414F9C:  LDR             R1, [R1]; CRopes::aRopes ...
414F9E:  LDRB.W          R2, [R1,#(byte_963E5D - 0x962E98)]
414FA2:  CBZ             R2, loc_414FB0
414FA4:  LDR.W           R1, [R1,#(dword_963E38 - 0x962E98)]
414FA8:  CMP             R1, R0
414FAA:  ITT EQ
414FAC:  MOVEQ           R0, #4
414FAE:  BXEQ            LR
414FB0:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414FBA)
414FB2:  MOVW            R2, #(byte_964185 - 0x962E98)
414FB6:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414FB8:  LDR             R1, [R1]; CRopes::aRopes ...
414FBA:  LDRB            R2, [R1,R2]
414FBC:  CBZ             R2, loc_414FCC
414FBE:  MOVW            R2, #(dword_964160 - 0x962E98)
414FC2:  LDR             R1, [R1,R2]
414FC4:  CMP             R1, R0
414FC6:  ITT EQ
414FC8:  MOVEQ           R0, #5
414FCA:  BXEQ            LR
414FCC:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414FD6)
414FCE:  MOVW            R2, #(byte_9644AD - 0x962E98)
414FD2:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414FD4:  LDR             R1, [R1]; CRopes::aRopes ...
414FD6:  LDRB            R2, [R1,R2]
414FD8:  CBZ             R2, loc_414FE8
414FDA:  MOVW            R2, #(dword_964488 - 0x962E98)
414FDE:  LDR             R1, [R1,R2]
414FE0:  CMP             R1, R0
414FE2:  ITT EQ
414FE4:  MOVEQ           R0, #6
414FE6:  BXEQ            LR
414FE8:  LDR             R1, =(_ZN6CRopes6aRopesE_ptr - 0x414FFA)
414FEA:  MOVW            R2, #(dword_9647B0 - 0x962E98)
414FEE:  MOVW            R3, #(byte_9647D5 - 0x962E98)
414FF2:  MOV.W           R12, #0xFFFFFFFF
414FF6:  ADD             R1, PC; _ZN6CRopes6aRopesE_ptr
414FF8:  LDR             R1, [R1]; CRopes::aRopes ...
414FFA:  LDR             R2, [R1,R2]
414FFC:  LDRB            R1, [R1,R3]
414FFE:  CMP             R2, R0
415000:  MOV.W           R0, #0xFFFFFFFF
415004:  IT EQ
415006:  MOVEQ           R0, #7
415008:  CMP             R1, #0
41500A:  IT EQ
41500C:  MOVEQ           R0, R12
41500E:  BX              LR
