; =========================================================
; Game Engine Function: _ZN11CTagManager4LoadEv
; Address            : 0x48E338 - 0x48E37C
; =========================================================

48E338:  PUSH            {R4-R7,LR}
48E33A:  ADD             R7, SP, #0xC
48E33C:  PUSH.W          {R11}
48E340:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x48E348)
48E342:  MOVS            R1, #byte_4; void *
48E344:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
48E346:  LDR             R4, [R0]; CTagManager::ms_numTags ...
48E348:  MOV             R0, R4; this
48E34A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E34E:  LDR             R0, [R4]; CTagManager::ms_numTags
48E350:  CBZ             R0, loc_48E374
48E352:  LDR             R0, =(_ZN11CTagManager10ms_tagDescE_ptr - 0x48E35A)
48E354:  MOVS            R5, #0
48E356:  ADD             R0, PC; _ZN11CTagManager10ms_tagDescE_ptr
48E358:  LDR             R0, [R0]; CTagManager::ms_tagDesc ...
48E35A:  ADDS            R4, R0, #4
48E35C:  LDR             R0, =(_ZN11CTagManager10ms_numTagsE_ptr - 0x48E362)
48E35E:  ADD             R0, PC; _ZN11CTagManager10ms_numTagsE_ptr
48E360:  LDR             R6, [R0]; CTagManager::ms_numTags ...
48E362:  MOV             R0, R4; this
48E364:  MOVS            R1, #(stderr+1); void *
48E366:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E36A:  LDR             R0, [R6]; CTagManager::ms_numTags
48E36C:  ADDS            R5, #1
48E36E:  ADDS            R4, #8
48E370:  CMP             R5, R0
48E372:  BCC             loc_48E362
48E374:  MOVS            R0, #1
48E376:  POP.W           {R11}
48E37A:  POP             {R4-R7,PC}
