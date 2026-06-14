; =========================================================
; Game Engine Function: sub_8AFEC
; Address            : 0x8AFEC - 0x8B07C
; =========================================================

8AFEC:  PUSH            {R7,LR}
8AFEE:  MOV             R7, SP
8AFF0:  LDR             R2, =(dword_1ACF68 - 0x8B002)
8AFF2:  MOVW            R3, #0x1AB4
8AFF6:  LDR.W           R12, [R1,#0x130]
8AFFA:  MOVW            LR, #0x19F8
8AFFE:  ADD             R2, PC; dword_1ACF68
8B000:  LDR             R2, [R2]
8B002:  LDR             R3, [R2,R3]
8B004:  ADD             R2, LR
8B006:  CMP             R3, R1
8B008:  ITT NE
8B00A:  MOVNE           R3, #0
8B00C:  STRBNE.W        R3, [R2,#0x121]
8B010:  ADD.W           R3, R1, R12,LSL#2
8B014:  STR.W           R0, [R2,#0xC0]
8B018:  STR.W           R12, [R2,#0x114]
8B01C:  STR.W           R0, [R3,#0x30C]
8B020:  LDR.W           R3, [R1,#0x108]
8B024:  STR.W           R1, [R2,#0xBC]
8B028:  CMP             R3, R0
8B02A:  BNE             loc_8B068
8B02C:  VLDR            S0, [R1,#0xC]
8B030:  ADD.W           R0, R1, R12,LSL#4
8B034:  VLDR            S8, [R1,#0x118]
8B038:  VLDR            S2, [R1,#0x10]
8B03C:  VLDR            S10, [R1,#0x11C]
8B040:  VSUB.F32        S8, S8, S0
8B044:  VLDR            S4, [R1,#0x110]
8B048:  VLDR            S6, [R1,#0x114]
8B04C:  VSUB.F32        S10, S10, S2
8B050:  VSUB.F32        S0, S4, S0
8B054:  VSUB.F32        S2, S6, S2
8B058:  VSTR            S8, [R0,#0x31C]
8B05C:  VSTR            S10, [R0,#0x320]
8B060:  VSTR            S0, [R0,#0x314]
8B064:  VSTR            S2, [R0,#0x318]
8B068:  LDR             R0, [R2]
8B06A:  CMP             R0, #2
8B06C:  MOV.W           R0, #1
8B070:  ITE NE
8B072:  STRBNE.W        R0, [R2,#0x11E]
8B076:  STRBEQ.W        R0, [R2,#0x11F]
8B07A:  POP             {R7,PC}
