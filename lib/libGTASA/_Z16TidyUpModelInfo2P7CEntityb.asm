; =========================================================
; Game Engine Function: _Z16TidyUpModelInfo2P7CEntityb
; Address            : 0x3F45E8 - 0x3F4676
; =========================================================

3F45E8:  PUSH            {R4-R7,LR}
3F45EA:  ADD             R7, SP, #0xC
3F45EC:  PUSH.W          {R8}
3F45F0:  MOV             R5, R0
3F45F2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3F45FE)
3F45F4:  MOV             R4, R1
3F45F6:  LDRSH.W         R1, [R5,#0x26]
3F45FA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3F45FC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3F45FE:  LDR.W           R0, [R0,R1,LSL#2]
3F4602:  LDR             R1, [R0]
3F4604:  LDR             R1, [R1,#8]
3F4606:  BLX             R1
3F4608:  CBZ             R0, loc_3F466E
3F460A:  LDRSH.W         R1, [R0,#0x1E]; void *
3F460E:  CMP             R1, #1
3F4610:  BGT             loc_3F466E
3F4612:  LDR             R6, [R0,#0x34]
3F4614:  LDR.W           R8, [R5,#0x18]
3F4618:  LDR             R5, [R6,#0x18]
3F461A:  MOV             R0, R5; this
3F461C:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
3F4620:  CMP             R5, R0
3F4622:  BEQ             loc_3F466E
3F4624:  LDR             R2, [R0,#0x2C]
3F4626:  SUBS            R1, R0, R5
3F4628:  CMP             R2, #0
3F462A:  ITT NE
3F462C:  ADDNE           R2, R1
3F462E:  STRNE           R2, [R0,#0x2C]
3F4630:  LDR             R2, [R0,#0x30]
3F4632:  CMP             R2, #0
3F4634:  ITT NE
3F4636:  ADDNE           R2, R1
3F4638:  STRNE           R2, [R0,#0x30]
3F463A:  LDR             R2, [R0,#0x34]
3F463C:  CMP             R2, #0
3F463E:  ITT NE
3F4640:  ADDNE           R2, R1
3F4642:  STRNE           R2, [R0,#0x34]
3F4644:  LDR             R2, [R0,#0x38]
3F4646:  CMP             R2, #0
3F4648:  ITT NE
3F464A:  ADDNE           R1, R2
3F464C:  STRNE           R1, [R0,#0x38]
3F464E:  LDR             R1, [R0,#0x60]
3F4650:  STR             R0, [R1]
3F4652:  LDR             R1, [R6,#0x18]
3F4654:  LDR.W           R2, [R8,#0x18]
3F4658:  CMP             R2, R1
3F465A:  IT EQ
3F465C:  STREQ.W         R0, [R8,#0x18]
3F4660:  CMP             R4, #0
3F4662:  STR             R0, [R6,#0x18]
3F4664:  BEQ             loc_3F466E
3F4666:  MOVS            R0, #1
3F4668:  POP.W           {R8}
3F466C:  POP             {R4-R7,PC}
3F466E:  MOVS            R0, #0
3F4670:  POP.W           {R8}
3F4674:  POP             {R4-R7,PC}
