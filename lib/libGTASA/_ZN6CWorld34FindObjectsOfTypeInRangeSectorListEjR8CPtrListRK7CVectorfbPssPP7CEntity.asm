; =========================================================
; Game Engine Function: _ZN6CWorld34FindObjectsOfTypeInRangeSectorListEjR8CPtrListRK7CVectorfbPssPP7CEntity
; Address            : 0x429000 - 0x4290B8
; =========================================================

429000:  PUSH            {R4-R7,LR}
429002:  ADD             R7, SP, #0xC
429004:  PUSH.W          {R8-R10}
429008:  LDR             R1, [R1]
42900A:  CMP             R1, #0
42900C:  BEQ             loc_4290B2
42900E:  VMOV            S0, R3
429012:  LDR             R3, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429020)
429014:  LDR.W           R12, [R7,#arg_C]
429018:  VMUL.F32        S0, S0, S0
42901C:  ADD             R3, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42901E:  LDR.W           LR, [R7,#arg_8]
429022:  LDRD.W          R9, R8, [R7,#arg_0]
429026:  LDR.W           R10, [R3]; CWorld::ms_nCurrentScanCode ...
42902A:  LDRD.W          R6, R1, [R1]
42902E:  LDRH.W          R3, [R10]; CWorld::ms_nCurrentScanCode
429032:  LDRH            R4, [R6,#0x30]
429034:  CMP             R4, R3
429036:  BEQ             loc_429094
429038:  LDRSH.W         R4, [R6,#0x26]
42903C:  STRH            R3, [R6,#0x30]
42903E:  CMP             R4, R0
429040:  BNE             loc_429094
429042:  LDR             R3, [R6,#0x14]
429044:  MOV             R4, R2
429046:  VLD1.32         {D16}, [R4]!
42904A:  ADD.W           R5, R3, #0x30 ; '0'
42904E:  CMP             R3, #0
429050:  IT EQ
429052:  ADDEQ           R5, R6, #4
429054:  VLDR            S2, [R4]
429058:  VLD1.32         {D17}, [R5]!
42905C:  CMP.W           R9, #0
429060:  VSUB.F32        D16, D16, D17
429064:  VLDR            S4, [R5]
429068:  VSUB.F32        S2, S2, S4
42906C:  VMUL.F32        D2, D16, D16
429070:  VADD.F32        S4, S4, S5
429074:  VMUL.F32        S2, S2, S2
429078:  VADD.F32        S2, S4, S2
42907C:  IT NE
42907E:  VMOVNE.F32      S2, S4
429082:  VCMPE.F32       S2, S0
429086:  VMRS            APSR_nzcv, FPSCR
42908A:  ITT LT
42908C:  LDRSHLT.W       R3, [R8]
429090:  CMPLT           R3, LR
429092:  BLT             loc_42909A
429094:  CMP             R1, #0
429096:  BNE             loc_42902A
429098:  B               loc_4290B2
42909A:  CMP.W           R12, #0
42909E:  ITT NE
4290A0:  STRNE.W         R6, [R12,R3,LSL#2]
4290A4:  LDRHNE.W        R3, [R8]
4290A8:  ADDS            R3, #1
4290AA:  STRH.W          R3, [R8]
4290AE:  CMP             R1, #0
4290B0:  BNE             loc_42902A
4290B2:  POP.W           {R8-R10}
4290B6:  POP             {R4-R7,PC}
