; =========================================================
; Game Engine Function: _ZN9CPedGroup28FindDistanceToFurthestMemberEv
; Address            : 0x4B7114 - 0x4B718A
; =========================================================

4B7114:  PUSH            {R4,R6,R7,LR}
4B7116:  ADD             R7, SP, #8
4B7118:  LDR.W           LR, [R0,#0x28]
4B711C:  VLDR            S0, =0.0
4B7120:  CMP.W           LR, #0
4B7124:  BEQ             loc_4B7184
4B7126:  ADD.W           R12, R0, #0xC
4B712A:  MOVS            R2, #0
4B712C:  LDR.W           R3, [R12,R2,LSL#2]
4B7130:  CBZ             R3, loc_4B717E
4B7132:  LDR.W           R0, [LR,#0x14]
4B7136:  LDR             R1, [R3,#0x14]
4B7138:  ADD.W           R4, R0, #0x30 ; '0'
4B713C:  CMP             R0, #0
4B713E:  IT EQ
4B7140:  ADDEQ.W         R4, LR, #4
4B7144:  ADD.W           R0, R1, #0x30 ; '0'
4B7148:  CMP             R1, #0
4B714A:  VLDR            S2, [R4]
4B714E:  IT EQ
4B7150:  ADDEQ           R0, R3, #4
4B7152:  VLDR            D16, [R4,#4]
4B7156:  VLDR            S4, [R0]
4B715A:  VLDR            D17, [R0,#4]
4B715E:  VSUB.F32        S2, S4, S2
4B7162:  VSUB.F32        D16, D17, D16
4B7166:  VMUL.F32        D2, D16, D16
4B716A:  VMUL.F32        S2, S2, S2
4B716E:  VADD.F32        S2, S2, S4
4B7172:  VADD.F32        S2, S2, S5
4B7176:  VSQRT.F32       S2, S2
4B717A:  VMAX.F32        D0, D0, D1
4B717E:  ADDS            R2, #1
4B7180:  CMP             R2, #7
4B7182:  BNE             loc_4B712C
4B7184:  VMOV            R0, S0
4B7188:  POP             {R4,R6,R7,PC}
