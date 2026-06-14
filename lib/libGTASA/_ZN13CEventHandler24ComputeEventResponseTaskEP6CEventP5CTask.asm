; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeEventResponseTaskEP6CEventP5CTask
; Address            : 0x37BB10 - 0x37C4BC
; =========================================================

37BB10:  PUSH            {R4-R7,LR}
37BB12:  ADD             R7, SP, #0xC
37BB14:  PUSH.W          {R8-R10}
37BB18:  SUB             SP, SP, #0x30
37BB1A:  MOV             R8, R0
37BB1C:  MOVS            R6, #0
37BB1E:  STR.W           R6, [R8,#0x30]
37BB22:  VMOV.I32        Q8, #0
37BB26:  MOV             R5, R1
37BB28:  LDR.W           R0, [R8]
37BB2C:  ADD.W           R1, R8, #0x20 ; ' '
37BB30:  VST1.32         {D16-D17}, [R1]
37BB34:  LDR.W           R0, [R0,#0x440]
37BB38:  ADDS            R0, #4; this
37BB3A:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37BB3E:  MOV             R4, R0
37BB40:  CBZ             R4, loc_37BB52
37BB42:  LDR.W           R0, [R8]
37BB46:  LDR.W           R0, [R0,#0x440]
37BB4A:  ADDS            R0, #4; this
37BB4C:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
37BB50:  MOV             R6, R0
37BB52:  LDR             R0, [R5]
37BB54:  LDR             R1, [R0,#8]
37BB56:  MOV             R0, R5
37BB58:  BLX             R1
37BB5A:  LDR             R0, [R5]
37BB5C:  LDR             R1, [R0,#8]
37BB5E:  MOV             R0, R5
37BB60:  BLX             R1
37BB62:  SUBS            R0, #1; switch 94 cases
37BB64:  CMP             R0, #0x5D ; ']'
37BB66:  BHI.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BB6A:  TBH.W           [PC,R0,LSL#1]; switch jump
37BB6E:  DCW 0x9E; jump table for switch statement
37BB70:  DCW 0xA8
37BB72:  DCW 0xB2
37BB74:  DCW 0xBD
37BB76:  DCW 0xC6
37BB78:  DCW 0xE9
37BB7A:  DCW 0xF4
37BB7C:  DCW 0xFD
37BB7E:  DCW 0x106
37BB80:  DCW 0x10D
37BB82:  DCW 0x117
37BB84:  DCW 0x120
37BB86:  DCW 0x129
37BB88:  DCW 0x4A3
37BB8A:  DCW 0x133
37BB8C:  DCW 0x13C
37BB8E:  DCW 0x171
37BB90:  DCW 0x17A
37BB92:  DCW 0x3ED
37BB94:  DCW 0x182
37BB96:  DCW 0x19D
37BB98:  DCW 0x4A3
37BB9A:  DCW 0x4A3
37BB9C:  DCW 0x4A3
37BB9E:  DCW 0x1DA
37BBA0:  DCW 0x219
37BBA2:  DCW 0x5E
37BBA4:  DCW 0x245
37BBA6:  DCW 0x4A3
37BBA8:  DCW 0x4A3
37BBAA:  DCW 0x257
37BBAC:  DCW 0x261
37BBAE:  DCW 0x26A
37BBB0:  DCW 0x4A3
37BBB2:  DCW 0x279
37BBB4:  DCW 0x83
37BBB6:  DCW 0x83
37BBB8:  DCW 0x8C
37BBBA:  DCW 0x8C
37BBBC:  DCW 0x4A3
37BBBE:  DCW 0x95
37BBC0:  DCW 0x412
37BBC2:  DCW 0x282
37BBC4:  DCW 0x28B
37BBC6:  DCW 0x2AC
37BBC8:  DCW 0x2E4
37BBCA:  DCW 0x4A3
37BBCC:  DCW 0x5E
37BBCE:  DCW 0x2EE
37BBD0:  DCW 0x2F8
37BBD2:  DCW 0x41B
37BBD4:  DCW 0x301
37BBD6:  DCW 0x31C
37BBD8:  DCW 0x4A3
37BBDA:  DCW 0x4A3
37BBDC:  DCW 0x337
37BBDE:  DCW 0x4A3
37BBE0:  DCW 0x341
37BBE2:  DCW 0x424
37BBE4:  DCW 0x4A3
37BBE6:  DCW 0x4A3
37BBE8:  DCW 0x35B
37BBEA:  DCW 0x37E
37BBEC:  DCW 0x395
37BBEE:  DCW 0x433
37BBF0:  DCW 0x43C
37BBF2:  DCW 0x39E
37BBF4:  DCW 0x4A3
37BBF6:  DCW 0x3A9
37BBF8:  DCW 0x442
37BBFA:  DCW 0x4A3
37BBFC:  DCW 0x3AF
37BBFE:  DCW 0x95
37BC00:  DCW 0x44B
37BC02:  DCW 0x45C
37BC04:  DCW 0x4A3
37BC06:  DCW 0x4A3
37BC08:  DCW 0x4A3
37BC0A:  DCW 0x3DD
37BC0C:  DCW 0x4A3
37BC0E:  DCW 0x465
37BC10:  DCW 0x4A3
37BC12:  DCW 0x4A3
37BC14:  DCW 0x4A3
37BC16:  DCW 0x4A3
37BC18:  DCW 0x4A3
37BC1A:  DCW 0x4A3
37BC1C:  DCW 0x470
37BC1E:  DCW 0x479
37BC20:  DCW 0x4A3
37BC22:  DCW 0x4A3
37BC24:  DCW 0x4A3
37BC26:  DCW 0x481
37BC28:  DCW 0x3E6
37BC2A:  LDR             R0, [R5]; jumptable 0037BB6A cases 27,48
37BC2C:  LDRD.W          R4, R6, [R5,#0x10]
37BC30:  LDR             R1, [R0,#8]
37BC32:  MOV             R0, R5
37BC34:  BLX             R1
37BC36:  CMP             R6, #0
37BC38:  IT EQ
37BC3A:  CMPEQ           R0, #0x1B
37BC3C:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BC40:  LDRSH.W         R0, [R5,#0xA]
37BC44:  CMP             R0, #0xC8
37BC46:  BEQ.W           loc_37C3D0
37BC4A:  CMP             R0, #0xE9
37BC4C:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BC50:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
37BC54:  MOV             R1, R4
37BC56:  MOV             R2, R6
37BC58:  BLX             j__ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasEmptySlot(C2dEffect const*,CEntity const*)
37BC5C:  CMP             R0, #1
37BC5E:  BNE.W           loc_37C3D0
37BC62:  MOVS            R0, #dword_24; this
37BC64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BC68:  MOV             R1, R4
37BC6A:  MOV             R2, R6
37BC6C:  BLX             j__ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity; CTaskComplexUseEffect::CTaskComplexUseEffect(C2dEffect *,CEntity *)
37BC70:  B.W             loc_37C4B0
37BC74:  MOV             R0, R8; jumptable 0037BB6A cases 36,37
37BC76:  MOV             R1, R5; CEvent *
37BC78:  ADD             SP, SP, #0x30 ; '0'
37BC7A:  POP.W           {R8-R10}
37BC7E:  POP.W           {R4-R7,LR}
37BC82:  B.W             _ZN13CEventHandler24ComputePedThreatResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePedThreatResponse(CEvent *,CTask *,CTask *)
37BC86:  MOV             R0, R8; jumptable 0037BB6A cases 38,39
37BC88:  MOV             R1, R5; CEvent *
37BC8A:  ADD             SP, SP, #0x30 ; '0'
37BC8C:  POP.W           {R8-R10}
37BC90:  POP.W           {R4-R7,LR}
37BC94:  B.W             _ZN13CEventHandler24ComputePedFriendResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePedFriendResponse(CEvent *,CTask *,CTask *)
37BC98:  MOV             R0, R8; jumptable 0037BB6A cases 41,73
37BC9A:  MOV             R1, R5; CEvent *
37BC9C:  ADD             SP, SP, #0x30 ; '0'
37BC9E:  POP.W           {R8-R10}
37BCA2:  POP.W           {R4-R7,LR}
37BCA6:  B.W             _ZN13CEventHandler28ComputeVehicleDamageResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehicleDamageResponse(CEvent *,CTask *,CTask *)
37BCAA:  MOV             R0, R8; jumptable 0037BB6A case 1
37BCAC:  MOV             R1, R5; CEvent *
37BCAE:  MOV             R3, R6; CTask *
37BCB0:  ADD             SP, SP, #0x30 ; '0'
37BCB2:  POP.W           {R8-R10}
37BCB6:  POP.W           {R4-R7,LR}
37BCBA:  B.W             _ZN13CEventHandler31ComputeVehicleCollisionResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehicleCollisionResponse(CEvent *,CTask *,CTask *)
37BCBE:  MOV             R0, R8; jumptable 0037BB6A case 2
37BCC0:  MOV             R1, R5; CEvent *
37BCC2:  MOV             R3, R6; CTask *
37BCC4:  ADD             SP, SP, #0x30 ; '0'
37BCC6:  POP.W           {R8-R10}
37BCCA:  POP.W           {R4-R7,LR}
37BCCE:  B.W             _ZN13CEventHandler34ComputePedCollisionWithPedResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePedCollisionWithPedResponse(CEvent *,CTask *,CTask *)
37BCD2:  MOV             R0, R8; jumptable 0037BB6A case 3
37BCD4:  MOV             R1, R5; CEvent *
37BCD6:  MOV             R2, R4; CTask *
37BCD8:  MOV             R3, R6; CTask *
37BCDA:  ADD             SP, SP, #0x30 ; '0'
37BCDC:  POP.W           {R8-R10}
37BCE0:  POP.W           {R4-R7,LR}
37BCE4:  B.W             _ZN13CEventHandler37ComputePedCollisionWithPlayerResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePedCollisionWithPlayerResponse(CEvent *,CTask *,CTask *)
37BCE8:  MOV             R0, R8; jumptable 0037BB6A case 4
37BCEA:  MOV             R1, R5; CEvent *
37BCEC:  ADD             SP, SP, #0x30 ; '0'
37BCEE:  POP.W           {R8-R10}
37BCF2:  POP.W           {R4-R7,LR}
37BCF6:  B.W             _ZN13CEventHandler37ComputePlayerCollisionWithPedResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePlayerCollisionWithPedResponse(CEvent *,CTask *,CTask *)
37BCFA:  CMP             R6, #0; jumptable 0037BB6A case 5
37BCFC:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BD00:  MOV             R0, R6; this
37BD02:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37BD06:  CMP             R0, #0
37BD08:  ITT NE
37BD0A:  LDRSHNE.W       R4, [R5,#0xC]
37BD0E:  CMPNE           R4, #1
37BD10:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BD14:  LDR.W           R1, [R8]; CPed *
37BD18:  MOV             R0, R5; this
37BD1A:  LDR.W           R9, [R5,#0x14]
37BD1E:  BLX             j__ZNK21CEventObjectCollision17IsHeadOnCollisionERK4CPed; CEventObjectCollision::IsHeadOnCollision(CPed const&)
37BD22:  CMP.W           R9, #0
37BD26:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BD2A:  MOVS            R0, #dword_54; this
37BD2C:  ADD.W           R5, R6, #0xC
37BD30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BD34:  MOV             R1, R4; int
37BD36:  MOV             R2, R5; CVector *
37BD38:  MOV             R3, R9; CEntity *
37BD3A:  BLX             j__ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity; CTaskComplexWalkRoundObject::CTaskComplexWalkRoundObject(int,CVector const&,CEntity *)
37BD3E:  B               loc_37C4B0
37BD40:  MOV             R0, R8; jumptable 0037BB6A case 6
37BD42:  MOV             R1, R5; CEvent *
37BD44:  MOV             R2, R4; CTask *
37BD46:  MOV             R3, R6; CTask *
37BD48:  ADD             SP, SP, #0x30 ; '0'
37BD4A:  POP.W           {R8-R10}
37BD4E:  POP.W           {R4-R7,LR}
37BD52:  B.W             _ZN13CEventHandler32ComputeBuildingCollisionResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeBuildingCollisionResponse(CEvent *,CTask *,CTask *)
37BD56:  MOV             R0, R8; jumptable 0037BB6A case 7
37BD58:  MOV             R1, R5; CEvent *
37BD5A:  ADD             SP, SP, #0x30 ; '0'
37BD5C:  POP.W           {R8-R10}
37BD60:  POP.W           {R4-R7,LR}
37BD64:  B.W             _ZN13CEventHandler28ComputeDraggedOutCarResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeDraggedOutCarResponse(CEvent *,CTask *,CTask *)
37BD68:  MOV             R0, R8; jumptable 0037BB6A case 8
37BD6A:  MOV             R1, R5; CEvent *
37BD6C:  ADD             SP, SP, #0x30 ; '0'
37BD6E:  POP.W           {R8-R10}
37BD72:  POP.W           {R4-R7,LR}
37BD76:  B.W             _ZN13CEventHandler27ComputeKnockOffBikeResponseEP6CEventP5CTaskS3_; CTask *
37BD7A:  MOV             R0, R8; jumptable 0037BB6A case 9
37BD7C:  MOV             R1, R5; CEvent *
37BD7E:  MOV             R2, R4; CTask *
37BD80:  MOV             R3, R6; CTask *
37BD82:  BLX             j__ZN13CEventHandler21ComputeDamageResponseEP6CEventP5CTaskS3_S3_; CEventHandler::ComputeDamageResponse(CEvent *,CTask *,CTask *,CTask *)
37BD86:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BD88:  MOVS            R0, #word_10; jumptable 0037BB6A case 10
37BD8A:  LDRB            R4, [R5,#9]
37BD8C:  LDR             R5, [R5,#0xC]
37BD8E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BD92:  MOV             R1, R5; int
37BD94:  MOV             R2, R4; bool
37BD96:  BLX             j__ZN15CTaskSimpleDeadC2Eib; CTaskSimpleDead::CTaskSimpleDead(int,bool)
37BD9A:  B               loc_37C4B0
37BD9C:  MOV             R0, R8; jumptable 0037BB6A case 11
37BD9E:  MOV             R1, R5; CEvent *
37BDA0:  ADD             SP, SP, #0x30 ; '0'
37BDA2:  POP.W           {R8-R10}
37BDA6:  POP.W           {R4-R7,LR}
37BDAA:  B.W             _ZN13CEventHandler22ComputeDeadPedResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeDeadPedResponse(CEvent *,CTask *,CTask *)
37BDAE:  MOV             R0, R8; jumptable 0037BB6A case 12
37BDB0:  MOV             R1, R5; CEvent *
37BDB2:  ADD             SP, SP, #0x30 ; '0'
37BDB4:  POP.W           {R8-R10}
37BDB8:  POP.W           {R4-R7,LR}
37BDBC:  B.W             _ZN13CEventHandler40ComputeVehiclePotentialCollisionResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehiclePotentialCollisionResponse(CEvent *,CTask *,CTask *)
37BDC0:  MOV             R0, R8; jumptable 0037BB6A case 13
37BDC2:  MOV             R1, R5; CEvent *
37BDC4:  MOV             R3, R6; CTask *
37BDC6:  ADD             SP, SP, #0x30 ; '0'
37BDC8:  POP.W           {R8-R10}
37BDCC:  POP.W           {R4-R7,LR}
37BDD0:  B.W             _ZN13CEventHandler34ComputePotentialPedCollideResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePotentialPedCollideResponse(CEvent *,CTask *,CTask *)
37BDD4:  MOV             R0, R8; jumptable 0037BB6A case 15
37BDD6:  MOV             R1, R5; CEvent *
37BDD8:  ADD             SP, SP, #0x30 ; '0'
37BDDA:  POP.W           {R8-R10}
37BDDE:  POP.W           {R4-R7,LR}
37BDE2:  B.W             _ZN13CEventHandler24ComputeShotFiredResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeShotFiredResponse(CEvent *,CTask *,CTask *)
37BDE6:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 16
37BDE8:  CMP             R4, #0
37BDEA:  ITT NE
37BDEC:  LDRNE           R5, [R5,#0x10]
37BDEE:  CMPNE           R5, #0
37BDF0:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BDF4:  LDR.W           R0, [R8]
37BDF8:  LDR.W           R1, [R0,#0x590]; unsigned int
37BDFC:  CMP             R1, R5
37BDFE:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BE02:  LDRB.W          R0, [R0,#0x485]
37BE06:  LSLS            R0, R0, #0x1F
37BE08:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BE0C:  MOVS            R0, #dword_34; this
37BE0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BE12:  MOVS            R1, #0
37BE14:  MOVS            R2, #1
37BE16:  STRD.W          R2, R1, [SP,#0x48+var_48]; bool
37BE1A:  MOV             R1, R5; CVehicle *
37BE1C:  MOVS            R2, #0; int
37BE1E:  MOVS            R3, #0; int
37BE20:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
37BE24:  STR.W           R0, [R8,#0x24]
37BE28:  MOV             R0, R4; this
37BE2A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37BE2E:  CMP             R0, #1
37BE30:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BE34:  LDR.W           R0, [R4,#0x444]
37BE38:  MOVS            R1, #1; int
37BE3A:  CMP             R0, #0
37BE3C:  ITE NE
37BE3E:  LDRNE           R0, [R0]
37BE40:  MOVEQ           R0, #0; this
37BE42:  ADD             SP, SP, #0x30 ; '0'
37BE44:  POP.W           {R8-R10}
37BE48:  POP.W           {R4-R7,LR}
37BE4C:  B.W             sub_18AA34
37BE50:  MOV             R0, R8; jumptable 0037BB6A case 17
37BE52:  MOV             R1, R5; CEvent *
37BE54:  ADD             SP, SP, #0x30 ; '0'
37BE56:  POP.W           {R8-R10}
37BE5A:  POP.W           {R4-R7,LR}
37BE5E:  B.W             _ZN13CEventHandler32ComputePedEnteredVehicleResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePedEnteredVehicleResponse(CEvent *,CTask *,CTask *)
37BE62:  MOV             R0, R8; jumptable 0037BB6A case 18
37BE64:  ADD             SP, SP, #0x30 ; '0'
37BE66:  POP.W           {R8-R10}
37BE6A:  POP.W           {R4-R7,LR}
37BE6E:  B.W             _ZN13CEventHandler21ComputeReviveResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeReviveResponse(CEvent *,CTask *,CTask *)
37BE72:  LDR             R4, [R5,#0x10]; jumptable 0037BB6A case 20
37BE74:  CMP             R4, #0
37BE76:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BE7A:  LDRSH.W         R0, [R5,#0xA]
37BE7E:  CMP             R0, #0xC8
37BE80:  BEQ.W           loc_37C3D0
37BE84:  MOVW            R1, #0x4BC; unsigned int
37BE88:  CMP             R0, R1
37BE8A:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BE8E:  MOVS            R0, #word_2C; this
37BE90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BE94:  MOVW            R1, #0x7530
37BE98:  MOVS            R2, #0; int
37BE9A:  STR             R1, [SP,#0x48+var_48]; int
37BE9C:  MOV             R1, R4; CPed *
37BE9E:  MOVW            R3, #0x2710; int
37BEA2:  BLX             j__ZN18CTaskGangHasslePedC2EP4CPediii; CTaskGangHasslePed::CTaskGangHasslePed(CPed *,int,int,int)
37BEA6:  B               loc_37C4B0
37BEA8:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 21
37BEAA:  CMP             R4, #0
37BEAC:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BEB0:  LDR.W           R0, =(g_InterestingEvents_ptr - 0x37BEBC)
37BEB4:  MOVS            R1, #8
37BEB6:  MOV             R2, R4
37BEB8:  ADD             R0, PC; g_InterestingEvents_ptr
37BEBA:  LDR             R0, [R0]; g_InterestingEvents
37BEBC:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
37BEC0:  MOVS            R0, #dword_20; this
37BEC2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BEC6:  MOV.W           R1, #0x41000000
37BECA:  MOVS            R2, #0; bool
37BECC:  STR             R1, [SP,#0x48+var_48]; float
37BECE:  MOVW            R1, #0x1388; int
37BED2:  MOVS            R3, #0; bool
37BED4:  MOVW            R9, #0x1388
37BED8:  MOV.W           R10, #0
37BEDC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
37BEE0:  LDR.W           R1, =(g_ikChainMan_ptr - 0x37BEF2)
37BEE4:  MOV.W           LR, #0x1F4
37BEE8:  LDR.W           R2, [R8]; CPed *
37BEEC:  MOVS            R6, #1
37BEEE:  ADD             R1, PC; g_ikChainMan_ptr
37BEF0:  STR.W           R0, [R8,#0x24]
37BEF4:  MOV.W           R5, #0xFFFFFFFF
37BEF8:  MOV.W           R0, #0x3E800000
37BEFC:  LDR             R3, [R1]; g_ikChainMan
37BEFE:  MOV.W           R12, #3
37BF02:  LDR.W           R1, =(aCompsexyvhclre - 0x37BF0E); "CompSexyVhclResp"
37BF06:  STRD.W          R9, R5, [SP,#0x48+var_48]; int
37BF0A:  ADD             R1, PC; "CompSexyVhclResp"
37BF0C:  STRD.W          R10, R6, [SP,#0x48+var_40]; int
37BF10:  STRD.W          R0, LR, [SP,#0x48+var_38]; float
37BF14:  MOV             R0, R3; int
37BF16:  MOV             R3, R4; int
37BF18:  STRD.W          R12, R10, [SP,#0x48+var_30]; int
37BF1C:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37BF20:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BF22:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 25
37BF24:  CMP             R4, #0
37BF26:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BF2A:  MOVS            R0, #dword_4C; this
37BF2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BF30:  MOV             R5, R0
37BF32:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
37BF36:  ADR.W           R2, dword_37C4C0
37BF3A:  LDR.W           R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x37BF4A)
37BF3E:  VLD1.64         {D16-D17}, [R2@128]
37BF42:  ADD.W           R2, R5, #0x18
37BF46:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
37BF48:  MOV.W           R3, #0x3E8
37BF4C:  LDR.W           R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x37BF5C)
37BF50:  VST1.32         {D16-D17}, [R2]
37BF54:  MOVW            R2, #0x7530
37BF58:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
37BF5A:  STRD.W          R2, R3, [R5,#0x10]
37BF5E:  MOVS            R2, #0
37BF60:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
37BF62:  STRH            R2, [R5,#0x30]
37BF64:  STRH            R2, [R5,#0x3C]
37BF66:  ADDS            R0, #8
37BF68:  STRD.W          R2, R2, [R5,#0x28]
37BF6C:  STRD.W          R2, R2, [R5,#0x34]
37BF70:  MOVS            R2, #6
37BF72:  STR             R2, [R5,#0x44]
37BF74:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
37BF76:  LDRB.W          R2, [R5,#0x48]
37BF7A:  STR             R0, [R5]
37BF7C:  ADD.W           R0, R1, #8
37BF80:  STR             R0, [R5,#0x40]
37BF82:  AND.W           R0, R2, #0xF0
37BF86:  MOV             R1, R5
37BF88:  ORR.W           R0, R0, #3
37BF8C:  STRB.W          R0, [R5,#0x48]
37BF90:  MOV             R0, R4; this
37BF92:  STR.W           R4, [R1,#0xC]!; CEntity **
37BF96:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37BF9A:  STR.W           R5, [R8,#0x24]
37BF9E:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BFA0:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 26
37BFA2:  CMP             R4, #0
37BFA4:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37BFA8:  LDR.W           R0, [R8]; this
37BFAC:  MOVS            R1, #0
37BFAE:  STRD.W          R1, R1, [SP,#0x48+var_48]; unsigned __int8
37BFB2:  MOVS            R2, #0; unsigned int
37BFB4:  STR             R1, [SP,#0x48+var_40]; float
37BFB6:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
37BFB8:  MOV.W           R3, #0x3F800000; float
37BFBC:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
37BFC0:  MOVS            R0, #dword_40; this
37BFC2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37BFC6:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37BFD8)
37BFCA:  MOVS            R3, #0
37BFCC:  LDR.W           R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37BFDA)
37BFD0:  MOVT            R3, #0x42C8; float
37BFD4:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37BFD6:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37BFD8:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
37BFDA:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
37BFDC:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
37BFDE:  VLDR            S0, [R2]
37BFE2:  MOV.W           R2, #0xFFFFFFFF
37BFE6:  VSTR            S0, [SP,#0x48+var_40]
37BFEA:  STRD.W          R2, R1, [SP,#0x48+var_48]; int
37BFEE:  MOV             R1, R4; CEntity *
37BFF0:  MOVS            R2, #1; bool
37BFF2:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
37BFF6:  B               loc_37C4B0
37BFF8:  LDR.W           R0, [R8]; jumptable 0037BB6A case 28
37BFFC:  LDRB.W          R0, [R0,#0x485]
37C000:  LSLS            R0, R0, #0x1F
37C002:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C006:  LDR             R4, [R5,#0xC]
37C008:  CMP             R4, #0
37C00A:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C00E:  MOVS            R0, #dword_20; this
37C010:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C014:  MOV             R1, R4; CVehicle *
37C016:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
37C01A:  B               loc_37C4B0
37C01C:  MOV             R0, R8; jumptable 0037BB6A case 31
37C01E:  MOV             R1, R5; CEvent *
37C020:  MOV             R2, R4; CTask *
37C022:  ADD             SP, SP, #0x30 ; '0'
37C024:  POP.W           {R8-R10}
37C028:  POP.W           {R4-R7,LR}
37C02C:  B.W             _ZN13CEventHandler25ComputeGunAimedAtResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeGunAimedAtResponse(CEvent *,CTask *,CTask *)
37C030:  MOV             R0, R8; jumptable 0037BB6A case 32
37C032:  MOV             R1, R5; CEvent *
37C034:  ADD             SP, SP, #0x30 ; '0'
37C036:  POP.W           {R8-R10}
37C03A:  POP.W           {R4-R7,LR}
37C03E:  B.W             _ZN13CEventHandler28ComputeScriptCommandResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeScriptCommandResponse(CEvent *,CTask *,CTask *)
37C042:  LDR.W           R0, [R8]; jumptable 0037BB6A case 33
37C046:  LDRB.W          R0, [R0,#0x484]
37C04A:  LSLS            R0, R0, #0x1F
37C04C:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C050:  MOVS            R0, #word_10; this
37C052:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C056:  MOVS            R1, #0; bool
37C058:  MOVS            R2, #0; bool
37C05A:  BLX             j__ZN24CTaskComplexInAirAndLandC2Ebb; CTaskComplexInAirAndLand::CTaskComplexInAirAndLand(bool,bool)
37C05E:  B               loc_37C4B0
37C060:  MOV             R0, R8; jumptable 0037BB6A case 35
37C062:  MOV             R1, R5; CEvent *
37C064:  ADD             SP, SP, #0x30 ; '0'
37C066:  POP.W           {R8-R10}
37C06A:  POP.W           {R4-R7,LR}
37C06E:  B.W             _ZN13CEventHandler26ComputeVehicleDiedResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehicleDiedResponse(CEvent *,CTask *,CTask *)
37C072:  MOV             R0, R8; jumptable 0037BB6A case 43
37C074:  MOV             R1, R5; CEvent *
37C076:  ADD             SP, SP, #0x30 ; '0'
37C078:  POP.W           {R8-R10}
37C07C:  POP.W           {R4-R7,LR}
37C080:  B.W             _ZN13CEventHandler34ComputeGotKnockedOverByCarResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeGotKnockedOverByCarResponse(CEvent *,CTask *,CTask *)
37C084:  LDR             R4, [R5,#0x10]; jumptable 0037BB6A case 44
37C086:  CMP             R4, #0
37C088:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C08C:  LDR.W           R0, [R8]
37C090:  LDRB.W          R0, [R0,#0x485]
37C094:  LSLS            R0, R0, #0x1F
37C096:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C09A:  CMP             R6, #0
37C09C:  ITT NE
37C09E:  LDRNE           R5, [R5,#0x14]
37C0A0:  CMPNE           R5, #1
37C0A2:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C0A6:  MOV             R0, R6; this
37C0A8:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37C0AC:  CMP             R0, #0
37C0AE:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C0B2:  MOVS            R0, #dword_54; this
37C0B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C0B8:  ADD.W           R2, R6, #0xC; CVector *
37C0BC:  MOV             R1, R5; int
37C0BE:  MOV             R3, R4; CEntity *
37C0C0:  BLX             j__ZN27CTaskComplexWalkRoundObjectC2EiRK7CVectorP7CEntity; CTaskComplexWalkRoundObject::CTaskComplexWalkRoundObject(int,CVector const&,CEntity *)
37C0C4:  B               loc_37C4B0
37C0C6:  LDR.W           R0, [R8]; jumptable 0037BB6A case 45
37C0CA:  LDRB.W          R1, [R0,#0x485]
37C0CE:  LSLS            R1, R1, #0x1F
37C0D0:  ITT NE
37C0D2:  LDRNE.W         R0, [R0,#0x590]
37C0D6:  CMPNE           R0, #0
37C0D8:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C0DC:  LDR             R1, [R5,#0xC]; unsigned int
37C0DE:  CMP             R0, R1
37C0E0:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C0E4:  MOVS            R0, #dword_34; this
37C0E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C0EA:  MOV             R4, R0
37C0EC:  LDR.W           R0, [R8]
37C0F0:  LDR.W           R5, [R0,#0x590]
37C0F4:  BLX             rand
37C0F8:  UXTH            R0, R0
37C0FA:  VLDR            S2, =0.000015259
37C0FE:  VMOV            S0, R0
37C102:  MOVS            R0, #0
37C104:  MOV             R1, R5; CVehicle *
37C106:  MOVS            R2, #0; int
37C108:  VCVT.F32.S32    S0, S0
37C10C:  STR             R0, [SP,#0x48+var_44]; bool
37C10E:  MOVS            R0, #1
37C110:  VMUL.F32        S0, S0, S2
37C114:  VLDR            S2, =300.0
37C118:  VMUL.F32        S0, S0, S2
37C11C:  VCVT.S32.F32    S0, S0
37C120:  STR             R0, [SP,#0x48+var_48]; bool
37C122:  VMOV            R0, S0
37C126:  ADD.W           R3, R0, #0x64 ; 'd'; int
37C12A:  MOV             R0, R4; this
37C12C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
37C130:  STR.W           R4, [R8,#0x24]
37C134:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C136:  MOV             R0, R8; jumptable 0037BB6A case 46
37C138:  MOV             R1, R5; CEvent *
37C13A:  MOV             R3, R6; CTask *
37C13C:  ADD             SP, SP, #0x30 ; '0'
37C13E:  POP.W           {R8-R10}
37C142:  POP.W           {R4-R7,LR}
37C146:  B.W             _ZN13CEventHandler36ComputePotentialWalkIntoFireResponseEP6CEventP5CTaskS3_; CEventHandler::ComputePotentialWalkIntoFireResponse(CEvent *,CTask *,CTask *)
37C14A:  MOV             R0, R8; jumptable 0037BB6A case 49
37C14C:  MOV             R1, R5; CEvent *
37C14E:  MOV             R3, R6; CTask *
37C150:  ADD             SP, SP, #0x30 ; '0'
37C152:  POP.W           {R8-R10}
37C156:  POP.W           {R4-R7,LR}
37C15A:  B.W             _ZN13CEventHandler33ComputeShotFiredWhizzedByResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeShotFiredWhizzedByResponse(CEvent *,CTask *,CTask *)
37C15E:  MOV             R0, R8; jumptable 0037BB6A case 50
37C160:  MOV             R1, R5; CEvent *
37C162:  ADD             SP, SP, #0x30 ; '0'
37C164:  POP.W           {R8-R10}
37C168:  POP.W           {R4-R7,LR}
37C16C:  B.W             _ZN13CEventHandler31ComputeLowAngerAtPlayerResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeLowAngerAtPlayerResponse(CEvent *,CTask *,CTask *)
37C170:  LDRSH.W         R0, [R5,#0xA]; jumptable 0037BB6A case 52
37C174:  CMP             R0, #0xC8
37C176:  BEQ.W           loc_37C3D0
37C17A:  MOVW            R1, #0x201; unsigned int
37C17E:  CMP             R0, R1
37C180:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C184:  MOVS            R0, #dword_24; this
37C186:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C18A:  MOVS            R1, #0
37C18C:  ADD             R3, SP, #0x48+var_24; CVector *
37C18E:  STRD.W          R1, R1, [SP,#0x48+var_24]
37C192:  MOVS            R2, #0; int
37C194:  STR             R1, [SP,#0x48+var_1C]
37C196:  MOVS            R1, #1
37C198:  STR             R1, [SP,#0x48+var_48]; bool
37C19A:  MOVS            R1, #0; CVehicle *
37C19C:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
37C1A0:  LDR             R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x37C1A6)
37C1A2:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
37C1A4:  B               loc_37C41E
37C1A6:  LDRSH.W         R0, [R5,#0xA]; jumptable 0037BB6A case 53
37C1AA:  CMP             R0, #0xC8
37C1AC:  BEQ.W           loc_37C3D0
37C1B0:  MOVW            R1, #0x201; unsigned int
37C1B4:  CMP             R0, R1
37C1B6:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C1BA:  MOVS            R0, #dword_24; this
37C1BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C1C0:  MOVS            R1, #0
37C1C2:  ADD             R3, SP, #0x48+var_24; CVector *
37C1C4:  STRD.W          R1, R1, [SP,#0x48+var_24]
37C1C8:  MOVS            R2, #0; int
37C1CA:  STR             R1, [SP,#0x48+var_1C]
37C1CC:  MOVS            R1, #1
37C1CE:  STR             R1, [SP,#0x48+var_48]; bool
37C1D0:  MOVS            R1, #0; CVehicle *
37C1D2:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
37C1D6:  LDR             R1, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x37C1DC)
37C1D8:  ADD             R1, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
37C1DA:  B               loc_37C41E
37C1DC:  MOV             R0, R8; jumptable 0037BB6A case 56
37C1DE:  MOV             R1, R5; CEvent *
37C1E0:  MOV             R3, R6; CTask *
37C1E2:  ADD             SP, SP, #0x30 ; '0'
37C1E4:  POP.W           {R8-R10}
37C1E8:  POP.W           {R4-R7,LR}
37C1EC:  B.W             _ZN13CEventHandler47ComputeVehiclePotentialPassiveCollisionResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehiclePotentialPassiveCollisionResponse(CEvent *,CTask *,CTask *)
37C1F0:  LDR.W           R0, [R8]; jumptable 0037BB6A case 58
37C1F4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37C1F8:  CMP             R0, #1
37C1FA:  BNE.W           loc_37C47C
37C1FE:  LDR.W           R0, [R8]
37C202:  MOVS            R1, #4; int
37C204:  LDR.W           R0, [R0,#0x440]
37C208:  ADDS            R0, #4; this
37C20A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
37C20E:  CMP             R0, #0
37C210:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C214:  MOVS            R0, #off_18; this
37C216:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C21A:  BLX             j__ZN23CTaskSimplePlayerOnFireC2Ev; CTaskSimplePlayerOnFire::CTaskSimplePlayerOnFire(void)
37C21E:  STR.W           R0, [R8,#0x30]
37C222:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C224:  LDR             R0, [R5]; jumptable 0037BB6A case 62
37C226:  LDR             R1, [R0,#0x2C]
37C228:  MOV             R0, R5
37C22A:  BLX             R1
37C22C:  CMP             R0, #0
37C22E:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C232:  LDRSH.W         R0, [R5,#0xA]
37C236:  CMP             R0, #0xC8
37C238:  BEQ.W           loc_37C488
37C23C:  MOVW            R1, #0x3A7; unsigned int
37C240:  CMP             R0, R1
37C242:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C246:  MOVS            R0, #dword_1C; this
37C248:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C24C:  MOV             R6, R5
37C24E:  MOV             R4, R0
37C250:  LDR.W           R0, [R6],#0x1C
37C254:  LDR             R1, [R0,#0x2C]
37C256:  MOV             R0, R5
37C258:  BLX             R1
37C25A:  MOV             R2, R0; CEntity *
37C25C:  MOV             R0, R4; this
37C25E:  MOV             R1, R6; CVector *
37C260:  BLX             j__ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity; CTaskComplexInvestigateDisturbance::CTaskComplexInvestigateDisturbance(CVector const&,CEntity *)
37C264:  STR.W           R4, [R8,#0x24]
37C268:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C26A:  LDR             R4, [R5,#0x10]; jumptable 0037BB6A case 63
37C26C:  CMP             R4, #0
37C26E:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C272:  LDRSH.W         R0, [R5,#0xA]
37C276:  CMP             R0, #0xC8
37C278:  BEQ.W           loc_37C3D0
37C27C:  MOVW            R1, #0x3A7; unsigned int
37C280:  CMP             R0, R1
37C282:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C286:  MOVS            R0, #dword_1C; this
37C288:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C28C:  ADD.W           R1, R5, #0x18; CVector *
37C290:  MOV             R2, R4; CEntity *
37C292:  BLX             j__ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity; CTaskComplexInvestigateDisturbance::CTaskComplexInvestigateDisturbance(CVector const&,CEntity *)
37C296:  B               loc_37C4B0
37C298:  MOV             R0, R8; jumptable 0037BB6A case 64
37C29A:  MOV             R1, R5; CEvent *
37C29C:  ADD             SP, SP, #0x30 ; '0'
37C29E:  POP.W           {R8-R10}
37C2A2:  POP.W           {R4-R7,LR}
37C2A6:  B.W             _ZN13CEventHandler26ComputeWaterCannonResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeWaterCannonResponse(CEvent *,CTask *,CTask *)
37C2AA:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 67
37C2AC:  CMP             R4, #0
37C2AE:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C2B2:  MOVS            R0, #dword_24; this
37C2B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C2B8:  MOV             R1, R4; CPed *
37C2BA:  BLX             j__ZN34CTaskSimpleWaitUntilAreaCodesMatchC2EP4CPed; CTaskSimpleWaitUntilAreaCodesMatch::CTaskSimpleWaitUntilAreaCodesMatch(CPed *)
37C2BE:  B               loc_37C4B0
37C2C0:  MOVS            R0, #off_18; jumptable 0037BB6A case 69
37C2C2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C2C6:  BLX             j__ZN25CTaskComplexPolicePursuitC2Ev; CTaskComplexPolicePursuit::CTaskComplexPolicePursuit(void)
37C2CA:  B               loc_37C4B0
37C2CC:  LDR             R6, [R5,#0x10]; jumptable 0037BB6A case 72
37C2CE:  CMP             R6, #0
37C2D0:  BEQ.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C2D4:  LDRSH.W         R0, [R5,#0xA]
37C2D8:  CMP             R0, #0xC8
37C2DA:  BEQ             loc_37C3D0
37C2DC:  CMP.W           R0, #0x3E8
37C2E0:  BEQ.W           loc_37C494
37C2E4:  MOVW            R1, #0x38F; unsigned int
37C2E8:  CMP             R0, R1
37C2EA:  BNE.W           def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C2EE:  MOVS            R0, #dword_40; this
37C2F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C2F4:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37C2FE)
37C2F6:  LDR             R5, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37C302)
37C2F8:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x37C304)
37C2FA:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37C2FC:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x37C308)
37C2FE:  ADD             R5, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37C300:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
37C302:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
37C304:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
37C306:  LDR             R5, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
37C308:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
37C30A:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
37C30C:  VLDR            S0, [R2]
37C310:  LDR             R2, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
37C312:  LDR             R3, [R1]; float
37C314:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
37C316:  STRD.W          R1, R2, [SP,#0x48+var_48]; int
37C31A:  MOV             R1, R6; CEntity *
37C31C:  MOVS            R2, #0; bool
37C31E:  VSTR            S0, [SP,#0x48+var_40]
37C322:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
37C326:  B               loc_37C4B0
37C328:  MOV             R0, R8; jumptable 0037BB6A case 79
37C32A:  MOV             R1, R5; CEvent *
37C32C:  ADD             SP, SP, #0x30 ; '0'
37C32E:  POP.W           {R8-R10}
37C332:  POP.W           {R4-R7,LR}
37C336:  B.W             _ZN13CEventHandler28ComputeVehicleOnFireResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeVehicleOnFireResponse(CEvent *,CTask *,CTask *)
37C33A:  MOVS            R0, #dword_14; jumptable 0037BB6A case 94
37C33C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C340:  MOVS            R1, #0; unsigned __int8
37C342:  BLX             j__ZN27CTaskComplexGangJoinRespondC2Eh; CTaskComplexGangJoinRespond::CTaskComplexGangJoinRespond(uchar)
37C346:  B               loc_37C4B0
37C348:  LDR             R4, [R5,#0xC]; jumptable 0037BB6A case 19
37C34A:  CMP             R4, #0
37C34C:  BEQ             loc_37C3D0
37C34E:  LDR.W           R0, [R8]
37C352:  MOVW            R1, #0x4B4; int
37C356:  LDRB            R5, [R5,#9]
37C358:  LDR.W           R0, [R0,#0x440]; this
37C35C:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37C360:  CBNZ            R0, loc_37C3D0
37C362:  BLX             rand
37C366:  MOVS            R0, #dword_78; this
37C368:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C36C:  LDR             R1, =(aEventchatpartn - 0x37C37E); "EventChatPartnerResponse"
37C36E:  MOVS            R2, #0
37C370:  MOV.W           R12, #1
37C374:  MOVS            R6, #4
37C376:  MOV.W           R3, #0x3F000000
37C37A:  ADD             R1, PC; "EventChatPartnerResponse"
37C37C:  STMEA.W         SP, {R3,R6,R12}
37C380:  MOV             R3, R5
37C382:  STRD.W          R2, R2, [SP,#0x48+var_3C]
37C386:  STRD.W          R2, R2, [SP,#0x48+var_34]
37C38A:  MOV             R2, R4
37C38C:  BLX             j__ZN23CTaskComplexPartnerChatC2EPcP4CPedhfihh7CVector; CTaskComplexPartnerChat::CTaskComplexPartnerChat(char *,CPed *,uchar,float,int,uchar,uchar,CVector)
37C390:  B               loc_37C4B0
37C392:  MOV             R0, R8; jumptable 0037BB6A case 42
37C394:  MOV             R1, R5; CEvent *
37C396:  ADD             SP, SP, #0x30 ; '0'
37C398:  POP.W           {R8-R10}
37C39C:  POP.W           {R4-R7,LR}
37C3A0:  B.W             _ZN13CEventHandler22ComputeSpecialResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeSpecialResponse(CEvent *,CTask *,CTask *)
37C3A4:  MOV             R0, R8; jumptable 0037BB6A case 51
37C3A6:  MOV             R1, R5; CEvent *
37C3A8:  ADD             SP, SP, #0x30 ; '0'
37C3AA:  POP.W           {R8-R10}
37C3AE:  POP.W           {R4-R7,LR}
37C3B2:  B.W             _ZN13CEventHandler32ComputeHighAngerAtPlayerResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeHighAngerAtPlayerResponse(CEvent *,CTask *,CTask *)
37C3B6:  LDRSH.W         R0, [R5,#0xA]; jumptable 0037BB6A case 59
37C3BA:  CMP             R0, #0xC8
37C3BC:  BEQ             loc_37C3D0
37C3BE:  CMP.W           R0, #0x25C
37C3C2:  BNE             def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C3C4:  MOVS            R0, #word_10; this
37C3C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C3CA:  BLX             j__ZN27CTaskComplexExtinguishFiresC2Ev; CTaskComplexExtinguishFires::CTaskComplexExtinguishFires(void)
37C3CE:  B               loc_37C4B0
37C3D0:  MOVS            R0, #0
37C3D2:  B               loc_37C4B0
37C3D4:  MOV             R0, R8; jumptable 0037BB6A case 65
37C3D6:  MOV             R1, R5; CEvent *
37C3D8:  ADD             SP, SP, #0x30 ; '0'
37C3DA:  POP.W           {R8-R10}
37C3DE:  POP.W           {R4-R7,LR}
37C3E2:  B.W             _ZN13CEventHandler30ComputeSeenPanickedPedResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeSeenPanickedPedResponse(CEvent *,CTask *,CTask *)
37C3E6:  MOVS            R0, #(byte_9+3); jumptable 0037BB6A case 66
37C3E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C3EC:  BLX             j__ZN19CTaskComplexInWaterC2Ev; CTaskComplexInWater::CTaskComplexInWater(void)
37C3F0:  B               loc_37C4B0
37C3F2:  MOV             R0, R8; jumptable 0037BB6A case 70
37C3F4:  MOV             R1, R5; CEvent *
37C3F6:  ADD             SP, SP, #0x30 ; '0'
37C3F8:  POP.W           {R8-R10}
37C3FC:  POP.W           {R4-R7,LR}
37C400:  B.W             _ZN13CEventHandler32ComputeCreatePartnerTaskResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeCreatePartnerTaskResponse(CEvent *,CTask *,CTask *)
37C404:  MOVS            R0, #dword_20; jumptable 0037BB6A case 74
37C406:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C40A:  MOV.W           R1, #0x41000000
37C40E:  MOVS            R2, #1; bool
37C410:  STR             R1, [SP,#0x48+var_48]; float
37C412:  MOVS            R1, #0; int
37C414:  MOVS            R3, #0; bool
37C416:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf_0; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
37C41A:  LDR             R1, =(_ZTV22CTaskSimpleOnEscalator_ptr - 0x37C420)
37C41C:  ADD             R1, PC; _ZTV22CTaskSimpleOnEscalator_ptr
37C41E:  LDR             R1, [R1]; `vtable for'CTaskSimpleOnEscalator
37C420:  ADDS            R1, #8
37C422:  STR             R1, [R0]
37C424:  B               loc_37C4B0
37C426:  MOV             R0, R8; jumptable 0037BB6A case 75
37C428:  MOV             R1, R5; CEvent *
37C42A:  ADD             SP, SP, #0x30 ; '0'
37C42C:  POP.W           {R8-R10}
37C430:  POP.W           {R4-R7,LR}
37C434:  B.W             _ZN13CEventHandler21ComputeDangerResponseEP6CEventP5CTaskS3_; CEventHandler::ComputeDangerResponse(CEvent *,CTask *,CTask *)
37C438:  MOVS            R0, #dword_1C; jumptable 0037BB6A case 81
37C43A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C43E:  ADD.W           R3, R5, #0xC
37C442:  LDM             R3, {R1-R3}
37C444:  LDRB            R6, [R5,#0x18]
37C446:  STR             R6, [SP,#0x48+var_48]
37C448:  BLX             j__ZN20CTaskInteriorUseInfoC2EP14InteriorInfo_tP10Interior_cih; CTaskInteriorUseInfo::CTaskInteriorUseInfo(InteriorInfo_t *,Interior_c *,int,uchar)
37C44C:  B               loc_37C4B0
37C44E:  MOVS            R0, #off_18; jumptable 0037BB6A case 88
37C450:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C454:  LDRD.W          R1, R2, [R5,#0xC]; int
37C458:  LDRB            R3, [R5,#0x14]; unsigned __int8
37C45A:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
37C45E:  B               loc_37C4B0
37C460:  MOVS            R0, #word_30; jumptable 0037BB6A case 89
37C462:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C466:  LDR             R1, [R5,#0xC]; CPed *
37C468:  LDRB            R2, [R5,#0x10]; unsigned __int8
37C46A:  BLX             j__ZN22CTaskComplexPassObjectC2EP4CPedh; CTaskComplexPassObject::CTaskComplexPassObject(CPed *,uchar)
37C46E:  B               loc_37C4B0
37C470:  MOVS            R0, #(byte_9+3); jumptable 0037BB6A case 93
37C472:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C476:  BLX             j__ZN22CTaskComplexStuckInAirC2Ev; CTaskComplexStuckInAir::CTaskComplexStuckInAir(void)
37C47A:  B               loc_37C4B0
37C47C:  MOVS            R0, #(byte_9+3); this
37C47E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C482:  BLX             j__ZN18CTaskComplexOnFireC2Ev; CTaskComplexOnFire::CTaskComplexOnFire(void)
37C486:  B               loc_37C4B0
37C488:  MOVS            R4, #0
37C48A:  STR.W           R4, [R8,#0x24]
37C48E:  B               def_37BB6A; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C490:  DCFS 0.000015259
37C494:  MOVS            R0, #dword_38; this
37C496:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37C49A:  MOVS            R2, #0
37C49C:  MOVS            R1, #1
37C49E:  STRD.W          R2, R2, [SP,#0x48+var_48]; unsigned int
37C4A2:  MOV.W           R2, #0xFFFFFFFF; int
37C4A6:  STR             R1, [SP,#0x48+var_40]; int
37C4A8:  MOV             R1, R6; CPed *
37C4AA:  MOVS            R3, #0; unsigned int
37C4AC:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
37C4B0:  STR.W           R0, [R8,#0x24]
37C4B4:  ADD             SP, SP, #0x30 ; '0'; jumptable 0037BB6A default case, cases 14,22-24,29,30,34,40,47,54,55,57,60,61,68,71,76-78,80,82-87,90-92
37C4B6:  POP.W           {R8-R10}
37C4BA:  POP             {R4-R7,PC}
