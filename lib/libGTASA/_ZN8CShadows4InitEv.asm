; =========================================================
; Game Engine Function: _ZN8CShadows4InitEv
; Address            : 0x5B87A0 - 0x5B89C6
; =========================================================

5B87A0:  PUSH            {R4,R6,R7,LR}
5B87A2:  ADD             R7, SP, #8
5B87A4:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5B87A8:  LDR             R0, =(aParticle_10 - 0x5B87AE); "particle"
5B87AA:  ADD             R0, PC; "particle"
5B87AC:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5B87B0:  MOVS            R1, #0; int
5B87B2:  MOVS            R4, #0
5B87B4:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5B87B8:  LDR             R0, =(aShadCar - 0x5B87C0); "shad_car"
5B87BA:  MOVS            R1, #0; char *
5B87BC:  ADD             R0, PC; "shad_car"
5B87BE:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B87C2:  LDR             R1, =(gpShadowCarTex_ptr - 0x5B87C8)
5B87C4:  ADD             R1, PC; gpShadowCarTex_ptr
5B87C6:  LDR             R2, [R1]; gpShadowCarTex
5B87C8:  LDR             R1, =(aShadPed - 0x5B87CE); "shad_ped"
5B87CA:  ADD             R1, PC; "shad_ped"
5B87CC:  STR             R0, [R2]
5B87CE:  MOV             R0, R1; char *
5B87D0:  MOVS            R1, #0; char *
5B87D2:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B87D6:  LDR             R1, =(gpShadowPedTex_ptr - 0x5B87DC)
5B87D8:  ADD             R1, PC; gpShadowPedTex_ptr
5B87DA:  LDR             R2, [R1]; gpShadowPedTex
5B87DC:  LDR             R1, =(aShadHeli - 0x5B87E2); "shad_heli"
5B87DE:  ADD             R1, PC; "shad_heli"
5B87E0:  STR             R0, [R2]
5B87E2:  MOV             R0, R1; char *
5B87E4:  MOVS            R1, #0; char *
5B87E6:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B87EA:  LDR             R1, =(gpShadowHeliTex_ptr - 0x5B87F0)
5B87EC:  ADD             R1, PC; gpShadowHeliTex_ptr
5B87EE:  LDR             R2, [R1]; gpShadowHeliTex
5B87F0:  LDR             R1, =(aShadBike - 0x5B87F6); "shad_bike"
5B87F2:  ADD             R1, PC; "shad_bike"
5B87F4:  STR             R0, [R2]
5B87F6:  MOV             R0, R1; char *
5B87F8:  MOVS            R1, #0; char *
5B87FA:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B87FE:  LDR             R1, =(gpShadowBikeTex_ptr - 0x5B8804)
5B8800:  ADD             R1, PC; gpShadowBikeTex_ptr
5B8802:  LDR             R2, [R1]; gpShadowBikeTex
5B8804:  LDR             R1, =(aShadRcbaron - 0x5B880A); "shad_rcbaron"
5B8806:  ADD             R1, PC; "shad_rcbaron"
5B8808:  STR             R0, [R2]
5B880A:  MOV             R0, R1; char *
5B880C:  MOVS            R1, #0; char *
5B880E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8812:  LDR             R1, =(gpShadowBaronTex_ptr - 0x5B8818)
5B8814:  ADD             R1, PC; gpShadowBaronTex_ptr
5B8816:  LDR             R1, [R1]; gpShadowBaronTex
5B8818:  STR             R0, [R1]
5B881A:  ADR             R0, aShadExp; "shad_exp"
5B881C:  MOVS            R1, #0; char *
5B881E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8822:  LDR             R1, =(gpShadowExplosionTex_ptr - 0x5B8828)
5B8824:  ADD             R1, PC; gpShadowExplosionTex_ptr
5B8826:  LDR             R1, [R1]; gpShadowExplosionTex
5B8828:  STR             R0, [R1]
5B882A:  ADR             R0, aHeadlight; "headlight"
5B882C:  MOVS            R1, #0; char *
5B882E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8832:  LDR             R1, =(gpShadowHeadLightsTex_ptr - 0x5B8838)
5B8834:  ADD             R1, PC; gpShadowHeadLightsTex_ptr
5B8836:  LDR             R1, [R1]; gpShadowHeadLightsTex
5B8838:  STR             R0, [R1]
5B883A:  ADR             R0, aHeadlight1; "headlight1"
5B883C:  MOVS            R1, #0; char *
5B883E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8842:  LDR             R1, =(gpShadowHeadLightsTex2_ptr - 0x5B8848)
5B8844:  ADD             R1, PC; gpShadowHeadLightsTex2_ptr
5B8846:  LDR             R1, [R1]; gpShadowHeadLightsTex2
5B8848:  STR             R0, [R1]
5B884A:  ADR             R0, aBloodpool64; "bloodpool_64"
5B884C:  MOVS            R1, #0; char *
5B884E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8852:  LDR             R1, =(gpBloodPoolTex_ptr - 0x5B8858)
5B8854:  ADD             R1, PC; gpBloodPoolTex_ptr
5B8856:  LDR             R1, [R1]; gpBloodPoolTex
5B8858:  STR             R0, [R1]
5B885A:  ADR             R0, aHandman; "handman"
5B885C:  MOVS            R1, #0; char *
5B885E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8862:  LDR             R1, =(gpHandManTex_ptr - 0x5B8868)
5B8864:  ADD             R1, PC; gpHandManTex_ptr
5B8866:  LDR             R1, [R1]; gpHandManTex
5B8868:  STR             R0, [R1]
5B886A:  ADR             R0, aWincrack32; "wincrack_32"
5B886C:  MOVS            R1, #0; char *
5B886E:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8872:  LDR             R1, =(gpCrackedGlassTex_ptr - 0x5B8878)
5B8874:  ADD             R1, PC; gpCrackedGlassTex_ptr
5B8876:  LDR             R2, [R1]; gpCrackedGlassTex
5B8878:  LDR             R1, =(aLampShad64 - 0x5B887E); "lamp_shad_64"
5B887A:  ADD             R1, PC; "lamp_shad_64"
5B887C:  STR             R0, [R2]
5B887E:  MOV             R0, R1; char *
5B8880:  MOVS            R1, #0; char *
5B8882:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5B8886:  LDR             R1, =(gpPostShadowTex_ptr - 0x5B888C)
5B8888:  ADD             R1, PC; gpPostShadowTex_ptr
5B888A:  LDR             R1, [R1]; gpPostShadowTex
5B888C:  STR             R0, [R1]
5B888E:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5B8892:  ADR             R0, dword_5B89D0
5B8894:  ADR             R1, dword_5B89E0
5B8896:  VLD1.64         {D16-D17}, [R0@128]
5B889A:  LDR             R0, =(unk_A53500 - 0x5B88A6)
5B889C:  VLD1.64         {D18-D19}, [R1@128]
5B88A0:  ADR             R1, dword_5B89F0
5B88A2:  ADD             R0, PC; unk_A53500
5B88A4:  VLD1.64         {D20-D21}, [R1@128]
5B88A8:  ADD.W           R1, R0, #0x20 ; ' '
5B88AC:  VST1.64         {D20-D21}, [R1@128]
5B88B0:  MOVS            R1, #0
5B88B2:  VST1.16         {D16-D17}, [R0@128]!
5B88B6:  VST1.64         {D18-D19}, [R0@128]
5B88BA:  LDR             R0, =(_ZN8CShadows14aStaticShadowsE_ptr - 0x5B88C0)
5B88BC:  ADD             R0, PC; _ZN8CShadows14aStaticShadowsE_ptr
5B88BE:  LDR             R0, [R0]; CShadows::aStaticShadows ...
5B88C0:  STR             R4, [R0,R1]
5B88C2:  ADDS            R2, R0, R1
5B88C4:  ADDS            R1, #0x40 ; '@'
5B88C6:  CMP.W           R1, #0xC00
5B88CA:  STR             R4, [R2,#4]
5B88CC:  BNE             loc_5B88C0
5B88CE:  LDR             R0, =(_ZN8CShadows15pEmptyBunchListE_ptr - 0x5B88D6)
5B88D0:  LDR             R1, =(_ZN8CShadows12aPolyBunchesE_ptr - 0x5B88D8)
5B88D2:  ADD             R0, PC; _ZN8CShadows15pEmptyBunchListE_ptr
5B88D4:  ADD             R1, PC; _ZN8CShadows12aPolyBunchesE_ptr
5B88D6:  LDR             R0, [R0]; CShadows::pEmptyBunchList ...
5B88D8:  LDR             R1, [R1]; CShadows::aPolyBunches ...
5B88DA:  STR             R1, [R0]; CShadows::pEmptyBunchList
5B88DC:  ADD.W           R0, R1, #0x54 ; 'T'
5B88E0:  MOVW            R1, #0x167
5B88E4:  ADD.W           R2, R0, #0x14
5B88E8:  STR.W           R2, [R0],#0x68
5B88EC:  SUBS            R1, #1
5B88EE:  BNE             loc_5B88E4
5B88F0:  LDR             R0, =(_ZN8CShadows12aPolyBunchesE_ptr - 0x5B88FC)
5B88F2:  MOVW            R3, #(dword_A51E60 - 0xA48C34)
5B88F6:  LDR             R1, =(_ZN8CShadows17aPermanentShadowsE_ptr - 0x5B88FE)
5B88F8:  ADD             R0, PC; _ZN8CShadows12aPolyBunchesE_ptr
5B88FA:  ADD             R1, PC; _ZN8CShadows17aPermanentShadowsE_ptr
5B88FC:  LDR             R2, [R0]; CShadows::aPolyBunches ...
5B88FE:  LDR             R0, [R1]; CShadows::aPermanentShadows ...
5B8900:  MOVS            R1, #0
5B8902:  STR             R1, [R2,R3]
5B8904:  STRB.W          R1, [R0,#(byte_A52AE2 - 0xA52A78)]
5B8908:  STRB.W          R1, [R0,#(byte_A52AAA - 0xA52A78)]
5B890C:  STRB.W          R1, [R0,#(byte_A52B1A - 0xA52A78)]
5B8910:  STRB.W          R1, [R0,#(byte_A52B52 - 0xA52A78)]
5B8914:  STRB.W          R1, [R0,#(byte_A52B8A - 0xA52A78)]
5B8918:  STRB.W          R1, [R0,#(byte_A52BC2 - 0xA52A78)]
5B891C:  STRB.W          R1, [R0,#(byte_A52BFA - 0xA52A78)]
5B8920:  STRB.W          R1, [R0,#(byte_A52C32 - 0xA52A78)]
5B8924:  STRB.W          R1, [R0,#(byte_A52C6A - 0xA52A78)]
5B8928:  STRB.W          R1, [R0,#(byte_A52CA2 - 0xA52A78)]
5B892C:  STRB.W          R1, [R0,#(byte_A52CDA - 0xA52A78)]
5B8930:  STRB.W          R1, [R0,#(byte_A52D12 - 0xA52A78)]
5B8934:  STRB.W          R1, [R0,#(byte_A52D4A - 0xA52A78)]
5B8938:  STRB.W          R1, [R0,#(byte_A52D82 - 0xA52A78)]
5B893C:  STRB.W          R1, [R0,#(byte_A52DBA - 0xA52A78)]
5B8940:  STRB.W          R1, [R0,#(byte_A52DF2 - 0xA52A78)]
5B8944:  STRB.W          R1, [R0,#(byte_A52E2A - 0xA52A78)]
5B8948:  STRB.W          R1, [R0,#(byte_A52E9A - 0xA52A78)]
5B894C:  STRB.W          R1, [R0,#(byte_A52E62 - 0xA52A78)]
5B8950:  STRB.W          R1, [R0,#(byte_A52ED2 - 0xA52A78)]
5B8954:  STRB.W          R1, [R0,#(byte_A52F0A - 0xA52A78)]
5B8958:  STRB.W          R1, [R0,#(byte_A52F42 - 0xA52A78)]
5B895C:  STRB.W          R1, [R0,#(byte_A52F7A - 0xA52A78)]
5B8960:  STRB.W          R1, [R0,#(byte_A52FB2 - 0xA52A78)]
5B8964:  STRB.W          R1, [R0,#(byte_A52FEA - 0xA52A78)]
5B8968:  STRB.W          R1, [R0,#(byte_A53022 - 0xA52A78)]
5B896C:  STRB.W          R1, [R0,#(byte_A5305A - 0xA52A78)]
5B8970:  STRB.W          R1, [R0,#(byte_A53092 - 0xA52A78)]
5B8974:  STRB.W          R1, [R0,#(byte_A530CA - 0xA52A78)]
5B8978:  STRB.W          R1, [R0,#(byte_A53102 - 0xA52A78)]
5B897C:  STRB.W          R1, [R0,#(byte_A5313A - 0xA52A78)]
5B8980:  STRB.W          R1, [R0,#(byte_A53172 - 0xA52A78)]
5B8984:  STRB.W          R1, [R0,#(byte_A531AA - 0xA52A78)]
5B8988:  STRB.W          R1, [R0,#(byte_A531E2 - 0xA52A78)]
5B898C:  STRB.W          R1, [R0,#(byte_A5321A - 0xA52A78)]
5B8990:  STRB.W          R1, [R0,#(byte_A53252 - 0xA52A78)]
5B8994:  STRB.W          R1, [R0,#(byte_A532C2 - 0xA52A78)]
5B8998:  STRB.W          R1, [R0,#(byte_A5328A - 0xA52A78)]
5B899C:  STRB.W          R1, [R0,#(byte_A532FA - 0xA52A78)]
5B89A0:  STRB.W          R1, [R0,#(byte_A53332 - 0xA52A78)]
5B89A4:  STRB.W          R1, [R0,#(byte_A5336A - 0xA52A78)]
5B89A8:  STRB.W          R1, [R0,#(byte_A533A2 - 0xA52A78)]
5B89AC:  STRB.W          R1, [R0,#(byte_A533DA - 0xA52A78)]
5B89B0:  STRB.W          R1, [R0,#(byte_A53412 - 0xA52A78)]
5B89B4:  STRB.W          R1, [R0,#(byte_A5344A - 0xA52A78)]
5B89B8:  STRB.W          R1, [R0,#(byte_A53482 - 0xA52A78)]
5B89BC:  STRB.W          R1, [R0,#(byte_A534BA - 0xA52A78)]
5B89C0:  STRB.W          R1, [R0,#(byte_A534F2 - 0xA52A78)]
5B89C4:  POP             {R4,R6,R7,PC}
