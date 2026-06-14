; =========================================================
; Game Engine Function: _ZN21CModelInfoAccelerator8GetEntryEPP14CBaseModelInfoPiPc
; Address            : 0x38654E - 0x38659A
; =========================================================

38654E:  PUSH            {R4-R7,LR}
386550:  ADD             R7, SP, #0xC
386552:  PUSH.W          {R11}
386556:  MOV             R4, R0
386558:  MOV             R5, R2
38655A:  LDRB            R0, [R4,#0x1B]
38655C:  MOV             R6, R1
38655E:  CBZ             R0, loc_386572
386560:  MOV             R0, R4; this
386562:  MOV             R1, R3; CModelInfoAccelerator *
386564:  MOV             R2, R5; char *
386566:  BLX             j__ZN10CModelInfo16GetModelInfoFastEP21CModelInfoAcceleratorPKcPi; CModelInfo::GetModelInfoFast(CModelInfoAccelerator *,char const*,int *)
38656A:  STR             R0, [R6]
38656C:  POP.W           {R11}
386570:  POP             {R4-R7,PC}
386572:  MOV             R0, R3; this
386574:  MOV             R1, R5; char *
386576:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
38657A:  STR             R0, [R6]
38657C:  CMP             R0, #0
38657E:  LDRH            R0, [R4,#4]
386580:  LDR             R1, [R4]
386582:  ITE EQ
386584:  MOVWEQ          R2, #0xFFFF
386588:  LDRNE           R2, [R5]
38658A:  STRH.W          R2, [R1,R0,LSL#1]
38658E:  LDRH            R0, [R4,#4]
386590:  ADDS            R0, #1
386592:  STRH            R0, [R4,#4]
386594:  POP.W           {R11}
386598:  POP             {R4-R7,PC}
