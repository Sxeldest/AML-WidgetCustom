; =========================================================
; Game Engine Function: _Z29RwTexDictionaryGtaStreamRead2P8RwStreamP15RwTexDictionary
; Address            : 0x5D35F4 - 0x5D3662
; =========================================================

5D35F4:  PUSH            {R4-R7,LR}
5D35F6:  ADD             R7, SP, #0xC
5D35F8:  PUSH.W          {R11}
5D35FC:  MOV             R5, R0
5D35FE:  LDR             R0, =(dword_A83EC8 - 0x5D3608)
5D3600:  MOV             R4, R1
5D3602:  LDR             R1, [R5,#0xC]
5D3604:  ADD             R0, PC; dword_A83EC8
5D3606:  LDR             R0, [R0]
5D3608:  SUBS            R1, R0, R1
5D360A:  MOV             R0, R5
5D360C:  BLX.W           j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
5D3610:  LDR             R0, =(dword_6B2C10 - 0x5D3616)
5D3612:  ADD             R0, PC; dword_6B2C10
5D3614:  LDR             R1, [R0]
5D3616:  CMP             R1, #0
5D3618:  SUB.W           R2, R1, #1
5D361C:  STR             R2, [R0]
5D361E:  BEQ             loc_5D3640
5D3620:  LDR             R6, =(dword_6B2C10 - 0x5D3626)
5D3622:  ADD             R6, PC; dword_6B2C10
5D3624:  MOV             R0, R5
5D3626:  BLX.W           j__Z22RwTextureGtaStreamReadP8RwStream; RwTextureGtaStreamRead(RwStream *)
5D362A:  MOV             R1, R0
5D362C:  CBZ             R1, loc_5D3644
5D362E:  MOV             R0, R4
5D3630:  BLX.W           j__Z25RwTexDictionaryAddTextureP15RwTexDictionaryP9RwTexture; RwTexDictionaryAddTexture(RwTexDictionary *,RwTexture *)
5D3634:  LDR             R0, [R6]
5D3636:  CMP             R0, #0
5D3638:  SUB.W           R1, R0, #1
5D363C:  STR             R1, [R6]
5D363E:  BNE             loc_5D3624
5D3640:  MOV             R5, R4
5D3642:  B               loc_5D365A
5D3644:  LDR             R0, =(_Z14destroyTextureP9RwTexturePv_ptr - 0x5D364E)
5D3646:  MOVS            R2, #0
5D3648:  MOVS            R5, #0
5D364A:  ADD             R0, PC; _Z14destroyTextureP9RwTexturePv_ptr
5D364C:  LDR             R1, [R0]; destroyTexture(RwTexture *,void *)
5D364E:  MOV             R0, R4
5D3650:  BLX.W           j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
5D3654:  MOV             R0, R4
5D3656:  BLX.W           j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
5D365A:  MOV             R0, R5
5D365C:  POP.W           {R11}
5D3660:  POP             {R4-R7,PC}
