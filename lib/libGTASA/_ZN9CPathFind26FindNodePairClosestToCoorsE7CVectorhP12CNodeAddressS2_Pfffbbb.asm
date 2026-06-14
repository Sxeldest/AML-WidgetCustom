; =========================================================
; Game Engine Function: _ZN9CPathFind26FindNodePairClosestToCoorsE7CVectorhP12CNodeAddressS2_Pfffbbb
; Address            : 0x317FB0 - 0x318292
; =========================================================

317FB0:  PUSH            {R4-R7,LR}
317FB2:  ADD             R7, SP, #0xC
317FB4:  PUSH.W          {R8-R11}
317FB8:  SUB             SP, SP, #4
317FBA:  VPUSH           {D8-D9}
317FBE:  SUB             SP, SP, #0x30
317FC0:  VMOV.F32        S0, #0.125
317FC4:  LDR             R6, [R7,#arg_18]
317FC6:  VMOV.F32        S14, #3.0
317FCA:  LDR             R4, [R7,#arg_0]
317FCC:  VMOV.F32        S1, #-0.125
317FD0:  VLDR            S8, =10000.0
317FD4:  VMOV            S12, R1
317FD8:  VLDR            S2, [R7,#arg_14]
317FDC:  STR             R1, [SP,#0x60+var_58]
317FDE:  MOVW            R1, #0xFFFF
317FE2:  VMOV.I32        D16, #0x3E000000
317FE6:  STR             R1, [SP,#0x60+var_4C]
317FE8:  VMOV            S6, R3
317FEC:  VLDR            S4, [R7,#arg_10]
317FF0:  VMOV            S10, R2
317FF4:  EOR.W           R2, R6, #1
317FF8:  STR             R1, [SP,#0x60+var_54]
317FFA:  MOVW            R1, #0xFFFF
317FFE:  MOVS            R3, #0
318000:  STR             R1, [SP,#0x60+var_50]
318002:  ADD.W           R1, R0, R3,LSL#2
318006:  LDR.W           R11, [R1,#0x804]
31800A:  CMP.W           R11, #0
31800E:  BEQ.W           loc_3181A4
318012:  CMP             R4, #1
318014:  BEQ             loc_318024
318016:  CBNZ            R4, loc_318034
318018:  MOVW            R6, #0x1104
31801C:  ADDS            R5, R1, R6
31801E:  MOV.W           R9, #0
318022:  B               loc_318030
318024:  MOVW            R6, #0x1104
318028:  ADDW            R5, R1, #0xFE4
31802C:  LDR.W           R9, [R1,R6]
318030:  LDR.W           R10, [R5]
318034:  CMP             R9, R10
318036:  BGE.W           loc_3181A4
31803A:  ADDW            R1, R1, #0xA44
31803E:  STR             R3, [SP,#0x60+var_48]
318040:  STRD.W          R9, R1, [SP,#0x60+var_60]
318044:  RSB.W           R1, R9, R9,LSL#3
318048:  ADD.W           R1, R11, R1,LSL#2
31804C:  LDRB            R6, [R1,#0x1A]
31804E:  LDRH            R5, [R1,#0x18]
318050:  ORR.W           R4, R5, R6,LSL#16
318054:  MOVS            R6, #0
318056:  TST.W           R4, #0x20
31805A:  IT EQ
31805C:  MOVEQ           R6, #1
31805E:  ORRS            R6, R2
318060:  BEQ.W           loc_318192
318064:  LDR             R3, [R7,#arg_20]
318066:  UBFX.W          R6, R4, #7, #1
31806A:  CMP             R3, R6
31806C:  BNE.W           loc_318192
318070:  LDRSH.W         R5, [R1,#8]
318074:  ADD             R3, SP, #0x60+var_40
318076:  LDR.W           R6, [R1,#0xA]
31807A:  STR             R6, [SP,#0x60+var_40]
31807C:  VMOV            S3, R5
318080:  VCVT.F32.S32    S3, S3
318084:  VLD1.32         {D17[0]}, [R3@32]
318088:  VMOVL.S16       Q9, D17
31808C:  VCVT.F32.S32    D17, D18
318090:  VMUL.F32        S3, S3, S0
318094:  VMUL.F32        D8, D17, D16
318098:  VSUB.F32        S9, S3, S12
31809C:  VSUB.F32        S5, S17, S6
3180A0:  VSUB.F32        S7, S16, S10
3180A4:  VABS.F32        S9, S9
3180A8:  VABS.F32        S5, S5
3180AC:  VABS.F32        S7, S7
3180B0:  VMUL.F32        S5, S5, S14
3180B4:  VADD.F32        S7, S9, S7
3180B8:  VADD.F32        S5, S7, S5
3180BC:  VCMPE.F32       S5, S8
3180C0:  VMRS            APSR_nzcv, FPSCR
3180C4:  BGE             loc_318192
3180C6:  ANDS.W          R6, R4, #0xF
3180CA:  BEQ             loc_318192
3180CC:  LDR             R3, [SP,#0x60+var_5C]
3180CE:  BIC.W           R4, R6, #0xFF000000
3180D2:  LDRSH.W         R1, [R1,#0x10]
3180D6:  MOV.W           R12, #0
3180DA:  LDR             R5, [R3]
3180DC:  ADD.W           R1, R5, R1,LSL#2
3180E0:  LDR.W           R8, [R1,R12,LSL#2]
3180E4:  UXTH.W          R6, R8
3180E8:  ADD.W           R6, R0, R6,LSL#2
3180EC:  LDR.W           R5, [R6,#0x804]
3180F0:  CMP             R5, #0
3180F2:  BEQ             loc_31818A
3180F4:  MOV.W           LR, R8,LSR#16
3180F8:  MOV.W           R6, LR,LSL#3
3180FC:  SUB.W           R6, R6, R8,LSR#16
318100:  ADD.W           R6, R5, R6,LSL#2
318104:  LDRB            R3, [R6,#0x1A]
318106:  LDRH            R6, [R6,#0x18]
318108:  ORR.W           R6, R6, R3,LSL#16
31810C:  MOVS            R3, #0
31810E:  TST.W           R6, #0x20
318112:  IT EQ
318114:  MOVEQ           R3, #1
318116:  ORRS            R3, R2
318118:  BEQ             loc_31818A
31811A:  UBFX.W          R3, R6, #7, #1
31811E:  LDR             R6, [R7,#arg_20]
318120:  CMP             R6, R3
318122:  BNE             loc_31818A
318124:  RSB.W           R3, LR, LR,LSL#3
318128:  ADD.W           R3, R5, R3,LSL#2
31812C:  LDRSH.W         R5, [R3,#8]
318130:  VMOV            S7, R5
318134:  VCVT.F32.S32    S7, S7
318138:  LDR.W           R3, [R3,#0xA]
31813C:  STR             R3, [SP,#0x60+var_44]
31813E:  ADD             R3, SP, #0x60+var_44
318140:  VLD1.32         {D17[0]}, [R3@32]
318144:  VMOVL.S16       Q9, D17
318148:  VMUL.F32        S7, S7, S1
31814C:  VCVT.F32.S32    D17, D18
318150:  VMUL.F32        D17, D17, D16
318154:  VADD.F32        S7, S3, S7
318158:  VSUB.F32        D17, D8, D17
31815C:  VMUL.F32        S7, S7, S7
318160:  VMUL.F32        D9, D17, D17
318164:  VADD.F32        S7, S7, S18
318168:  VADD.F32        S7, S7, S19
31816C:  VSQRT.F32       S7, S7
318170:  VCMPE.F32       S7, S4
318174:  VMRS            APSR_nzcv, FPSCR
318178:  BLE             loc_31818A
31817A:  VMOV.F32        S8, S5
31817E:  STRD.W          LR, R8, [SP,#0x60+var_54]
318182:  LDR             R3, [SP,#0x60+var_48]
318184:  STR             R3, [SP,#0x60+var_4C]
318186:  STR.W           R9, [SP,#0x60+var_58]
31818A:  ADD.W           R12, R12, #1
31818E:  CMP             R12, R4
318190:  BLT             loc_3180E0
318192:  ADD.W           R9, R9, #1
318196:  CMP             R9, R10
318198:  BNE.W           loc_318044
31819C:  LDR             R4, [R7,#arg_0]
31819E:  LDR             R3, [SP,#0x60+var_48]
3181A0:  LDR.W           R9, [SP,#0x60+var_60]
3181A4:  ADDS            R3, #1
3181A6:  CMP             R3, #0x48 ; 'H'
3181A8:  BNE.W           loc_318002
3181AC:  VCMPE.F32       S8, S2
3181B0:  VMRS            APSR_nzcv, FPSCR
3181B4:  BGE             loc_31826E
3181B6:  LDR             R1, [SP,#0x60+var_58]
3181B8:  ADDW            R0, R0, #0x804
3181BC:  LDR             R3, [R7,#arg_4]
3181BE:  LDR             R5, [SP,#0x60+var_4C]
3181C0:  UXTH            R1, R1
3181C2:  LDR             R6, [R7,#arg_8]
3181C4:  PKHBT.W         R2, R5, R1,LSL#16
3181C8:  STR             R2, [R3]
3181CA:  LDR             R2, [SP,#0x60+var_54]
3181CC:  RSB.W           R1, R1, R1,LSL#3
3181D0:  LDR             R4, [SP,#0x60+var_50]
3181D2:  UXTH            R2, R2
3181D4:  PKHBT.W         R3, R4, R2,LSL#16
3181D8:  STR             R3, [R6]
3181DA:  UXTH            R3, R4
3181DC:  UXTH            R6, R5
3181DE:  LDR.W           R3, [R0,R3,LSL#2]
3181E2:  LDR.W           R0, [R0,R6,LSL#2]
3181E6:  ADD.W           R0, R0, R1,LSL#2
3181EA:  RSB.W           R1, R2, R2,LSL#3
3181EE:  ADD.W           R1, R3, R1,LSL#2
3181F2:  LDRSH.W         R3, [R0,#8]
3181F6:  LDRSH.W         R0, [R0,#0xA]
3181FA:  LDRSH.W         R2, [R1,#8]
3181FE:  LDRSH.W         R1, [R1,#0xA]
318202:  VMOV            S8, R3
318206:  VMOV            S4, R0
31820A:  MOVS            R0, #0
31820C:  VMOV            S6, R2
318210:  VMOV            S2, R1
318214:  VCVT.F32.S32    S2, S2
318218:  VCVT.F32.S32    S4, S4
31821C:  VCVT.F32.S32    S6, S6
318220:  VCVT.F32.S32    S8, S8
318224:  STR             R0, [SP,#0x60+var_34]
318226:  ADD             R0, SP, #0x60+var_3C; this
318228:  VMUL.F32        S2, S2, S0
31822C:  VMUL.F32        S4, S4, S0
318230:  VMUL.F32        S6, S6, S0
318234:  VMUL.F32        S0, S8, S0
318238:  VSUB.F32        S2, S4, S2
31823C:  VSUB.F32        S0, S0, S6
318240:  VSTR            S2, [SP,#0x60+var_38]
318244:  VSTR            S0, [SP,#0x60+var_3C]
318248:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
31824C:  LDRD.W          R0, R1, [SP,#0x60+var_3C]; x
318250:  EOR.W           R0, R0, #0x80000000; y
318254:  BLX             atan2f
318258:  VLDR            S0, =180.0
31825C:  VMOV            S2, R0
318260:  VMUL.F32        S0, S2, S0
318264:  VLDR            S2, =3.1416
318268:  VDIV.F32        S0, S0, S2
31826C:  B               loc_31827E
31826E:  LDR             R0, [R7,#arg_4]
318270:  MOVW            R1, #0xFFFF
318274:  VLDR            S0, =0.0
318278:  STRH            R1, [R0]
31827A:  LDR             R0, [R7,#arg_8]
31827C:  STRH            R1, [R0]
31827E:  LDR             R0, [R7,#arg_C]
318280:  VSTR            S0, [R0]
318284:  ADD             SP, SP, #0x30 ; '0'
318286:  VPOP            {D8-D9}
31828A:  ADD             SP, SP, #4
31828C:  POP.W           {R8-R11}
318290:  POP             {R4-R7,PC}
