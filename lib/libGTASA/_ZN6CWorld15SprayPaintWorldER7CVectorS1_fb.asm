; =========================================================
; Game Engine Function: _ZN6CWorld15SprayPaintWorldER7CVectorS1_fb
; Address            : 0x42B0AC - 0x42B188
; =========================================================

42B0AC:  PUSH            {R4-R7,LR}
42B0AE:  ADD             R7, SP, #0xC
42B0B0:  PUSH.W          {R8-R11}
42B0B4:  SUB             SP, SP, #0x64
42B0B6:  ADD.W           R10, SP, #0x80+var_5C
42B0BA:  STR             R3, [SP,#0x80+var_64]; bool
42B0BC:  MOVS            R3, #(byte_9+6)
42B0BE:  MOV             R9, R1
42B0C0:  STRD.W          R3, R10, [SP,#0x80+var_80]; __int16 *
42B0C4:  MOVS            R4, #0
42B0C6:  MOVS            R1, #(stderr+1)
42B0C8:  SUB.W           R3, R7, #-var_5E; bool
42B0CC:  STRD.W          R1, R4, [SP,#0x80+var_78]; CEntity **
42B0D0:  MOV             R1, R2; CVector *
42B0D2:  MOVS            R2, #0; float
42B0D4:  STRD.W          R4, R4, [SP,#0x80+var_70]; bool
42B0D8:  STR             R4, [SP,#0x80+var_68]; bool
42B0DA:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
42B0DE:  LDRSH.W         R6, [R7,#var_5E]
42B0E2:  CMP             R6, #1
42B0E4:  BLT             loc_42B17E
42B0E6:  MOV.W           R11, #0
42B0EA:  MOVS            R5, #0
42B0EC:  LDR.W           R0, [R10,R4,LSL#2]; this
42B0F0:  BLX             j__ZN11CTagManager5IsTagEPK7CEntity; CTagManager::IsTag(CEntity const*)
42B0F4:  CMP             R0, #1
42B0F6:  BNE             loc_42B16C
42B0F8:  LDR.W           R5, [R10,R4,LSL#2]
42B0FC:  LDR             R1, [R5,#0x14]
42B0FE:  CBZ             R1, loc_42B104
42B100:  MOV             R0, R5
42B102:  B               loc_42B118
42B104:  MOV             R0, R5; this
42B106:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42B10A:  LDR             R1, [R5,#0x14]; CMatrix *
42B10C:  ADDS            R0, R5, #4; this
42B10E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42B112:  LDR.W           R0, [R10,R4,LSL#2]; this
42B116:  LDR             R1, [R5,#0x14]
42B118:  VLDR            D16, [R1,#0x10]
42B11C:  LDR             R1, [R1,#0x18]; CEntity *
42B11E:  STR.W           R1, [R9,#8]
42B122:  VSTR            D16, [R9]
42B126:  BLX             j__ZN11CTagManager8GetAlphaEP7CEntity; CTagManager::GetAlpha(CEntity *)
42B12A:  MOV             R5, R0
42B12C:  LDR             R0, [SP,#0x80+var_64]
42B12E:  CMP             R0, #1
42B130:  BNE             loc_42B140
42B132:  ADD.W           R8, R5, #8
42B136:  CMP.W           R8, #0xFF
42B13A:  IT CS
42B13C:  MOVCS.W         R8, #0xFF
42B140:  LDR.W           R0, [R10,R4,LSL#2]; this
42B144:  UXTB.W          R1, R8; CEntity *
42B148:  BLX             j__ZN11CTagManager8SetAlphaEP7CEntityh; CTagManager::SetAlpha(CEntity *,uchar)
42B14C:  UXTH.W          R0, R8
42B150:  CMP             R0, #0xFF
42B152:  MOV.W           R0, #0
42B156:  MOV.W           R1, #0
42B15A:  IT EQ
42B15C:  MOVEQ           R0, #1
42B15E:  CMP             R5, #0xFF
42B160:  IT NE
42B162:  MOVNE           R1, #1
42B164:  MOVS            R5, #1
42B166:  ANDS            R0, R1
42B168:  ORR.W           R11, R11, R0
42B16C:  ADDS            R4, #1
42B16E:  CMP             R4, R6
42B170:  BLT             loc_42B0EC
42B172:  AND.W           R4, R5, #1
42B176:  MOVS.W          R0, R11,LSL#31
42B17A:  IT NE
42B17C:  MOVNE           R4, #2
42B17E:  MOV             R0, R4
42B180:  ADD             SP, SP, #0x64 ; 'd'
42B182:  POP.W           {R8-R11}
42B186:  POP             {R4-R7,PC}
