; =========================================================
; Game Engine Function: sub_DE234
; Address            : 0xDE234 - 0xDE2C8
; =========================================================

DE234:  PUSH            {R4-R7,LR}
DE236:  ADD             R7, SP, #0xC
DE238:  PUSH.W          {R11}
DE23C:  SUB             SP, SP, #0x30
DE23E:  VMOV            S0, R1
DE242:  MOVS            R6, #0
DE244:  MOV             R4, R0
DE246:  CMP.W           R1, #0xFFFFFFFF
DE24A:  STRD.W          R6, R6, [SP,#0x40+var_18]
DE24E:  BGT             loc_DE25E
DE250:  VNEG.F32        S0, S0
DE254:  MOV.W           R6, #0x100
DE258:  STR             R6, [SP,#0x40+var_14]
DE25A:  VMOV            R1, S0
DE25E:  LDR             R0, =(unk_91DD0 - 0xDE264)
DE260:  ADD             R0, PC; unk_91DD0
DE262:  VLD1.64         {D16-D17}, [R0]
DE266:  ADD             R0, SP, #0x40+var_28
DE268:  VST1.64         {D16-D17}, [R0]
DE26C:  AND.W           R0, R1, #0x7F800000
DE270:  CMP.W           R0, #0x7F800000
DE274:  BNE             loc_DE2A2
DE276:  ADD             R0, SP, #0x40+var_18
DE278:  MOV.W           R1, #0x1000000
DE27C:  MOV.W           R2, #0x20000000
DE280:  STR             R0, [SP,#0x40+var_38]
DE282:  STRD.W          R2, R1, [SP,#0x40+var_40]
DE286:  VCMP.F32        S0, S0
DE28A:  MOVS            R1, #0
DE28C:  MOV             R0, R4
DE28E:  MOVS            R2, #0
DE290:  MOV.W           R3, #0xFFFFFFFF
DE294:  VMRS            APSR_nzcv, FPSCR
DE298:  IT VS
DE29A:  MOVVS           R1, #1
DE29C:  BL              sub_DE2CC
DE2A0:  B               loc_DE2C0
DE2A2:  VMOV            R1, S0
DE2A6:  ADD             R5, SP, #0x40+var_30
DE2A8:  MOV             R0, R5
DE2AA:  BLX             j__ZN3fmt2v86detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_; fmt::v8::detail::dragonbox::to_decimal<float>(float)
DE2AE:  MOVS            R0, #0
DE2B0:  ADD             R2, SP, #0x40+var_28; int
DE2B2:  STRD.W          R6, R0, [SP,#0x40+var_40]; int
DE2B6:  MOV             R0, R4; int
DE2B8:  MOV             R1, R5; int
DE2BA:  MOVS            R3, #0; int
DE2BC:  BL              sub_DE3F0
DE2C0:  ADD             SP, SP, #0x30 ; '0'
DE2C2:  POP.W           {R11}
DE2C6:  POP             {R4-R7,PC}
