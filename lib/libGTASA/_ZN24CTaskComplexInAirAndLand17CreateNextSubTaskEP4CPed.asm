; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLand17CreateNextSubTaskEP4CPed
; Address            : 0x52BE54 - 0x52C184
; =========================================================

52BE54:  PUSH            {R4-R7,LR}
52BE56:  ADD             R7, SP, #0xC
52BE58:  PUSH.W          {R8}
52BE5C:  VPUSH           {D8}
52BE60:  SUB             SP, SP, #0x38
52BE62:  MOV             R6, R0
52BE64:  MOV             R5, R1
52BE66:  LDR             R0, [R6,#8]
52BE68:  LDR             R1, [R0]
52BE6A:  LDR             R1, [R1,#0x14]
52BE6C:  BLX             R1
52BE6E:  MOVS            R4, #0
52BE70:  CMP             R0, #0xCF
52BE72:  BEQ             loc_52BEDE
52BE74:  CMP             R0, #0xF1
52BE76:  BNE.W           loc_52C176
52BE7A:  LDR             R1, [R6,#8]; unsigned int
52BE7C:  LDRB            R2, [R6,#0xD]
52BE7E:  LDR             R0, [R1,#0x1C]; this
52BE80:  CBZ             R2, loc_52BEFA
52BE82:  CBZ             R0, loc_52BEA4
52BE84:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52BE92)
52BE86:  MOV.W           R3, #0xC1000000
52BE8A:  LDRH            R2, [R0,#0x2E]
52BE8C:  MOVS            R4, #0
52BE8E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52BE90:  STR             R3, [R0,#0x1C]
52BE92:  ORR.W           R2, R2, #4
52BE96:  STRH            R2, [R0,#0x2E]
52BE98:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52BE9A:  MOVS            R2, #0; void *
52BE9C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52BEA0:  LDR             R0, [R6,#8]
52BEA2:  STR             R4, [R0,#0x1C]
52BEA4:  MOVS            R0, #dword_14; this
52BEA6:  VLDR            S16, [R5,#0x50]
52BEAA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BEAE:  MOV             R4, R0
52BEB0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BEB4:  LDR             R0, =(_ZTV15CTaskSimpleLand_ptr - 0x52BEC0)
52BEB6:  MOVS            R1, #0
52BEB8:  VLDR            S0, =-0.1
52BEBC:  ADD             R0, PC; _ZTV15CTaskSimpleLand_ptr
52BEBE:  STR             R1, [R4,#8]
52BEC0:  VCMPE.F32       S16, S0
52BEC4:  LDR             R0, [R0]; `vtable for'CTaskSimpleLand ...
52BEC6:  VMRS            APSR_nzcv, FPSCR
52BECA:  ADD.W           R0, R0, #8
52BECE:  STR             R0, [R4]
52BED0:  BGE             loc_52BF42
52BED2:  LDRB            R0, [R4,#0x10]
52BED4:  MOVS            R1, #0x1A
52BED6:  STR             R1, [R4,#0xC]
52BED8:  BIC.W           R0, R0, #7
52BEDC:  B               loc_52BF50
52BEDE:  MOVS            R0, #word_10; this
52BEE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BEE4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BEE8:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52BEF0)
52BEEA:  STRH            R4, [R0,#8]
52BEEC:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52BEEE:  STR             R4, [R0,#0xC]
52BEF0:  MOV             R4, R0
52BEF2:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52BEF4:  ADDS            R1, #8
52BEF6:  STR             R1, [R0]
52BEF8:  B               loc_52C176
52BEFA:  CBZ             R0, loc_52BF58
52BEFC:  LDRH            R0, [R0,#0x2C]
52BEFE:  CMP             R0, #0x78 ; 'x'
52BF00:  BNE             loc_52BF58
52BF02:  VLDR            S0, =-0.4
52BF06:  VLDR            S2, [R1,#0x20]
52BF0A:  VCMPE.F32       S2, S0
52BF0E:  VMRS            APSR_nzcv, FPSCR
52BF12:  BGE.W           loc_52C090
52BF16:  MOVS            R0, #dword_20; this
52BF18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BF1C:  MOV             R4, R0
52BF1E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BF22:  LDR             R0, =(_ZTV15CTaskSimpleFall_ptr - 0x52BF2E)
52BF24:  MOVS            R1, #0
52BF26:  MOVS            R2, #0x1A
52BF28:  STRB            R1, [R4,#8]
52BF2A:  ADD             R0, PC; _ZTV15CTaskSimpleFall_ptr
52BF2C:  STRD.W          R2, R1, [R4,#0xC]
52BF30:  STR             R1, [R4,#0x14]
52BF32:  MOV.W           R1, #0x2BC
52BF36:  LDR             R0, [R0]; `vtable for'CTaskSimpleFall ...
52BF38:  STRD.W          R1, R1, [R4,#0x18]
52BF3C:  ADDS            R0, #8
52BF3E:  STR             R0, [R4]
52BF40:  B               loc_52C0BA
52BF42:  MOV.W           R1, #0xFFFFFFFF
52BF46:  LDRB            R0, [R4,#0x10]
52BF48:  STR             R1, [R4,#0xC]
52BF4A:  MOVS            R1, #2
52BF4C:  BFI.W           R0, R1, #0, #3
52BF50:  ORR.W           R0, R0, #4
52BF54:  STRB            R0, [R4,#0x10]
52BF56:  B               loc_52C176
52BF58:  MOV             R0, R5; this
52BF5A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52BF5E:  CMP             R0, #1
52BF60:  BNE             loc_52BFBE
52BF62:  MOV             R0, R5; this
52BF64:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
52BF68:  MOV             R4, R0
52BF6A:  LDR             R0, [R6,#8]
52BF6C:  LDR             R0, [R0,#0x1C]
52BF6E:  CBZ             R0, loc_52BF86
52BF70:  LDRH            R0, [R0,#0x2C]
52BF72:  CMP             R0, #9
52BF74:  BNE             loc_52BF86
52BF76:  MOVS            R0, #dword_14; this
52BF78:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BF7C:  MOV             R4, R0
52BF7E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BF82:  MOVS            R0, #0xA
52BF84:  B               loc_52BFCC
52BF86:  CBZ             R4, loc_52BFBE
52BF88:  VMOV.F32        S2, #1.5
52BF8C:  LDR.W           R0, [R5,#0x444]
52BF90:  VLDR            S0, [R0,#0x14]
52BF94:  VCMPE.F32       S0, S2
52BF98:  VMRS            APSR_nzcv, FPSCR
52BF9C:  BLE             loc_52BFBE
52BF9E:  MOV             R0, R4; this
52BFA0:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
52BFA4:  CBNZ            R0, loc_52BFAE
52BFA6:  MOV             R0, R4; this
52BFA8:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
52BFAC:  CBZ             R0, loc_52BFBE
52BFAE:  MOVS            R0, #dword_14; this
52BFB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BFB4:  MOV             R4, R0
52BFB6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BFBA:  MOVS            R0, #0x77 ; 'w'
52BFBC:  B               loc_52BFCC
52BFBE:  MOVS            R0, #dword_14; this
52BFC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BFC4:  MOV             R4, R0
52BFC6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BFCA:  MOVS            R0, #0x7A ; 'z'
52BFCC:  LDR             R1, =(_ZTV15CTaskSimpleLand_ptr - 0x52BFDA)
52BFCE:  MOVS            R6, #0
52BFD0:  LDRB            R2, [R4,#0x10]
52BFD2:  MOV.W           R3, #0x3F800000; float
52BFD6:  ADD             R1, PC; _ZTV15CTaskSimpleLand_ptr
52BFD8:  STRD.W          R6, R0, [R4,#8]
52BFDC:  AND.W           R0, R2, #0xF8
52BFE0:  MOVS            R2, #0; float
52BFE2:  LDR             R1, [R1]; `vtable for'CTaskSimpleLand ...
52BFE4:  ORR.W           R0, R0, #4
52BFE8:  STRB            R0, [R4,#0x10]
52BFEA:  ADD.W           R0, R1, #8
52BFEE:  STR             R0, [R4]
52BFF0:  ADD.W           R0, R5, #0x13C; this
52BFF4:  MOVS            R1, #0x3A ; ':'; int
52BFF6:  STRD.W          R6, R6, [SP,#0x50+var_50]; CPhysical *
52BFFA:  STRD.W          R6, R6, [SP,#0x50+var_48]; int
52BFFE:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
52C002:  LDR.W           R0, [R5,#0x444]
52C006:  CMP             R0, #0
52C008:  BEQ.W           loc_52C176
52C00C:  LDR             R0, [R0,#4]; this
52C00E:  BLX             j__ZN15CPedClothesDesc21GetIsWearingBalaclavaEv; CPedClothesDesc::GetIsWearingBalaclava(void)
52C012:  MOV             R8, R0
52C014:  ADD             R0, SP, #0x50+var_40; this
52C016:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
52C01A:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x52C028)
52C01C:  CMP.W           R8, #0
52C020:  VLDR            S2, =70.0
52C024:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
52C026:  VLDR            S0, =55.0
52C02A:  IT NE
52C02C:  VMOVNE.F32      S0, S2
52C030:  STR             R5, [SP,#0x50+var_30]
52C032:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
52C034:  ADDS            R1, #8
52C036:  STR             R1, [SP,#0x50+var_40]
52C038:  MOV.W           R1, #0xFFFFFFFF
52C03C:  STRD.W          R1, R6, [SP,#0x50+var_28]
52C040:  STRD.W          R6, R6, [SP,#0x50+var_24+4]
52C044:  ADD.W           R6, R0, #0x10
52C048:  MOV             R0, R5; this
52C04A:  VSTR            S0, [SP,#0x50+var_2C]
52C04E:  MOV             R1, R6; CEntity **
52C050:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52C054:  LDR             R0, [SP,#0x50+var_28]
52C056:  ADDS            R0, #1
52C058:  BNE             loc_52C07E
52C05A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52C062)
52C05C:  LDR             R1, [SP,#0x50+var_30]
52C05E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52C060:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52C062:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52C064:  STR             R0, [SP,#0x50+var_28]
52C066:  LDR             R0, [R1,#0x14]
52C068:  ADD.W           R2, R0, #0x30 ; '0'
52C06C:  CMP             R0, #0
52C06E:  IT EQ
52C070:  ADDEQ           R2, R1, #4
52C072:  VLDR            D16, [R2]
52C076:  LDR             R0, [R2,#8]
52C078:  STR             R0, [SP,#0x50+var_1C]
52C07A:  VSTR            D16, [SP,#0x50+var_24]
52C07E:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
52C082:  ADD             R1, SP, #0x50+var_40; CEvent *
52C084:  MOVS            R2, #0; bool
52C086:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52C08A:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x52C090)
52C08C:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
52C08E:  B               loc_52C15E
52C090:  MOVS            R0, #dword_14; this
52C092:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52C096:  MOV             R4, R0
52C098:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52C09C:  LDR             R0, =(_ZTV15CTaskSimpleLand_ptr - 0x52C0A8)
52C09E:  MOVS            R1, #0
52C0A0:  STR             R1, [R4,#8]
52C0A2:  MOVS            R1, #0x7B ; '{'
52C0A4:  ADD             R0, PC; _ZTV15CTaskSimpleLand_ptr
52C0A6:  LDRB            R2, [R4,#0x10]
52C0A8:  STR             R1, [R4,#0xC]
52C0AA:  LDR             R0, [R0]; `vtable for'CTaskSimpleLand ...
52C0AC:  ADDS            R0, #8
52C0AE:  STR             R0, [R4]
52C0B0:  AND.W           R0, R2, #0xF8
52C0B4:  ORR.W           R0, R0, #4
52C0B8:  STRB            R0, [R4,#0x10]
52C0BA:  ADD.W           R0, R5, #0x13C; this
52C0BE:  MOVS            R6, #0
52C0C0:  MOVS            R1, #0x3B ; ';'; int
52C0C2:  MOVS            R2, #0; float
52C0C4:  MOV.W           R3, #0x3F800000; float
52C0C8:  STRD.W          R6, R6, [SP,#0x50+var_50]; CPhysical *
52C0CC:  STRD.W          R6, R6, [SP,#0x50+var_48]; int
52C0D0:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
52C0D4:  LDR.W           R0, [R5,#0x444]
52C0D8:  CMP             R0, #0
52C0DA:  BEQ             loc_52C176
52C0DC:  LDR             R0, [R0,#4]; this
52C0DE:  BLX             j__ZN15CPedClothesDesc21GetIsWearingBalaclavaEv; CPedClothesDesc::GetIsWearingBalaclava(void)
52C0E2:  MOV             R8, R0
52C0E4:  ADD             R0, SP, #0x50+var_40; this
52C0E6:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
52C0EA:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x52C0F8)
52C0EC:  CMP.W           R8, #0
52C0F0:  VLDR            S2, =75.0
52C0F4:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
52C0F6:  VLDR            S0, =60.0
52C0FA:  IT NE
52C0FC:  VMOVNE.F32      S0, S2
52C100:  STR             R5, [SP,#0x50+var_30]
52C102:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
52C104:  ADDS            R1, #8
52C106:  STR             R1, [SP,#0x50+var_40]
52C108:  MOV.W           R1, #0xFFFFFFFF
52C10C:  STRD.W          R1, R6, [SP,#0x50+var_28]
52C110:  STRD.W          R6, R6, [SP,#0x50+var_24+4]
52C114:  ADD.W           R6, R0, #0x10
52C118:  MOV             R0, R5; this
52C11A:  VSTR            S0, [SP,#0x50+var_2C]
52C11E:  MOV             R1, R6; CEntity **
52C120:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52C124:  LDR             R0, [SP,#0x50+var_28]
52C126:  ADDS            R0, #1
52C128:  BNE             loc_52C14E
52C12A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52C132)
52C12C:  LDR             R1, [SP,#0x50+var_30]
52C12E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52C130:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52C132:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52C134:  STR             R0, [SP,#0x50+var_28]
52C136:  LDR             R0, [R1,#0x14]
52C138:  ADD.W           R2, R0, #0x30 ; '0'
52C13C:  CMP             R0, #0
52C13E:  IT EQ
52C140:  ADDEQ           R2, R1, #4
52C142:  VLDR            D16, [R2]
52C146:  LDR             R0, [R2,#8]
52C148:  STR             R0, [SP,#0x50+var_1C]
52C14A:  VSTR            D16, [SP,#0x50+var_24]
52C14E:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
52C152:  ADD             R1, SP, #0x50+var_40; CEvent *
52C154:  MOVS            R2, #0; bool
52C156:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
52C15A:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x52C160)
52C15C:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
52C15E:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
52C160:  LDR             R0, [SP,#0x50+var_30]; this
52C162:  ADDS            R1, #8
52C164:  STR             R1, [SP,#0x50+var_40]
52C166:  CMP             R0, #0
52C168:  ITT NE
52C16A:  MOVNE           R1, R6; CEntity **
52C16C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
52C170:  ADD             R0, SP, #0x50+var_40; this
52C172:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
52C176:  MOV             R0, R4
52C178:  ADD             SP, SP, #0x38 ; '8'
52C17A:  VPOP            {D8}
52C17E:  POP.W           {R8}
52C182:  POP             {R4-R7,PC}
