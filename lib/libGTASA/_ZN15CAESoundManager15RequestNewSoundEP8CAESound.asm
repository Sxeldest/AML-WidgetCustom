; =========================================================
; Game Engine Function: _ZN15CAESoundManager15RequestNewSoundEP8CAESound
; Address            : 0x3A8C54 - 0x3A8D34
; =========================================================

3A8C54:  PUSH            {R4-R7,LR}
3A8C56:  ADD             R7, SP, #0xC
3A8C58:  PUSH.W          {R8-R11}
3A8C5C:  SUB             SP, SP, #4
3A8C5E:  VPUSH           {D8}
3A8C62:  MOV             R11, R0
3A8C64:  MOV             R9, R1
3A8C66:  MOVS            R5, #0
3A8C68:  MOVS            R0, #0x74 ; 't'
3A8C6A:  SXTH            R6, R5
3A8C6C:  SMLABB.W        R4, R6, R0, R11
3A8C70:  LDRH.W          R1, [R4,#0x5C]!
3A8C74:  CBZ             R1, loc_3A8C84
3A8C76:  ADDS            R1, R5, #1
3A8C78:  SXTH            R5, R1
3A8C7A:  CMP.W           R5, #0x12C
3A8C7E:  BLT             loc_3A8C6A
3A8C80:  MOVS            R0, #0
3A8C82:  B               loc_3A8D28
3A8C84:  MOVS            R0, #0x74 ; 't'
3A8C86:  MOV             R1, R9
3A8C88:  SMLABB.W        R10, R6, R0, R11
3A8C8C:  ADD.W           R8, R10, #4
3A8C90:  MOV             R0, R8; CEntity **
3A8C92:  BLX             j__ZN8CAESoundaSERS_; CAESound::operator=(CAESound&)
3A8C96:  LDR.W           R0, [R9,#8]!; this
3A8C9A:  CBZ             R0, loc_3A8CA8
3A8C9C:  MOV             R1, R9; CEntity **
3A8C9E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A8CA2:  MOVS            R0, #0
3A8CA4:  STR.W           R0, [R9]
3A8CA8:  MOVS            R0, #1
3A8CAA:  MOVS            R2, #0
3A8CAC:  STRH            R0, [R4]
3A8CAE:  LDR             R0, =(AEAudioHardware_ptr - 0x3A8CB8)
3A8CB0:  LDRH.W          R1, [R10,#6]!; unsigned __int16
3A8CB4:  ADD             R0, PC; AEAudioHardware_ptr
3A8CB6:  STRH.W          R2, [R10,#0x66]
3A8CBA:  STRH.W          R2, [R10,#0x5C]
3A8CBE:  STRH.W          R2, [R10,#0x58]
3A8CC2:  LDRSH.W         R2, [R8]; __int16
3A8CC6:  LDR             R0, [R0]; AEAudioHardware ; this
3A8CC8:  BLX             j__ZN16CAEAudioHardware16GetSoundHeadroomEts; CAEAudioHardware::GetSoundHeadroom(ushort,short)
3A8CCC:  ADD.W           R1, R10, #0x1A
3A8CD0:  VLDR            S16, [R1]
3A8CD4:  ADD.W           R1, R10, #0x1E
3A8CD8:  VLDR            S0, [R1]
3A8CDC:  STR.W           R0, [R10,#0x6A]
3A8CE0:  VCMPE.F32       S0, #0.0
3A8CE4:  VMRS            APSR_nzcv, FPSCR
3A8CE8:  BLE             loc_3A8D08
3A8CEA:  VCMPE.F32       S0, S16
3A8CEE:  VMRS            APSR_nzcv, FPSCR
3A8CF2:  BGE             loc_3A8D08
3A8CF4:  VMOV            R1, S0; float
3A8CF8:  EOR.W           R0, R1, #0x80000000; this
3A8CFC:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3A8D00:  VMOV            S0, R0
3A8D04:  VADD.F32        S16, S16, S0
3A8D08:  MOVS            R0, #0x74 ; 't'
3A8D0A:  LDR             R1, =(AEAudioHardware_ptr - 0x3A8D14)
3A8D0C:  SMLABB.W        R0, R6, R0, R11
3A8D10:  ADD             R1, PC; AEAudioHardware_ptr
3A8D12:  VSTR            S16, [R0,#0x68]
3A8D16:  LDR             R0, [R1]; AEAudioHardware ; this
3A8D18:  UXTH            R1, R5; unsigned __int16
3A8D1A:  LDRH.W          R3, [R8]; unsigned __int16
3A8D1E:  LDRH.W          R2, [R10]; unsigned __int16
3A8D22:  BLX             j__ZN16CAEAudioHardware30RequestVirtualChannelSoundInfoEttt; CAEAudioHardware::RequestVirtualChannelSoundInfo(ushort,ushort,ushort)
3A8D26:  MOV             R0, R8
3A8D28:  VPOP            {D8}
3A8D2C:  ADD             SP, SP, #4
3A8D2E:  POP.W           {R8-R11}
3A8D32:  POP             {R4-R7,PC}
