; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader13LoadSoundBankEts
; Address            : 0x27E390 - 0x27E3F8
; =========================================================

27E390:  PUSH            {R4-R7,LR}
27E392:  ADD             R7, SP, #0xC
27E394:  PUSH.W          {R11}
27E398:  SUB             SP, SP, #8
27E39A:  MOV             R6, R0
27E39C:  MOV             R5, R2
27E39E:  LDRB            R0, [R6,#0x18]
27E3A0:  MOV             R4, R1
27E3A2:  CBZ             R0, loc_27E3F0
27E3A4:  LDRSH.W         R0, [R6,#0x12]
27E3A8:  CMP             R4, R0
27E3AA:  BGT             loc_27E3F0
27E3AC:  CMP             R5, #0
27E3AE:  ITT GE
27E3B0:  LDRSHGE.W       R0, [R6,#0x10]
27E3B4:  CMPGE           R0, R5
27E3B6:  BLT             loc_27E3F0
27E3B8:  LDR             R0, [R6,#0x30]
27E3BA:  ADD.W           R1, R5, R5,LSL#2
27E3BE:  LDRH.W          R2, [R0,R1,LSL#2]
27E3C2:  CMP             R2, R4
27E3C4:  BNE             loc_27E3D4
27E3C6:  ADD.W           R0, R0, R1,LSL#2
27E3CA:  MOVW            R1, #0xFFFF
27E3CE:  LDRH            R0, [R0,#0x10]
27E3D0:  CMP             R0, R1
27E3D2:  BEQ             loc_27E3F0
27E3D4:  ADDS            R0, R6, #4; this
27E3D6:  MOV             R1, R4; unsigned __int16
27E3D8:  BLX             j__ZN13CAEBankLoader13GetBankLookupEt; CAEBankLoader::GetBankLookup(ushort)
27E3DC:  LDRB            R0, [R0]; this
27E3DE:  MOV             R2, R4; int
27E3E0:  LDR             R1, [R6,#0x24]
27E3E2:  MOV.W           R3, #0xFFFFFFFF; int
27E3E6:  LDR.W           R1, [R1,R0,LSL#2]; ZIPFile *
27E3EA:  STR             R5, [SP,#0x18+var_18]; int
27E3EC:  BLX             j__ZN16CAEMP3BankLoader11LoadRequestEP7ZIPFileiii; CAEMP3BankLoader::LoadRequest(ZIPFile *,int,int,int)
27E3F0:  ADD             SP, SP, #8
27E3F2:  POP.W           {R11}
27E3F6:  POP             {R4-R7,PC}
