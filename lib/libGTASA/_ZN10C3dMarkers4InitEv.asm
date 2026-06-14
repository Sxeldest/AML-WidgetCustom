; =========================================================
; Game Engine Function: _ZN10C3dMarkers4InitEv
; Address            : 0x5BFB10 - 0x5BFC9E
; =========================================================

5BFB10:  PUSH            {R4-R7,LR}
5BFB12:  ADD             R7, SP, #0xC
5BFB14:  PUSH.W          {R8,R9,R11}
5BFB18:  SUB             SP, SP, #0x10
5BFB1A:  LDR             R1, =(_ZN10C3dMarkers14m_aMarkerArrayE_ptr - 0x5BFB28)
5BFB1C:  ADR             R2, dword_5BFCA0
5BFB1E:  VLD1.64         {D16-D17}, [R2@128]
5BFB22:  ADR             R2, dword_5BFCB0
5BFB24:  ADD             R1, PC; _ZN10C3dMarkers14m_aMarkerArrayE_ptr
5BFB26:  MOVW            R8, #:lower16:stru_503F8.st_size
5BFB2A:  VLD1.64         {D18-D19}, [R2@128]
5BFB2E:  MOVS            R0, #0
5BFB30:  MOVW            R12, #0x101
5BFB34:  MOV.W           LR, #0xFFFFFFFF
5BFB38:  LDR             R1, [R1]; C3dMarkers::m_aMarkerArray ...
5BFB3A:  MOVT            R8, #:upper16:stru_503F8.st_size
5BFB3E:  MOV.W           R5, #0x3F800000
5BFB42:  MOVW            R4, #0x7530
5BFB46:  MOVS            R2, #0
5BFB48:  ADDS            R3, R1, R2
5BFB4A:  ADDS            R2, #0xA0
5BFB4C:  ADD.W           R6, R3, #0x64 ; 'd'
5BFB50:  CMP.W           R2, #0x1400
5BFB54:  STR             R0, [R3,#0x48]
5BFB56:  STRD.W          R12, R0, [R3,#0x50]
5BFB5A:  STRD.W          LR, R8, [R3,#0x58]
5BFB5E:  STR             R0, [R3,#0x60]
5BFB60:  STRD.W          R0, R0, [R3,#0x74]
5BFB64:  STRD.W          R0, R5, [R3,#0x7C]
5BFB68:  STRH.W          R4, [R3,#0x84]
5BFB6C:  ADD.W           R3, R3, #0x8C
5BFB70:  VST1.32         {D18-D19}, [R6]
5BFB74:  VST1.32         {D16-D17}, [R3]
5BFB78:  BNE             loc_5BFB48
5BFB7A:  LDR             R1, =(_ZN10C3dMarkers16NumActiveMarkersE_ptr - 0x5BFB86)
5BFB7C:  VMOV.I32        Q8, #0
5BFB80:  LDR             R3, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BFB8A)
5BFB82:  ADD             R1, PC; _ZN10C3dMarkers16NumActiveMarkersE_ptr
5BFB84:  LDR             R2, =(_ZN10C3dMarkers14m_angleDiamondE_ptr - 0x5BFB8E)
5BFB86:  ADD             R3, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BFB88:  LDR             R0, =(aParticle_10 - 0x5BFB9A); "particle"
5BFB8A:  ADD             R2, PC; _ZN10C3dMarkers14m_angleDiamondE_ptr
5BFB8C:  LDR             R1, [R1]; C3dMarkers::NumActiveMarkers ...
5BFB8E:  LDR.W           R8, [R3]; C3dMarkers::m_pRpClumpArray ...
5BFB92:  MOVS            R3, #0
5BFB94:  LDR             R2, [R2]; C3dMarkers::m_angleDiamond ...
5BFB96:  ADD             R0, PC; "particle"
5BFB98:  STR             R3, [R1]; C3dMarkers::NumActiveMarkers
5BFB9A:  ADD.W           R1, R8, #0xC; char *
5BFB9E:  MOV             R9, R8
5BFBA0:  VST1.32         {D16-D17}, [R1]
5BFBA4:  STR             R3, [R2]; C3dMarkers::m_angleDiamond
5BFBA6:  VST1.32         {D16-D17}, [R9]!
5BFBAA:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5BFBAE:  MOV             R4, R0
5BFBB0:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5BFBB4:  MOV             R0, R4; this
5BFBB6:  MOVS            R1, #0; int
5BFBB8:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5BFBBC:  ADR             R0, dword_5BFCD4; this
5BFBBE:  BLX.W           j__ZN8CFileMgr9ChangeDirEPKc; CFileMgr::ChangeDir(char const*)
5BFBC2:  ADR             R0, aCylinder; "cylinder"
5BFBC4:  ADD             R1, SP, #0x28+var_20; char *
5BFBC6:  BLX.W           j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
5BFBCA:  MOV             R4, R0
5BFBCC:  LDR             R0, [SP,#0x28+var_20]; this
5BFBCE:  MOVS            R1, #2; int
5BFBD0:  BLX.W           j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5BFBD4:  MOVS            R0, #0; this
5BFBD6:  BLX.W           j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
5BFBDA:  LDR             R0, [R4]
5BFBDC:  LDR             R1, [R0,#0x2C]
5BFBDE:  MOV             R0, R4
5BFBE0:  BLX             R1
5BFBE2:  MOV             R5, R0
5BFBE4:  MOV             R0, R4; this
5BFBE6:  BLX.W           j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
5BFBEA:  BLX.W           j__Z13RpClumpCreatev; RpClumpCreate(void)
5BFBEE:  LDR             R6, [R5,#4]
5BFBF0:  MOV             R4, R0
5BFBF2:  MOV             R0, R6
5BFBF4:  BLX.W           j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
5BFBF8:  MOV             R0, R4
5BFBFA:  MOV             R1, R5
5BFBFC:  BLX.W           j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
5BFC00:  ADR             R0, aHoop; "hoop"
5BFC02:  ADD             R1, SP, #0x28+var_1C; char *
5BFC04:  STR             R6, [R4,#4]
5BFC06:  STR.W           R4, [R8,#(dword_A5795C - 0xA57958)]
5BFC0A:  BLX.W           j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
5BFC0E:  MOV             R4, R0
5BFC10:  LDR             R0, [SP,#0x28+var_1C]; this
5BFC12:  MOVS            R1, #2; int
5BFC14:  BLX.W           j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5BFC18:  MOVS            R0, #0; this
5BFC1A:  BLX.W           j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
5BFC1E:  LDR             R0, [R4]
5BFC20:  LDR             R1, [R0,#0x2C]
5BFC22:  MOV             R0, R4
5BFC24:  BLX             R1
5BFC26:  MOV             R5, R0
5BFC28:  MOV             R0, R4; this
5BFC2A:  BLX.W           j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
5BFC2E:  BLX.W           j__Z13RpClumpCreatev; RpClumpCreate(void)
5BFC32:  LDR             R6, [R5,#4]
5BFC34:  MOV             R4, R0
5BFC36:  MOV             R0, R6
5BFC38:  BLX.W           j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
5BFC3C:  MOV             R0, R4
5BFC3E:  MOV             R1, R5
5BFC40:  BLX.W           j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
5BFC44:  ADR             R0, aDiamond3; "diamond_3"
5BFC46:  ADD             R1, SP, #0x28+var_24; char *
5BFC48:  STR             R6, [R4,#4]
5BFC4A:  STR.W           R4, [R9]
5BFC4E:  BLX.W           j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
5BFC52:  MOV             R4, R0
5BFC54:  LDR             R0, [SP,#0x28+var_24]; this
5BFC56:  MOVS            R1, #2; int
5BFC58:  BLX.W           j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
5BFC5C:  MOVS            R0, #0; this
5BFC5E:  BLX.W           j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
5BFC62:  LDR             R0, [R4]
5BFC64:  LDR             R1, [R0,#0x2C]
5BFC66:  MOV             R0, R4
5BFC68:  BLX             R1
5BFC6A:  MOV             R5, R0
5BFC6C:  MOV             R0, R4; this
5BFC6E:  BLX.W           j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
5BFC72:  BLX.W           j__Z13RpClumpCreatev; RpClumpCreate(void)
5BFC76:  LDR             R6, [R5,#4]
5BFC78:  MOV             R4, R0
5BFC7A:  MOV             R0, R6
5BFC7C:  BLX.W           j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
5BFC80:  MOV             R0, R4
5BFC82:  MOV             R1, R5
5BFC84:  BLX.W           j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
5BFC88:  STR             R6, [R4,#4]
5BFC8A:  STR.W           R4, [R8]; C3dMarkers::m_pRpClumpArray
5BFC8E:  STRD.W          R4, R4, [R8,#(dword_A5796C - 0xA57958)]
5BFC92:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5BFC96:  ADD             SP, SP, #0x10
5BFC98:  POP.W           {R8,R9,R11}
5BFC9C:  POP             {R4-R7,PC}
