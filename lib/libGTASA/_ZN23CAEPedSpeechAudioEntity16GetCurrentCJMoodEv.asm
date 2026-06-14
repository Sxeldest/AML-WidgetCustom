; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity16GetCurrentCJMoodEv
; Address            : 0x39C9E8 - 0x39CC24
; =========================================================

39C9E8:  PUSH            {R4-R7,LR}
39C9EA:  ADD             R7, SP, #0xC
39C9EC:  PUSH.W          {R8-R11}
39C9F0:  SUB             SP, SP, #4
39C9F2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39C9F8)
39C9F4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39C9F6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
39C9F8:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds
39C9FC:  MOV.W           R0, #0xFFFFFFFF; int
39CA00:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39CA04:  MOV             R11, R0
39CA06:  CMP.W           R11, #0
39CA0A:  BEQ             loc_39CA42
39CA0C:  MOVS            R0, #(dword_40+2); this
39CA0E:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
39CA12:  VLDR            S0, =650.0
39CA16:  VMOV            S2, R0
39CA1A:  VCMPE.F32       S2, S0
39CA1E:  VMRS            APSR_nzcv, FPSCR
39CA22:  BLT             loc_39CA3C
39CA24:  MOVS            R0, #(byte_9+5); this
39CA26:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
39CA2A:  VLDR            S0, =10000.0
39CA2E:  VMOV            S2, R0
39CA32:  VCMPE.F32       S2, S0
39CA36:  VMRS            APSR_nzcv, FPSCR
39CA3A:  BGE             loc_39CA46
39CA3C:  MOV.W           R8, #0
39CA40:  B               loc_39CA4A
39CA42:  MOVS            R0, #5
39CA44:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CA46:  MOV.W           R8, #1
39CA4A:  MOV.W           R0, #0xFFFFFFFF; int
39CA4E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39CA52:  LDR.W           R0, [R0,#0x444]
39CA56:  MOV.W           R2, #0x2D4
39CA5A:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x39CA62)
39CA5C:  LDR             R0, [R0,#0x38]
39CA5E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
39CA60:  LDR             R1, [R1]; CPedGroups::ms_groups ...
39CA62:  MLA.W           R0, R0, R2, R1
39CA66:  ADDS            R0, #8; this
39CA68:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
39CA6C:  LSLS            R0, R0, #0x10; this
39CA6E:  MOV.W           R10, #1
39CA72:  CMP.W           R0, #0x10000
39CA76:  MOV.W           R4, #1
39CA7A:  BGT             loc_39CADC
39CA7C:  BNE             loc_39CADA
39CA7E:  MOV.W           R0, #0xFFFFFFFF; int
39CA82:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39CA86:  LDR.W           R0, [R0,#0x444]
39CA8A:  MOV.W           R2, #0x2D4
39CA8E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x39CA9A)
39CA90:  MOVS            R6, #0
39CA92:  MOVS            R4, #0
39CA94:  LDR             R0, [R0,#0x38]
39CA96:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
39CA98:  LDR             R1, [R1]; CPedGroups::ms_groups ...
39CA9A:  MLA.W           R0, R0, R2, R1
39CA9E:  ADD.W           R5, R0, #8
39CAA2:  MOV             R0, R5; this
39CAA4:  MOV             R1, R6; int
39CAA6:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
39CAAA:  CBZ             R0, loc_39CAD2
39CAAC:  LDR.W           R1, [R0,#0x59C]
39CAB0:  CMP             R1, #8
39CAB2:  BNE             loc_39CAB8
39CAB4:  MOVS            R4, #1
39CAB6:  B               loc_39CAD2
39CAB8:  LDRH.W          R1, [R0,#0x32C]
39CABC:  CMP             R1, #0x25 ; '%'
39CABE:  IT NE
39CAC0:  CMPNE           R1, #0x20 ; ' '
39CAC2:  BEQ             loc_39CAC8
39CAC4:  CMP             R1, #0x1A
39CAC6:  BNE             loc_39CAD2
39CAC8:  LDRH.W          R0, [R0,#0x32A]
39CACC:  CMP             R0, #3
39CACE:  IT EQ
39CAD0:  MOVEQ           R4, #1
39CAD2:  ADDS            R6, #1
39CAD4:  CMP             R6, #8
39CAD6:  BNE             loc_39CAA2
39CAD8:  B               loc_39CADC
39CADA:  MOVS            R4, #0
39CADC:  BLX             j__ZN23CAEPedSpeechAudioEntity26IsCJDressedInForGangSpeechEv; CAEPedSpeechAudioEntity::IsCJDressedInForGangSpeech(void)
39CAE0:  MOV             R5, R0
39CAE2:  MOVS            R0, #(dword_14+1); this
39CAE4:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
39CAE8:  VLDR            S0, =600.0
39CAEC:  VMOV            S2, R0
39CAF0:  CMP             R5, #0
39CAF2:  VCMPE.F32       S2, S0
39CAF6:  IT EQ
39CAF8:  MOVEQ           R10, R4
39CAFA:  VMRS            APSR_nzcv, FPSCR
39CAFE:  BLT             loc_39CB2C
39CB00:  MOVS            R0, #(dword_14+3); this
39CB02:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
39CB06:  MOV             R5, R0
39CB08:  MOVS            R0, #(dword_14+1); this
39CB0A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
39CB0E:  VLDR            S0, =-200.0
39CB12:  VMOV            S2, R0
39CB16:  VADD.F32        S0, S2, S0
39CB1A:  VMOV            S2, R5
39CB1E:  VCMPE.F32       S2, S0
39CB22:  VMRS            APSR_nzcv, FPSCR
39CB26:  BGE             loc_39CB2C
39CB28:  MOVS            R1, #1
39CB2A:  B               loc_39CB2E
39CB2C:  MOVS            R1, #0
39CB2E:  LDR.W           R0, [R11,#0x444]
39CB32:  LDR             R0, [R0]
39CB34:  LDR             R0, [R0,#0x2C]
39CB36:  CMP             R0, #3
39CB38:  BLE             loc_39CB3E
39CB3A:  MOVS            R0, #7
39CB3C:  B               loc_39CB74
39CB3E:  CMP             R0, #1
39CB40:  BLE             loc_39CB46
39CB42:  MOVS            R0, #1
39CB44:  B               loc_39CB74
39CB46:  LDR             R0, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x39CB4C)
39CB48:  ADD             R0, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
39CB4A:  LDR             R0, [R0]; CTheScripts::LastMissionPassedTime ...
39CB4C:  LDR             R0, [R0]; CTheScripts::LastMissionPassedTime
39CB4E:  ADDS            R2, R0, #1
39CB50:  BEQ             loc_39CB60
39CB52:  CMP             R9, R0
39CB54:  BCS             loc_39CB64
39CB56:  LDR             R0, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x39CB5C)
39CB58:  ADD             R0, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
39CB5A:  LDR             R0, [R0]; CTheScripts::LastMissionPassedTime ...
39CB5C:  STR.W           R9, [R0]; CTheScripts::LastMissionPassedTime
39CB60:  MOVS            R0, #5
39CB62:  B               loc_39CB74
39CB64:  ADD.W           R0, R0, #0x2A000
39CB68:  ADD.W           R2, R0, #0x1F20
39CB6C:  MOVS            R0, #5
39CB6E:  CMP             R9, R2
39CB70:  IT CC
39CB72:  MOVCC           R0, #9
39CB74:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity21s_nCJMoodOverrideTimeE_ptr - 0x39CB7A)
39CB76:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity21s_nCJMoodOverrideTimeE_ptr
39CB78:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_nCJMoodOverrideTime ...
39CB7A:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_nCJMoodOverrideTime
39CB7C:  CMP             R2, R9
39CB7E:  BLS             loc_39CBBC
39CB80:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_nCJWellDressedE_ptr - 0x39CB8C)
39CB82:  MOVW            R4, #0xFFFF
39CB86:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity8s_nCJFatE_ptr - 0x39CB90)
39CB88:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_nCJWellDressedE_ptr
39CB8A:  LDR             R6, =(_ZN23CAEPedSpeechAudioEntity16s_nCJGangBangingE_ptr - 0x39CB94)
39CB8C:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity8s_nCJFatE_ptr
39CB8E:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity14s_nCJBasicMoodE_ptr - 0x39CB98)
39CB90:  ADD             R6, PC; _ZN23CAEPedSpeechAudioEntity16s_nCJGangBangingE_ptr
39CB92:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_nCJWellDressed ...
39CB94:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity14s_nCJBasicMoodE_ptr
39CB96:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_nCJFat ...
39CB98:  LDR             R6, [R6]; CAEPedSpeechAudioEntity::s_nCJGangBanging ...
39CB9A:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_nCJBasicMood ...
39CB9C:  LDRH            R2, [R2]; CAEPedSpeechAudioEntity::s_nCJWellDressed
39CB9E:  LDRH            R3, [R3]; CAEPedSpeechAudioEntity::s_nCJFat
39CBA0:  LDRH            R6, [R6]; CAEPedSpeechAudioEntity::s_nCJGangBanging
39CBA2:  CMP             R2, R4
39CBA4:  LDRH            R5, [R5]; CAEPedSpeechAudioEntity::s_nCJBasicMood
39CBA6:  IT NE
39CBA8:  MOVNE           R8, R2
39CBAA:  CMP             R3, R4
39CBAC:  IT NE
39CBAE:  MOVNE           R1, R3
39CBB0:  CMP             R6, R4
39CBB2:  IT NE
39CBB4:  MOVNE           R10, R6
39CBB6:  CMP             R5, R4
39CBB8:  IT NE
39CBBA:  MOVNE           R0, R5
39CBBC:  SXTH            R0, R0
39CBBE:  SUBS            R2, R0, #1; switch 9 cases
39CBC0:  MOVS            R0, #5
39CBC2:  CMP             R2, #8
39CBC4:  BHI             def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CBC6:  TBB.W           [PC,R2]; switch jump
39CBCA:  DCB 5; jump table for switch statement
39CBCB:  DCB 0x1E
39CBCC:  DCB 0x1E
39CBCD:  DCB 0x1E
39CBCE:  DCB 0xC
39CBCF:  DCB 0x1E
39CBD0:  DCB 0x11
39CBD1:  DCB 0x1E
39CBD2:  DCB 0x18
39CBD3:  ALIGN 2
39CBD4:  MOVS.W          R0, R10,LSL#24; jumptable 0039CBC6 case 1
39CBD8:  MOV.W           R0, #0
39CBDC:  IT EQ
39CBDE:  MOVEQ           R0, #1
39CBE0:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CBE2:  MOVS.W          R0, R10,LSL#24; jumptable 0039CBC6 case 5
39CBE6:  BEQ             loc_39CC0E
39CBE8:  MOVS            R0, #4
39CBEA:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CBEC:  MOVS.W          R0, R10,LSL#24; jumptable 0039CBC6 case 7
39CBF0:  MOV.W           R0, #6
39CBF4:  IT EQ
39CBF6:  MOVEQ           R0, #7
39CBF8:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CBFA:  MOVS.W          R0, R10,LSL#24; jumptable 0039CBC6 case 9
39CBFE:  MOV.W           R0, #8
39CC02:  IT EQ
39CC04:  MOVEQ           R0, #9
39CC06:  ADD             SP, SP, #4; jumptable 0039CBC6 default case, cases 2-4,6,8
39CC08:  POP.W           {R8-R11}
39CC0C:  POP             {R4-R7,PC}
39CC0E:  LSLS            R0, R1, #0x18
39CC10:  BEQ             loc_39CC16
39CC12:  MOVS            R0, #3
39CC14:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
39CC16:  MOVS.W          R0, R8,LSL#24
39CC1A:  MOV.W           R0, #2
39CC1E:  IT EQ
39CC20:  MOVEQ           R0, #5
39CC22:  B               def_39CBC6; jumptable 0039CBC6 default case, cases 2-4,6,8
