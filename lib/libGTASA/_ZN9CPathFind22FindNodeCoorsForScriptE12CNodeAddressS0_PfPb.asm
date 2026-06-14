; =========================================================
; Game Engine Function: _ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressS0_PfPb
; Address            : 0x318F98 - 0x3191CA
; =========================================================

318F98:  PUSH            {R4-R7,LR}
318F9A:  ADD             R7, SP, #0xC
318F9C:  PUSH.W          {R8-R11}
318FA0:  SUB             SP, SP, #4
318FA2:  VPUSH           {D8}
318FA6:  SUB             SP, SP, #0x10
318FA8:  LDR.W           LR, [R7,#arg_4]
318FAC:  MOV             R4, R0
318FAE:  UXTH            R6, R2
318FB0:  MOVW            R5, #0xFFFF
318FB4:  CMP             R6, R5
318FB6:  BEQ.W           loc_31916A
318FBA:  UXTH            R0, R3
318FBC:  CMP             R0, R5
318FBE:  ITTT NE
318FC0:  ADDNE.W         R6, R1, R6,LSL#2
318FC4:  LDRNE.W         R5, [R6,#0x804]
318FC8:  CMPNE           R5, #0
318FCA:  BEQ.W           loc_31916A
318FCE:  ADD.W           R12, R1, R0,LSL#2
318FD2:  LDR.W           R1, [R12,#0x804]
318FD6:  CMP             R1, #0
318FD8:  BEQ.W           loc_31916A
318FDC:  CMP.W           LR, #0
318FE0:  VMOV.F32        S16, #0.125
318FE4:  ITTTT NE
318FE6:  ADDWNE          R0, R6, #0x804
318FEA:  ADDWNE          R1, R12, #0x804
318FEE:  MOVNE           R6, #1
318FF0:  STRBNE.W        R6, [LR]
318FF4:  LDR.W           R9, [R7,#arg_0]
318FF8:  ITT NE
318FFA:  LDRNE           R1, [R1]
318FFC:  LDRNE           R5, [R0]
318FFE:  LSRS            R0, R2, #0x10
319000:  LSLS            R0, R0, #3
319002:  SUB.W           R0, R0, R2,LSR#16
319006:  LSRS            R2, R3, #0x10
319008:  LSLS            R2, R2, #3
31900A:  SUB.W           R2, R2, R3,LSR#16
31900E:  ADD.W           R5, R5, R0,LSL#2
319012:  ADD.W           R6, R1, R2,LSL#2
319016:  MOV             R8, R5
319018:  MOV             R10, R5
31901A:  LDRSH.W         R0, [R8,#8]!
31901E:  LDRSH.W         R1, [R6,#8]!
319022:  LDRSH.W         R2, [R10,#0xA]!
319026:  VMOV            S0, R0
31902A:  MOV             R11, R6
31902C:  VMOV            S2, R1
319030:  VMOV            S4, R2
319034:  VCVT.F32.S32    S0, S0
319038:  VCVT.F32.S32    S2, S2
31903C:  VCVT.F32.S32    S4, S4
319040:  LDRSH.W         R0, [R11,#2]!
319044:  VMOV            S6, R0
319048:  VCVT.F32.S32    S6, S6
31904C:  VMUL.F32        S0, S0, S16
319050:  VMUL.F32        S2, S2, S16
319054:  VMUL.F32        S4, S4, S16
319058:  VMUL.F32        S6, S6, S16
31905C:  VSUB.F32        S0, S2, S0
319060:  VSUB.F32        S2, S6, S4
319064:  VMOV            R0, S0
319068:  VMOV            R1, S2; x
31906C:  EOR.W           R0, R0, #0x80000000; y
319070:  BLX             atan2f
319074:  VLDR            S0, =180.0
319078:  VMOV            S2, R0
31907C:  VMUL.F32        S0, S2, S0
319080:  VLDR            S2, =3.1416
319084:  VDIV.F32        S0, S0, S2
319088:  VSTR            S0, [R9]
31908C:  LDRB.W          R0, [R5,#0x16]!
319090:  SUB.W           R9, R5, #0xA
319094:  CMP             R0, #0
319096:  BEQ             loc_31918C
319098:  LDRSH.W         R0, [R8]
31909C:  LDRSH.W         R1, [R6]
3190A0:  VMOV            S0, R0
3190A4:  VMOV            S2, R1
3190A8:  VCVT.F32.S32    S0, S0
3190AC:  VCVT.F32.S32    S2, S2
3190B0:  VMUL.F32        S0, S0, S16
3190B4:  VMUL.F32        S2, S2, S16
3190B8:  VSUB.F32        S0, S2, S0
3190BC:  VSTR            S0, [SP,#0x38+var_34]
3190C0:  LDRSH.W         R0, [R10]
3190C4:  LDRSH.W         R1, [R11]
3190C8:  VMOV            S0, R0
3190CC:  ADD             R0, SP, #0x38+var_34; this
3190CE:  VMOV            S2, R1
3190D2:  VCVT.F32.S32    S0, S0
3190D6:  VCVT.F32.S32    S2, S2
3190DA:  VMUL.F32        S0, S0, S16
3190DE:  VMUL.F32        S2, S2, S16
3190E2:  VSUB.F32        S0, S2, S0
3190E6:  VSTR            S0, [SP,#0x38+var_30]
3190EA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3190EE:  LDRB            R0, [R5]
3190F0:  VLDR            S2, =0.0625
3190F4:  VLDR            S12, =0.0
3190F8:  VMOV            S0, R0
3190FC:  VCVT.F32.U32    S0, S0
319100:  LDRSH.W         R0, [R10]
319104:  LDRSH.W         R1, [R8]
319108:  VMOV            S4, R0
31910C:  VMOV            S6, R1
319110:  VCVT.F32.S32    S4, S4
319114:  VCVT.F32.S32    S6, S6
319118:  LDRSH.W         R0, [R9]
31911C:  VMUL.F32        S0, S0, S2
319120:  VLDR            S2, =2.7
319124:  VMUL.F32        S4, S4, S16
319128:  VMUL.F32        S6, S6, S16
31912C:  VADD.F32        S0, S0, S2
319130:  VMOV            S2, R0
319134:  VCVT.F32.S32    S2, S2
319138:  VLDR            S8, [SP,#0x38+var_34]
31913C:  VLDR            S10, [SP,#0x38+var_30]
319140:  VMUL.F32        S8, S8, S0
319144:  VMUL.F32        S10, S10, S0
319148:  VMUL.F32        S0, S0, S12
31914C:  VMUL.F32        S2, S2, S16
319150:  VSUB.F32        S4, S4, S8
319154:  VADD.F32        S6, S6, S10
319158:  VADD.F32        S0, S2, S0
31915C:  VSTR            S6, [R4]
319160:  VSTR            S4, [R4,#4]
319164:  VSTR            S0, [R4,#8]
319168:  B               loc_31917E
31916A:  CMP.W           LR, #0
31916E:  ITT NE
319170:  MOVNE           R0, #0
319172:  STRBNE.W        R0, [LR]
319176:  MOVS            R0, #0
319178:  STRD.W          R0, R0, [R4]
31917C:  STR             R0, [R4,#8]
31917E:  ADD             SP, SP, #0x10
319180:  VPOP            {D8}
319184:  ADD             SP, SP, #4
319186:  POP.W           {R8-R11}
31918A:  POP             {R4-R7,PC}
31918C:  LDRSH.W         R0, [R10]
319190:  LDRSH.W         R1, [R8]
319194:  VMOV            S0, R0
319198:  VMOV            S2, R1
31919C:  VCVT.F32.S32    S0, S0
3191A0:  LDRSH.W         R0, [R9]
3191A4:  VCVT.F32.S32    S2, S2
3191A8:  VMOV            S4, R0
3191AC:  VCVT.F32.S32    S4, S4
3191B0:  VMUL.F32        S0, S0, S16
3191B4:  VMUL.F32        S2, S2, S16
3191B8:  VMUL.F32        S4, S4, S16
3191BC:  VSTR            S2, [R4]
3191C0:  VSTR            S0, [R4,#4]
3191C4:  VSTR            S4, [R4,#8]
3191C8:  B               loc_31917E
