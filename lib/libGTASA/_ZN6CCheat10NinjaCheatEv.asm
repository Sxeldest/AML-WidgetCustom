; =========================================================
; Game Engine Function: _ZN6CCheat10NinjaCheatEv
; Address            : 0x2FDEAC - 0x2FDFBC
; =========================================================

2FDEAC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDEB4)
2FDEAE:  MOVS            R2, #0
2FDEB0:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDEB2:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDEB4:  LDRB.W          R1, [R0,#(byte_796828 - 0x7967F4)]
2FDEB8:  CMP             R1, #0
2FDEBA:  IT EQ
2FDEBC:  MOVEQ           R2, #1
2FDEBE:  STRB.W          R2, [R0,#(byte_796828 - 0x7967F4)]
2FDEC2:  BEQ             loc_2FDEE2
2FDEC4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDECA)
2FDEC6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDEC8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDECA:  LDRB.W          R0, [R0,#(word_79681B+1 - 0x7967F4)]
2FDECE:  CMP             R0, #0
2FDED0:  IT EQ
2FDED2:  BXEQ            LR
2FDED4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDEDC)
2FDED6:  MOVS            R1, #0
2FDED8:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDEDA:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDEDC:  STRB.W          R1, [R0,#(word_79681B+1 - 0x7967F4)]
2FDEE0:  BX              LR
2FDEE2:  PUSH            {R7,LR}
2FDEE4:  MOV             R7, SP
2FDEE6:  SUB             SP, SP, #0x20 ; ' '
2FDEE8:  LDR             R0, =(unk_60FD28 - 0x2FDEEE)
2FDEEA:  ADD             R0, PC; unk_60FD28
2FDEEC:  VLD1.64         {D16-D17}, [R0]!
2FDEF0:  VLD1.64         {D18-D19}, [R0]
2FDEF4:  MOV             R0, SP; this
2FDEF6:  MOV             R1, R0
2FDEF8:  VST1.64         {D16-D17}, [R1]!; int *
2FDEFC:  VST1.64         {D18-D19}, [R1]
2FDF00:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
2FDF04:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF0A)
2FDF06:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF08:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF0A:  LDRB.W          R0, [R0,#(byte_796825 - 0x7967F4)]; this
2FDF0E:  CMP             R0, #0
2FDF10:  IT NE
2FDF12:  BLXNE           j__ZN6CCheat15BeachPartyCheatEv; CCheat::BeachPartyCheat(void)
2FDF16:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF1C)
2FDF18:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF1A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF1C:  LDRB.W          R0, [R0,#(byte_79682A - 0x7967F4)]
2FDF20:  CBZ             R0, loc_2FDF2E
2FDF22:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF2A)
2FDF24:  MOVS            R1, #0
2FDF26:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF28:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF2A:  STRB.W          R1, [R0,#(byte_79682A - 0x7967F4)]
2FDF2E:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF34)
2FDF30:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF32:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF34:  LDRB.W          R0, [R0,#(byte_79682B - 0x7967F4)]
2FDF38:  CBZ             R0, loc_2FDF46
2FDF3A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF42)
2FDF3C:  MOVS            R1, #0
2FDF3E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF40:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF42:  STRB.W          R1, [R0,#(byte_79682B - 0x7967F4)]
2FDF46:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF4C)
2FDF48:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF4A:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF4C:  LDRB.W          R0, [R0,#(byte_796842 - 0x7967F4)]; this
2FDF50:  CMP             R0, #0
2FDF52:  IT NE
2FDF54:  BLXNE           j__ZN6CCheat13FunhouseCheatEv; CCheat::FunhouseCheat(void)
2FDF58:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF5E)
2FDF5A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF5C:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF5E:  LDRB.W          R0, [R0,#(byte_796847 - 0x7967F4)]; this
2FDF62:  CMP             R0, #0
2FDF64:  IT NE
2FDF66:  BLXNE           j__ZN6CCheat24CountrysideInvasionCheatEv; CCheat::CountrysideInvasionCheat(void)
2FDF6A:  BLX             j__ZN10CStreaming20ReclassifyLoadedCarsEv; CStreaming::ReclassifyLoadedCars(void)
2FDF6E:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF74)
2FDF70:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF72:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF74:  LDRB.W          R0, [R0,#(word_79681B+1 - 0x7967F4)]
2FDF78:  CBNZ            R0, loc_2FDF88
2FDF7A:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDF84)
2FDF7C:  MOV.W           R1, #0x100
2FDF80:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDF82:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDF84:  STRH.W          R1, [R0,#(word_79681B - 0x7967F4)]
2FDF88:  MOVW            R0, #(elf_hash_bucket+0x57); this
2FDF8C:  MOVS            R1, #2; int
2FDF8E:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2FDF92:  MOVS            R0, #0; this
2FDF94:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2FDF98:  MOV.W           R0, #0xFFFFFFFF; int
2FDF9C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDFA0:  MOVS            R1, #8
2FDFA2:  MOVS            R2, #0
2FDFA4:  MOVS            R3, #1
2FDFA6:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
2FDFAA:  MOV.W           R0, #0xFFFFFFFF; int
2FDFAE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDFB2:  MOVS            R1, #8
2FDFB4:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
2FDFB8:  ADD             SP, SP, #0x20 ; ' '
2FDFBA:  POP             {R7,PC}
