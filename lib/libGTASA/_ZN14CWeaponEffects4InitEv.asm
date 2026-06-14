; =========================================================
; Game Engine Function: _ZN14CWeaponEffects4InitEv
; Address            : 0x5E3108 - 0x5E318E
; =========================================================

5E3108:  PUSH            {R4,R6,R7,LR}
5E310A:  ADD             R7, SP, #8
5E310C:  LDR             R0, =(gCrossHair_ptr - 0x5E311A)
5E310E:  MOVS            R3, #0xFF
5E3110:  MOVS            R1, #0
5E3112:  MOV.W           R2, #0x3F800000
5E3116:  ADD             R0, PC; gCrossHair_ptr
5E3118:  MOVT            R3, #0x7F00
5E311C:  LDR             R0, [R0]; gCrossHair ; this
5E311E:  STRB            R1, [R0]
5E3120:  STRD.W          R1, R1, [R0,#(dword_A86210 - 0xA8620C)]
5E3124:  STRD.W          R1, R1, [R0,#(dword_A86218 - 0xA8620C)]
5E3128:  STRD.W          R3, R2, [R0,#(dword_A86220 - 0xA8620C)]
5E312C:  STR             R1, [R0,#(dword_A86228 - 0xA8620C)]
5E312E:  STRB.W          R1, [R0,#(byte_A86234 - 0xA8620C)]
5E3132:  STR             R1, [R0,#(dword_A86230 - 0xA8620C)]
5E3134:  STRB.W          R1, [R0,#(byte_A86238 - 0xA8620C)]
5E3138:  STRD.W          R1, R1, [R0,#(dword_A8623C - 0xA8620C)]
5E313C:  STRD.W          R1, R1, [R0,#(dword_A86244 - 0xA8620C)]
5E3140:  STRD.W          R3, R2, [R0,#(dword_A8624C - 0xA8620C)]
5E3144:  STR             R1, [R0,#(dword_A86254 - 0xA8620C)]
5E3146:  STRB.W          R1, [R0,#(byte_A86260 - 0xA8620C)]
5E314A:  STR             R1, [R0,#(dword_A8625C - 0xA8620C)]
5E314C:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5E3150:  ADR             R0, aParticle_8; "particle"
5E3152:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5E3156:  MOVS            R1, #0; int
5E3158:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5E315C:  ADR             R0, aTarget256_0; "target256"
5E315E:  ADR             R1, aTarget256m; "target256m"
5E3160:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5E3164:  LDR             R1, =(gpCrossHairTex_ptr - 0x5E316A)
5E3166:  ADD             R1, PC; gpCrossHairTex_ptr
5E3168:  LDR             R1, [R1]; gpCrossHairTex
5E316A:  STR             R0, [R1]
5E316C:  ADR             R0, aLockon; "lockon"
5E316E:  ADR             R1, aLockona; "lockonA"
5E3170:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5E3174:  LDR             R1, =(gpCrossHairTexFlight_ptr - 0x5E317A)
5E3176:  ADD             R1, PC; gpCrossHairTexFlight_ptr
5E3178:  LDR             R4, [R1]; gpCrossHairTexFlight
5E317A:  ADR             R1, aLockonfirea; "lockonFireA"
5E317C:  STR             R0, [R4]
5E317E:  ADR             R0, aLockonfire; "lockonFire"
5E3180:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5E3184:  STR             R0, [R4,#(dword_A8626C - 0xA86268)]
5E3186:  POP.W           {R4,R6,R7,LR}
5E318A:  B.W             sub_1979CC
