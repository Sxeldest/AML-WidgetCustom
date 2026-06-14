; =========================================================
; Game Engine Function: _ZN8CPedList27BuildListFromGroup_NoLeaderEP19CPedGroupMembership
; Address            : 0x5482CE - 0x5483D6
; =========================================================

5482CE:  PUSH            {R4,R5,R7,LR}
5482D0:  ADD             R7, SP, #8
5482D2:  MOV             R5, R1
5482D4:  MOV             R4, R0
5482D6:  MOVS            R0, #0
5482D8:  MOVS            R1, #0; int
5482DA:  STR             R0, [R4]
5482DC:  MOV             R0, R5; this
5482DE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5482E2:  CBZ             R0, loc_5482FA
5482E4:  MOV             R0, R5; this
5482E6:  MOVS            R1, #0; int
5482E8:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5482EC:  LDR             R1, [R4]
5482EE:  ADD.W           R1, R4, R1,LSL#2
5482F2:  STR             R0, [R1,#4]
5482F4:  LDR             R0, [R4]
5482F6:  ADDS            R0, #1
5482F8:  STR             R0, [R4]
5482FA:  MOV             R0, R5; this
5482FC:  MOVS            R1, #1; int
5482FE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548302:  CBZ             R0, loc_54831A
548304:  MOV             R0, R5; this
548306:  MOVS            R1, #1; int
548308:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
54830C:  LDR             R1, [R4]
54830E:  ADD.W           R1, R4, R1,LSL#2
548312:  STR             R0, [R1,#4]
548314:  LDR             R0, [R4]
548316:  ADDS            R0, #1
548318:  STR             R0, [R4]
54831A:  MOV             R0, R5; this
54831C:  MOVS            R1, #2; int
54831E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548322:  CBZ             R0, loc_54833A
548324:  MOV             R0, R5; this
548326:  MOVS            R1, #2; int
548328:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
54832C:  LDR             R1, [R4]
54832E:  ADD.W           R1, R4, R1,LSL#2
548332:  STR             R0, [R1,#4]
548334:  LDR             R0, [R4]
548336:  ADDS            R0, #1
548338:  STR             R0, [R4]
54833A:  MOV             R0, R5; this
54833C:  MOVS            R1, #3; int
54833E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548342:  CBZ             R0, loc_54835A
548344:  MOV             R0, R5; this
548346:  MOVS            R1, #3; int
548348:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
54834C:  LDR             R1, [R4]
54834E:  ADD.W           R1, R4, R1,LSL#2
548352:  STR             R0, [R1,#4]
548354:  LDR             R0, [R4]
548356:  ADDS            R0, #1
548358:  STR             R0, [R4]
54835A:  MOV             R0, R5; this
54835C:  MOVS            R1, #4; int
54835E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548362:  CBZ             R0, loc_54837A
548364:  MOV             R0, R5; this
548366:  MOVS            R1, #4; int
548368:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
54836C:  LDR             R1, [R4]
54836E:  ADD.W           R1, R4, R1,LSL#2
548372:  STR             R0, [R1,#4]
548374:  LDR             R0, [R4]
548376:  ADDS            R0, #1
548378:  STR             R0, [R4]
54837A:  MOV             R0, R5; this
54837C:  MOVS            R1, #5; int
54837E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
548382:  CBZ             R0, loc_54839A
548384:  MOV             R0, R5; this
548386:  MOVS            R1, #5; int
548388:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
54838C:  LDR             R1, [R4]
54838E:  ADD.W           R1, R4, R1,LSL#2
548392:  STR             R0, [R1,#4]
548394:  LDR             R0, [R4]
548396:  ADDS            R0, #1
548398:  STR             R0, [R4]
54839A:  MOV             R0, R5; this
54839C:  MOVS            R1, #6; int
54839E:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5483A2:  CBZ             R0, loc_5483BC
5483A4:  MOV             R0, R5; this
5483A6:  MOVS            R1, #6; int
5483A8:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
5483AC:  LDR             R1, [R4]
5483AE:  ADD.W           R1, R4, R1,LSL#2
5483B2:  STR             R0, [R1,#4]
5483B4:  LDR             R0, [R4]
5483B6:  ADDS            R1, R0, #1
5483B8:  STR             R1, [R4]
5483BA:  B               loc_5483BE
5483BC:  LDR             R1, [R4]
5483BE:  CMP             R1, #0x1E
5483C0:  IT GE
5483C2:  POPGE           {R4,R5,R7,PC}
5483C4:  ADD.W           R0, R4, R1,LSL#2
5483C8:  RSB.W           R1, R1, #0x1E
5483CC:  ADDS            R0, #4
5483CE:  LSLS            R1, R1, #2
5483D0:  BLX             j___aeabi_memclr8_0
5483D4:  POP             {R4,R5,R7,PC}
